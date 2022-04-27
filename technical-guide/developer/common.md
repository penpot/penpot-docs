---
title: 4.2. Common Guide
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
the
[docker-compose.yaml](https://github.com/penpot/penpot/blob/develop/docker/devenv/docker-compose.yaml)
directly sets the environment variables more appropriate for backend and
exporter development.

Additionally, the backend [start
script](https://github.com/penpot/penpot/blob/develop/backend/scripts/start-dev)
and [repl
script](https://github.com/penpot/penpot/blob/develop/backend/scripts/repl) set
some more variables.

The frontend uses only the defaults.

If you want to change any variable for your local environment, you can change
`docker-compose.yaml` and shut down and start again the container. Or you can
modify the start script or directly set the environment variable in your
session, and restart backend or exporter processes.

For frontend, you can manually create `resources/public/js/config.js` (it's
ignored in git) and define your settings there. Then, just reload the page.

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

