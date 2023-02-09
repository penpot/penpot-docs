---
title: 3.4. Common Guide
---

# Common guide

This section has articles related to all submodules (frontend, backend and
exporter) such as: code style hints, architecture decisions, etc...


## Configuration

Both in the backend, the frontend and the exporter subsystems, there are an
`app.config` namespace that defines the global configuration variables,
their specs and the default values.

All variables have a conservative default, meaning that you can set up a Penpot
instance without changing any configuration, and it will be reasonably safe
and useful.

In backend and exporter, to change the runtime values you need to set them in
the process environment, following the rule that an environment variable in the
form `PENPOT_<VARIABLE_NAME_IN_UPPERCASE>` correspond to a configuration
variable named `variable-name-in-lowercase`. Example:

```
(env)
PENPOT_ASSETS_STORAGE_BACKEND=assets-s3

(config)
assets-storage-backend :assets-s3
```

In frontend, the main `resources/public/index.html` file includes (if it
exists) a file named `js/config.js`, where you can set configuration values
as javascript global variables. The file is not created by default, so if
you need it you must create it blank, and set the variables you want, in
the form `penpot<VariableNameInCamelCase>`:

```
(js/config.js)
var penpotPublicURI = "https://penpot.example.com";

(config)
public-uri "https://penpot.example.com"
```

### On premise instances

If you use the official Penpot docker images, as explained in the [Getting
Started](/technical-guide/getting-started/#start-penpot) section, there is a
[config.env](https://github.com/penpot/penpot/blob/develop/docker/images/config.env)
file that sets the configuration environment variables. It's the same file for
backend, exporter and frontend.

For this last one, there is a script
[nginx-entrypoint.sh](https://github.com/penpot/penpot/blob/develop/docker/images/files/nginx-entrypoint.sh)
that reads the environment and generates the `js/config.js` when the container
is started. This way all configuration is made in the single `config.env` file.


### Dev environment

If you use the [developer docker images](/technical-guide/developer/devenv/),
the [docker-compose.yaml](https://github.com/penpot/penpot/blob/develop/docker/devenv/docker-compose.yaml)
directly sets the environment variables more appropriate for backend and
exporter development.

Additionally, the backend [start script](https://github.com/penpot/penpot/blob/develop/backend/scripts/start-dev)
and [repl script](https://github.com/penpot/penpot/blob/develop/backend/scripts/repl) set
some more variables.

The frontend uses only the defaults.

If you want to change any variable for your local environment, you can change
`docker-compose.yaml` and shut down and start again the container. Or you can
modify the start script or directly set the environment variable in your
session, and restart backend or exporter processes.

For frontend, you can manually create `resources/public/js/config.js` (it's
ignored in git) and define your settings there. Then, just reload the page.

## System logging

In [app.common.logging](https://github.com/penpot/penpot/blob/develop/common/src/app/common/logging.cljc)
we have a general system logging utility, that may be used throughout all our
code to generate execution traces, mainly for debugging.

You can add a trace anywhere, specifying the log level (`trace`, `debug`,
`info`, `warn`, `error`) and any number of key-values:

```clojure
(ns app.main.data.workspace.libraries-helpers
  (:require [app.common.logging :as log]))

(log/set-level! :warn)

...

(defn generate-detach-instance
  [changes container shape-id]
  (log/debug :msg "Detach instance"
             :shape-id shape-id
             :container (:id container))
  ...)
```

The current namespace is tracked within the log message, and you can configure
at runtime, by namespace, the log level (by default `:warn`). Any trace below
this level will be ignored.

Some keys have a special meaning:
 * `:msg` is the main trace message.
 * `::log/raw` outputs the value without any processing or prettifying.
 * `::log/context` append metadata to the trace (not printed, it's to be
   processed by other tools).
 * `::log/cause` (only in backend) attach a java exception object that will
   be printed in a readable way with the stack trace.
 * `::log/async` (only in backend) if set to false, makes the log processing
   synchronous. If true (the default), it's executed in a separate thread.
 * `:js/<key>` (only in frontend) if you prefix the key with the `js/`
   namespace, the value will be printed as a javascript interactively
   inspectionable object.
 * `:err` (only in frontend) attach a javascript exception object, and it
   will be printed in a readable way with the stack trace.

### backend

The logging utility uses a different library for Clojure and Clojurescript. In
the first case we use [log4j2](https://logging.apache.org/log4j/2.x) to have
much flexibility.

The configuration is made in [log4j2.xml](https://github.com/penpot/penpot/blob/develop/backend/resources/log4j2.xml)
file. The Logger used for this is named "app" (there are other loggers for
other subsystems). The default configuration just outputs all traces of level
`debug` or higher to the console standard output.

There is a different [log4j2-devenv](https://github.com/penpot/penpot/blob/develop/backend/resources/log4j2-devenv.xml)
for the development environment. This one outputs traces of level `trace` or
higher to a file, and `debug` or higher to a `zmq` queue, that may be
subscribed for other parts of the application for further processing.

The ouput for a trace in `logs/main.log` uses the format

```
[<date time>] : <level> <namespace> - <key1=val1> <key2=val2> ...
```

Example:

```
[2022-04-27 06:59:08.820] T app.rpc - action="register", name="update-file" 
```

The `zmq` queue is not used in the default on premise or devenv setups, but there
are a number of handlers you can use in custom instances to save errors in the
database, or send them to a [Sentry](https://sentry.io/welcome/) or similar
service, for example.

### frontend and exporter

In the Clojurescript subservices, we use [goog.log](https://google.github.io/closure-library/api/goog.log.html)
library. This is much simpler, and basically outputs the traces to the console
standard output (the devtools in the browser or the console in the nodejs
exporter).

In the browser, we have an utility [debug function](/technical-guide/developer/frontend/#console-debug-utility)
that enables you to change the logging level of any namespace (or of the whole
app) in a live environment:

```javascript
debug.set_logging("namespace", "level")
```

## Assertions

Penpot source code has this types of assertions:

### **assert**

Just using the clojure builtin `assert` macro.

Example:

```clojure
(assert (number? 3) "optional message")
```

This asserts are only executed in development mode. In production
environment all asserts like this will be ignored by runtime.

### **spec/assert**

Using the `app.common.spec/assert` macro.

This macro is based in `cojure.spec.alpha/assert` macro, and it's
also ignored in a production environment.

The Penpot variant doesn't have any runtime checks to know if asserts
are disabled. Instead, the assert calls are completely removed by the
compiler/runtime, thus generating simpler and faster code in production
builds.

Example:

```clojure
(require '[clojure.spec.alpha :as s]
         '[app.common.spec :as us])

(s/def ::number number?)

(us/assert ::number 3)
```

### **spec/verify**

An assertion type that is always executed.

Example:

```clojure
(require '[app.common.spec :as us])

(us/verify ::number 3)
```

This macro enables you to have assertions on production code, that
generate runtime exceptions when failed (make sure you handle them
appropriately).

