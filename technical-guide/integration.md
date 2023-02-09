---
title: 4. Integration Guide
---

# Integration Guide

This section explains how to interconnect Penpot with other applications, so
they can collaborate and create new kinds of features, or integrate in DesignOps
or GitOps workflows.

The system is relatively simple for now, but expect more functions in the future.

## Webhooks

Outbound webhooks are event calls from Penpot to other applications, that
notifiy some particular event has occured (e.g. a file has been created or
updated, a comment has been added, etc.).

In Penpot, webhooks are configured at Team level:

![Add a webhook](/img/webhooks.png)

When you add a webhook, you specify the URL of a service you own. If the webhook
is active, a POST request will be sent to the URL on any event that occurs anywhere
in the team.

You can specify the format of the call payload.

* JSON is a standard format, accepted by almost every web application.
* <a href="https://github.com/cognitect/transit-format" target="_blank">Transit</a>
is a format, that may be encapsulated inside JSON, that adds datatype
information and enriches the content with semantic information.

### Events list

Unfortunately, we do not have any specific documentation for the webhooks yet.
For the moment you can use the <a href="https://design.penpot.app/api/_doc"
target="_blank">backend API documentation</a>, generated automatically from <a
href="https://github.com/penpot/penpot/tree/main/backend/src/app/rpc"
target="_blank">source code</a>, as a guide.

All backend RPC calls labelled as `WEBHOOK` trigger webhook calls, if
appropriate, with an equivalent payload.

The payload content is specified as <a href="https://clojure.org/guides/spec"
target="_blank">Clojure Spec</a> predicates:

![Example of a RPC call](/img/webhook-call.png)

The listed spec details all required (`:req` or `:req-un`) and optional
(`:opt-un`) attributes of the RPC parameters.

The payload of the webhook is similar, but there may be some changes (some
parameters ommited or others added). The recommended way of understanding the
webhook calls is by using <a href="https://webhook.site/" target="_blank">Webhook.site</a>.
Generate a site URL and set it into Penpot. Then you can inspect the calls received.
