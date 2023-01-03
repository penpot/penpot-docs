---
title: Technical Guide
eleventyNavigation:
  key: Technical Guide
  order: 4
---

<div class="main-illus">
  <img src="/img/home-techguide.png" alt="Technical guide" border="0">
</div>

# Technical Guide

This guide explains how to get your own Penpot instance, running on a machine you control, to test it, use it by you or your team, or even customize and extend it any way you like.

There is absolutely no difference between <a href="https://design.penpot.app">our SaaS offer</a> for Penpot and your self-hosted Penpot platform!

## Self-hosting Penpot

There are two main options for creating a Penpot instance:

1. Using the platform of our partner <a href="https://elest.io/" target="_blank">Elestio</a>.
2. Using <a href="https://docker.com" target="_blank">Docker</a> tool.

<p class="advice">
The recommended way is to use Elestio, since it's simpler, fully automatic and still greatly flexible. Use Docker if you already know the tool, if need full control of the process or have extra requirements and do not want to depend on any external provider, or need to do any special customization.
</p>

* In the [Install with Elestio][1] section, you can find how to open an Elestio account and create your Penpot instance.

* In the [Install with Docker][2] section, you can find the official Docker installation guide.

* In the [Configuration][3] section, you can find all the customization options you can set up after installing.

Also there are some unofficial options, **NOT SUPPORTED BY PENPOT**:

* Install with <a href="https://community.penpot.app/t/how-to-develop-penpot-with-podman-penpotman/2113" target="_blank">Podman</a> instead of Docker.
* Try the under development <a href="https://community.penpot.app/t/introducing-penpot-desktop/1468" target="_blank">Penpot Desktop app</a>.
* Or try a fully manual installation if you have really special needs. For help, you can look at the [Architecture][5] section and the <a href="https://github.com/penpot/penpot/tree/develop/docker/images" target="_blank">Docker configuration files</a>.

## Developing Penpot

Also, if you are a developer, you can get into the code, to explore it, learn how it is made, or extend it and contribute with new functionality. For this, we have a different Docker installation.
In the [Developer Guide][4] you can find how to setup a development environment and many other dev-oriented documentation.

[1]: /technical-guide/getting-started/#install-with-elestio
[2]: /technical-guide/getting-started/#install-with-docker
[3]: /technical-guide/configuration/
[4]: /technical-guide/developer/
[5]: /technical-guide/developer/architecture
