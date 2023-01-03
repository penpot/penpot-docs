---
title: 3.5. Frontend Guide
---

# Frontend Guide

This guide intends to explain the essential details of the frontend
application.


## Icons & Assets

The icons used on the frontend application are loaded using svgsprite
(properly handled by the gulp watch task). All icons should be in SVG
format located in `resources/images/icons`. The gulp task will
generate the sprite and the embed it into the `index.html` file.

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

### Logging framework

To trace and debug the execution of the code, one method is to enable the log
traces that currently are in the code using the [Logging
framework](/technical-guide/developer/common/#system-logging). You can edit a
module and set a lower log level, to see more traces in console. Search for
this kind of line and change to `:info` or `:debug`:

```clojure
(ns some.ns
  (:require [app.util.logging :as log]))

(log/set-level! :info)
```

Or you can change it live with the debug utility (see below):

```javascript
debug.set_logging("namespace", "level")
```

### Temporary traces

Of course, you have the traditional way of inserting temporary traces inside
the code to output data to the devtools console. There are several ways of
doing this.

#### Use clojurescript helper `prn`

This helper automatically formats the clojure and js data structures as plain
[EDN](https://clojuredocs.org/clojure.edn) for visual inspection and to know
the exact type of the data.

```clojure
(prn "message" expression)
```

![prn example](/img/traces1.png)

#### Use `pprint` function

We have set up a wrapper over [fipp](https://github.com/brandonbloom/fipp)
`pprint` function, that gives a human-readable formatting to the data, useful
for easy understanding of larger data structures.

The wrapper allows to easily specify `level`, `length` and `width` parameters,
with reasonable defaults, to control the depth level of objects to print, the
number of attributes to show and the display width.

```clojure
(:require [app.common.pprint :refer [pprint]])

;; On the code
(pprint shape {:level 2
               :length 21
               :width 30})
```

![pprint example](/img/traces2.png)

#### Use the js native functions

The `clj->js` function converts the clojure data structure into a javacript
object, interactively inspectable in the devtools.console.

```clojure
(js/console.log "message" (clj->js expression))
```

![clj->js example](/img/traces3.png)


### Breakpoints

You can insert standard javascript debugger breakpoints in the code, with this
function:

```clojure
(js-debugger)
```

The Clojurescript environment generates source maps to trace your code step by
step and inspect variable values. You may also insert breakpoints from the
sources tab, like when you debug javascript code.

One way of locating a source file is to output a trace with `(js/console.log)`
and then clicking in the source link that shows in the console at the right
of the trace.


### Access to clojure from js console

The penpot namespace of the main application is exported, so that is
accessible from javascript console in Chrome developer tools. Object
names and data types are converted to javascript style. For example
you can emit the event to reset zoom level by typing this at the
console (there is autocompletion for help):

```javascript
app.main.store.emit_BANG_(app.main.data.workspace.reset_zoom)
```

### Debug utility

We have defined, at `src/debug.cljs`, a `debug` namespace with many functions
easily accesible from devtools console.

#### Change log level

You can change the [log level](/technical-guide/developer/common/#system-logging)
of one namespace without reloading the page:

```javascript
debug.set_logging("namespace", "level")
```

#### Dump state and objects

There are some functions to inspect the global state or parts of it:

```javascript
// print the whole global state
debug.dump_state()

// print the latest events in the global stream
debug.dump_buffer()

// print a key of the global state
debug.get_state(":workspace-data :pages 0")

// print the objects list of the current page
debug.dump_objects()

// print a single object by name
debug.dump_object("Rect-1")

// print the currently selected objects
debug.dump_selected()

// print all objects in the current page and local library components.
// Objects are displayed as a tree in the same order of the
// layers tree, and also links to components are shown.
debug.dump_tree()

// This last one has two optional flags. The first one displays the
// object ids, and the second one the {touched} state.
debug.dump_tree(true, true)
```

And a bunch of other utilities (see the file for more).

## Workspace visual debug

Debugging a problem in the viewport algorithms for grouping and
rotating is difficult. We have set a visual debug mode that displays
some annotations on screen, to help understanding what's happening.
This is also in the `debug` namespace.

To activate it, open the javascript console and type:

```js
debug.toggle_debug("option")
```

Current options are `bounding-boxes`, `group`, `events` and
`rotation-handler`.

You can also activate or deactivate all visual aids with

```js
debug.debug_all()
debug.debug_none()
```

## Translations (I18N) ##

### How it works ###

All the translation strings of this application are stored in
standard *gettext* files in `frontend/translations/*.po`.

They have a self explanatory format that looks like this:

```
#: src/app/main/ui/auth/register.cljs, src/app/main/ui/auth/login.cljs
msgid "auth.create-demo-account"
msgstr "Create demo account"
```

The files are automatically bundled into the `index.html` file on
compile time (in development and production). The bundled content is a
simplified version of this data structure for avoid loading unnecesary
data. The development environment has a watch process that detect
changes on that file and recompiles the `index.html`.

**There are no hot reload for translations strings**, you just need to
refresh the browser tab for refresh the translations in the running the
application.

Finally, when you have finished adding texts, execute the following command
inside the devenv, to reformat the file before commiting the file into the
repository:

```bash
# cd <repo>/frontend
yarn run validate-translations
```

At Penpot core team we maintain manually the english and spanish .po files. All
the others are managed in https://weblate.org.

**When a new language is available in weblate**, to enable it in the application
you need to add it in two places:

```
frontend/src/app/util/i18n.cljs (supported-locales)
frontend/gulpfile.js (const langs)
```

### How to use it ###

You need to use the `app.util.i18n/tr` function for lookup translation
strings:

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "auth.create-demo-account")
;; => "Create demo account"
```

If you want to insert a variable into a translated text, use `%s` as
placeholder, and then pass the variable value to the `(tr ...)` call.:

```
#: src/app/main/ui/settings/change_email.cljs
msgid "notifications.validation-email-sent"
msgstr "Verification email sent to %s. Check your email!"
```

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "notifications.validation-email-sent" email)
;; => "Verification email sent to test@example.com. Check your email!"
```

If you have defined plurals for some translation resource, then you
need to pass an additional parameter marked as counter in order to
allow the system know when to show the plural:

```
#: src/app/main/ui/dashboard/team.cljs
msgid "labels.num-of-projects"
msgid_plural "labels.num-of-projects"
msgstr[0] "1 project"
msgstr[1] "%s projects"
```

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "labels.num-of-projects" (i18n/c 10))
;; => "10 projects"

(tr "labels.num-of-projects" (i18n/c 1))
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
