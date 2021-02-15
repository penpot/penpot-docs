---
layout: layouts/developer_guide.njk
eleventyNavigation:
  key: Developer guide
  order: 3
---

# Developer guide

(DEV) Lorem ipsum dolor sit amet.

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

