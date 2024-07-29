---
title: 5.1. Getting started
---

# Getting started

## Introduction

Welcome to Penpot Plugins!

Plugins are the perfect tool to easily extend Penpot's functionality, you can automate repetitive tasks, add new features and much more.

Plugins can be created with your favorite framework or with not framework at all. Feel free to use whatever you want because Plugins are independent from Penpot's code and therefore you don't need any extra knowledge.

So, how does this works?

A plugin is essentially an independent applications that can be loaded in Penpot as an iframe. Said iframe communicates with Penpot via events and API calls.

The plugins will be hosted outside Penpot, and each creator need to host theirs.

## Pre-requisites

- Basic experience with Penpot.
- Basic experience with JavaScript, HTML and CSS.
- Node and npm (<a target="_blank" href="https://nodejs.org/en/learn/getting-started/how-to-install-nodejs">How to install Node.js</a>).
- A text editor, ideally an IDE like <a target="_blank" href="https://code.visualstudio.com">Visual Studio Code</a> or similar.

Nice to have:

- Git basic knowledge.
- A Github account or a similar service to host and share your plugin code.
- Experience with any front framework (angular, react, vue...) for complex user interfaces.
- A hosting service of your choice for plugin's deployment.

## Installation

### Step 1. Penpot

For testing purposes we have enabled the plugins system in <a target="_blank" href="https://early.penpot.dev">https://early.penpot.dev</a>. Just keep in mind that this is a demo service.

### Step 2. Installation

With the plugins system enabled, you need to go to any project to open the plugin manager.

You can open the plugin manager in any project via:

##### Shortcut #####

| Linux and Windows                         | macOS                                  |
| ----------------------------------------- | -------------------------------------- |
| <kbd>Ctrl</kbd><kbd>Alt</kbd><kbd>P</kbd> | <kbd>⌘</kbd><kbd>Alt</kbd><kbd>P</kbd> |

##### Menu #####

![Penpot's plugin menu image](/img/plugins/plugin-menu.png)

The plugin manager looks like this:

![Penpot's plugin manager](/img/plugins/plugin-manager.png)

You need to provide the plugin's manifest URL for the installation. If there's no issues the plugin will be installed and then you would be able to open it whenever you like.

### Examples

| Name          | URL                                                                 |
| ------------- | ------------------------------------------------------------------- |
| Lorem Ipsum   | https://lorem-ipsum-penpot-plugin.pages.dev/assets/manifest.json    |
| Contrast      | https://contrast-penpot-plugin.pages.dev/assets/manifest.json       |
| Feather icons | https://icons-penpot-plugin.pages.dev/assets/manifest.json          |
| Tablas        | https://table-penpot-plugin.pages.dev/assets/manifest.json          |
| Paleta Color  | https://create-palette-penpot-plugin.pages.dev/assets/manifest.json |
| Rename layers | https://rename-layers-penpot-plugin.pages.dev/assets/manifest.json  |
