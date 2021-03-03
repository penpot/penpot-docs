---
title: 4.2. Common Guide
---

# Common guide

This section has articles related to all submodules (frontend, backend and
exporter) such as: code style hints, architecture decisions, etc...


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

Also, if you are using clojure.spec, you have the spec based
`clojure.spec.alpha/assert` macro. In the same way as the
`clojure.core/assert`, in production environment these asserts will
be removed by the compiler/runtime.

Example:

```clojure
(require '[clojure.spec.alpha :as s]
         '[app.common.spec :as us])

(s/def ::number number?)

(us/assert ::number 3)
```

**Why don't use the `clojure.spec.alpha/assert` instead of the `app.common.spec/assert`?**

The Penpot variant does not peforms additional runtime checks for know
if asserts are disabled in "runtime". As a result it generates much
simpler code at development and production builds.

### **spec/verify**

An assertion type that is always executed.

Example:

```clojure
(require '[app.common.spec :as us])

(us/verify ::number 3)
```

This macro enables you to have assertions on production code.

