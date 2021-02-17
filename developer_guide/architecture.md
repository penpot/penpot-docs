---
title: 1. Architecture
---

# Architecture

This section gives an overall structure of the system.

Penpot has the architecture of a typical SPA. There is a frontend application,
written in ClojureScript and using React framework, and served from a static
web server. It talks to a backend application, that persists data on a
PosgreSQL database.

The backend is written in Clojure, so front and back can share code and data
structures without problem. Then, the code is compiled into JVM bytecode and
run in a JVM environment.

There are some additional components, explained below.

@startuml C4_Elements
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
!define DEVICONS https://raw.githubusercontent.com/tupadr3/plantuml-icon-font-sprites/master/devicons
!include DEVICONS/react.puml
!include DEVICONS/java.puml
!include DEVICONS/clojure.puml
!include DEVICONS/postgresql.puml
!include DEVICONS/redis.puml
!include DEVICONS/chrome.puml

HIDE_STEREOTYPE()

Person(user, "User")
System_Boundary(frontend, "Frontend") {
    Container(frontend_app, "Frontend app", "React / ClojureScript", "", "react")
    Container(worker, "Worker", "Web worker")
}

System_Boundary(backend, "Backend") {
    Container(backend_app, "Backend app", "Clojure / JVM", "", "clojure")
    ContainerDb(db, "Database", "PostgreSQL", "", "postgresql")
    ContainerDb(redis, "Broker", "Redis", "", "redis")
    Container(exporter, "Exporter", "Clojure / JVM", "", "clojure")
    Container(browser, "Headless browser", "Chrome", "", "chrome")
}

Rel(user, frontend_app, "Uses", "HTTPS")
BiRel_L(frontend_app, worker, "Works with")
BiRel(frontend_app, backend_app, "Open", "websocket")
Rel(frontend_app, backend_app, "Uses", "RPC API")
Rel(backend_app, db, "Uses", "SQL")
Rel(redis, backend_app, "Subscribes", "pub/sub")
Rel(backend_app, redis, "Notifies", "pub/sub")
Rel(frontend_app, exporter, "Uses", "HTTPS")
Rel(exporter, browser, "Uses", "puppeteer")
Rel(browser, frontend_app, "Uses", "HTTPS")

@enduml

## Frontend app

The main application, with the user interface and the presentation logic.

To talk with backend, it uses a custom RPC-style API: some functions in the
backend are exposed through an HTTP server. When the front wants to execute a
query or data mutation, it sends a HTTP request, containing the name of the
function to execute, and the ascii-encoded arguments. The resulting data is
also encoded and returned. This way we don't need any data type conversion,
besides the transport encoding, as there is Clojure at both ends.

When the user opens any file, a persistent websocket is opened with the backend
and associated to the file id. It is used to send presence events, such as
connection, disconnection and mouse movements. And also to receive changes made
by other users that are editing the same file, so it may be updated in real
time.

## Worker

Some operations are costly to make in real time, so we leave them to be
executed asynchronously in a web worker. This way they don't impact the user
experience. Some of these operations are generating file thumbnails for the
dashboard and maintaining some geometric indexes to speed up snap points while
drawing.

## Backend app

This app is in charge of CRUD of data, integrity validation and persistence
into a database and also into a file system for media attachments.

To handle deletions it uses a garbage collector mechanism: no object in the
database is deleted instantly. Instead, a field `deleted_at` is set with the
date and time of the deletion, and every query ignores db rows that have this
field set. Then, an async task that runs periodically, locates rows whose
deletion date is older than a given threshold and permanently deletes them.

For this, and other possibly slow tasks, there is an internal async tasks
worker, that may be used to queue tasks to be scheduled and executed when the
backend is idle. Other tasks are email sending, collecting data for telemetry
and detecting unused media attachment, for removing them from the file storage.

## Broker

To manage subscriptions to a file, to be notified of changes, we use a redis
server as a pub/sub broker. Whenever a user visits a file and opens a
websocket, the backend creates a subscription in redis, with a topic that has
the id of the file. If the user sends any change to the file, backend sends a
notification to this topic, that is received by all subscribers. Then the
notification is retrieved and send to the user via the websocket.

## Exporter

When exporting file contents to a file, we want the result to be exactly the
same as the user sees in screen. To achieve this, we use a headless browser
installed in the backend host, and controled via puppeteer automation. The
browser loads the frontend app from the static webserver, and executes it like
a normal user browser. It visits a special endpoint that renders one shape
inside a file. Then, if takes a screenshot if we are exporting to a bitmap
image, or extract the svg from the DOM if we want a vectorial export, and write
it to a file that the user can download.

