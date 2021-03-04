---
title: 4.3. Frontend Guide
---

# Frontend Guide

This guide intends to explain the essential details of the frontend
application.


## Icons & Assets

The icons used on the frontend application are loaded using svgsprite
(properly handled by the gulp watch task). All icons should be on SVG
format located in `resources/images/icons`. The gulp task will
generate the sprite and the embedd it into the `index.html` file.

Then, you can reference the icon from the sprite using the
`app.builtins.icons/icon-xref` macro:

```clojure
(ns some.namespace
  (:require-macros [app.main.ui.icons :refer [icon-xref]]))

(icon-xref :arrow)
```

For performance reasons, all used icons are statically defined in the
`src/app/main/ui/icons.cljs` file.


## Logging, Tracing & Debugging

As a traditional way for debugging and tracing you have the followimg approach:


Print data to the devtool console using clojurescript helper:
**prn**. This helper automatically formats the clojure and js data
structures as plain EDN for easy visual inspection of the data and the
type of the data.

```clojure
(prn "message" expression)
```

An alternative is using the pprint function, usefull for pretty
printing a medium-big data structure to completely understand it.

```clojure
;; on the ns part
(:require [cljs.pprint :refer [pprint]])

;; On the code
(pprint expression)
;; => Outputs a clojure value as a string, nicely formatted and with data type information.
```

Use the js native functions for printing data.  The clj->js converts
the clojure data structure to js data structure and it is
inspeccionable in the devtools console.

```clojure
(js/console.log "message" (clj->js expression))
```


Also we can insert breakpoints in the code with this function:

```clojure
(js-debugger)
```

You can also set a breakpoint from the sources tab in devtools. One
way of locating a source file is to output a trace with
(js/console.log) and then clicking in the source link that shows in
the console.


### Logging framework

Additionally to the traditional way of putting traces in the code, we
have a logging framework with steroids. It is usefull for casual
debugging (as replacement for a `prn` and `js/console.log`) and for
permanent traces in the code.

You have the ability to specify the logging level per namespace and
all logging is elided in production build.

Lets start with a simple example:

```clojure
(ns some.ns
  (:require [app.util.logging :as log]))

;; This function sets the level of the current namespace; messages
;; with level behind this will not be printed.
(log/set-level! :info)


;; Log some data; The `app.util.logging` has the following
;; functions/macros:

(log/error :msg "error message")
(log/warn :msg "warn message")
(log/info :msg "info message")
(log/debug :msg "debug message")
(log/trace :msg "trace message")
```

Each macro accepts an arbitrary number of key values pairs:

```clojure
(log/info :foo "bar" :msg "test" :value 1 :items #{1 2 3})
```

Some keys ara treated as special cases for helping in debugging:

```clojure
;; The special case for :js/whatever; if you namespace the key
;; with `js/`, the variable will be printed as javascript
;; inspectionable object.

(let [foobar {:a 1 :b 2}]
  (log/info :msg "Some data" :js/data foobar))

;; The special case for `:err`; If you attach this key, the
;; exception stack trace is printed as additional log entry.
```



### Access to clojure from js console

The penpot namespace of the main application is exported, so that is
accessible from javascript console in Chrome developer tools. Object
names and data types are converted to javascript style. For example
you can emit the event to reset zoom level by typing this at the
console (there is autocompletion for help):

```javascript
app.main.store.emit_BANG_(app.main.data.workspace.reset_zoom)
```


### Debug state and objects

There are also some useful functions to visualize the global state or
any complex object. To use them from clojure:

```clojure
(ns app.util.debug)
(logjs <msg> <var>) ; to print the value of a variable
(tap <fn>) ; to include a function with side effect (e.g. logjs) in a transducer.

(ns app.main.store)
(dump-state) ; to print in console all the global state
(dump-objects) ; to print in console all objects in workspace
```

But last ones are most commonly used from javscript console:

```javascript
app.main.store.dump_state()
app.main.store.dump_objects()
```

And we have also exported `pprint` and `clj->js` functions for the console:

```javascript
pp(js_expression) // equivalent to cljs.pprint.pprint(js_expression)
dbg(js_expression) // equivalent to cljs.core.clj__GT_js(js_expression)
```




## Workspace visual debug

Debugging a problem in the viewport algorithms for grouping and
rotating is difficult. We have set a visual debug mode that displays
some annotations on screen, to help understanding what's happening.

To activate it, open the javascript console and type:

```js
app.util.debug.toggle_debug("option")
```

Current options are `bounding-boxes`, `group`, `events` and
`rotation-handler`.

You can also activate or deactivate all visual aids with

```js
app.util.debug.debug_all()
app.util.debug.debug_none()
```

## Translations (I18N) ##

### How it works ###

All the translation strings of this application are stored in
`resources/locales.json` file. It has a self explanatory format that
looks like this:

```json
{
  "auth.email-or-username" : {
    "used-in" : [ "src/app/main/ui/auth/login.cljs" ],
    "translations" : {
      "en" : "Email or Username",
      "fr" : "adresse email ou nom d'utilisateur"
    }
  },
  "labels.num-projects" : {
    "translations": {
      "en": ["1 project", "%s projects"]
    }
  },
}
```

For development convenience, you can forget about the specific format
of that file, and just add a simple key-value entry pairs like this:

```
{
  [...],
  "foo1": "bar1",
  "foo2": "bar2"
}
```

The file is automatically bundled into the `index.html` file on
compile time (in development and production). The bundled content is a
simplified version of this data structure for avoid loading unnecesary
data.

The development environment has a watch process that detect changes on
that file and recompiles the `index.html`. **There are no hot reload
for translations strings**, you just need to refresh the browser tab
for refresh the translations in the running the application.

If you have used the short (key-value) format, the watch process will
automatically convert it to the apropriate format before generate the
`index.html`.

Finally, when you have finished adding texts, execute the following
command to reformat the file, and track the usage locations (the
"used-in" list) before commiting the file into the repository:

```bash
# cd <repo>/frontend
yarn run collect-locales
```

NOTE: Later, we will need to think and implement the way to export and
import to other formats (mainly for Transifex and similar services
compatibility).


### How to use it ###

You need to use the `app.util.i18n/tr` function for lookup translation
strings:

```clojure
(require '[app.util.i18n :refer [tr])

(tr "auth.email-or-username")
;; => "Email or Username"
```

If you have defined plurals for some translation resource, then you
need to pass an additional parameter marked as counter in order to
allow the system know when to show the plural:

```clojure
(require '[app.util.i18n :as i18n :refer [tr]])

(tr "labels.num-projects" (i18n/c 10))
;; => "10 projects"

(tr "labels.num-projects" (i18n/c 1))
;; => "1 project"
```

## Tests ##

Frontend tests have to be compiled first, and then run with node.

```bash
npx shadow-cljs compile tests && node target/tests.js
```

Or run the watch (that automatically runs the test):

```bash
npx shadow-cljs watch tests
```
