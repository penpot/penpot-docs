---
layout: layouts/plugins.njk
title: 1. Getting started
---

# Getting started

## 1.1. Introduction

Welcome to Penpot Plugins!

Plugins are the perfect tool to easily extend Penpot's functionality, you can automate repetitive tasks, add new features and much more.

Plugins can be created with your favorite framework or with not framework at all. Feel free to use whatever you want because Plugins are independent from Penpot's code and therefore you don't need any extra knowledge.

The plugins will be hosted outside Penpot, and each creator need to host theirs.

## 1.2. Pre-requisites

- Basic experience with Penpot.
- Basic experience with JavaScript, HTML and CSS.
- Node and npm (<a target="_blank" href="https://nodejs.org/en/learn/getting-started/how-to-install-nodejs">How to install Node.js</a>).
- A text editor, ideally an IDE like <a target="_blank" href="https://code.visualstudio.com">Visual Studio Code</a> or similar.

Nice to have:

- Git basic knowledge.
- A Github account or a similar service to host and share your plugin code.
- TypeScript basic knowledge.
- Experience with any front framework (angular, react, vue...) for complex user interfaces.
- A hosting service of your choice for plugin's deployment.

## 1.3. Installation

### Step 1. Penpot

For testing purposes we have enabled the plugins system in <a target="_blank" href="https://early.penpot.dev">https://early.penpot.dev</a>. Just keep in mind that this is a demo service.

### Step 2. Installation

With the plugins system enabled, you need to go to any project to open the plugin manager.

You can open the plugin manager in any project via:

##### Shortcut

| Linux and Windows                         | macOS                                  |
| ----------------------------------------- | -------------------------------------- |
| <kbd>Ctrl</kbd><kbd>Alt</kbd><kbd>P</kbd> | <kbd>⌘</kbd><kbd>Alt</kbd><kbd>P</kbd> |

##### Menu

![Penpot's plugin menu image](/img/plugins/plugin-menu.png)

##### Toolbar

![Penpot's toolbar image](/img/plugins/plugin-toolbar.png)


The plugin manager looks like this:

![Penpot's plugin manager](/img/plugins/plugin-manager.png)

You need to provide the plugin's manifest URL for the installation. If there are no issues the plugin will be installed and then you would be able to open it whenever you like.

### Examples

| Name          | URL                                                                 |
| ------------- | ------------------------------------------------------------------- |
| Lorem Ipsum   | https://lorem-ipsum-penpot-plugin.pages.dev/assets/manifest.json    |
| Contrast      | https://contrast-penpot-plugin.pages.dev/assets/manifest.json       |
| Feather icons | https://icons-penpot-plugin.pages.dev/assets/manifest.json          |
| Tablas        | https://table-penpot-plugin.pages.dev/assets/manifest.json          |
| Paleta Color  | https://create-palette-penpot-plugin.pages.dev/assets/manifest.json |
| Rename layers | https://rename-layers-penpot-plugin.pages.dev/assets/manifest.json  |

## 1.4. Plugin's basics

### How does it work?

Penpot's plugin system allows you to add new features to the platform through independent modules called plugins. These plugins run separately from the main Penpot app, inside iframes, which are like small, isolated browser windows within the app.

Plugins communicate with Penpot by sending and receiving messages through the iframe.

@startuml

skinparam state {
    BackgroundColor    transparent
    BorderColor        black
    ArrowColor         black
}

Penpot_App -down-> WebComponent
WebComponent -up-> Penpot_App : Write / Read
WebComponent : - Create API
WebComponent : - Create sandbox (ses)
WebComponent : - Read plugin manifest
WebComponent : - Run plugin code
WebComponent -right-> Plugin_code
Plugin_code : penpot.ui.open('Example plugin', '');
Plugin_code :
Plugin_code : penpot.ui.onMessage((message) => {
Plugin_code : console.log('iframe message', message);
Plugin_code : });
Plugin_code -right-> Iframe
Iframe -left-> Plugin_code
Iframe : <button type="button" data-appearance="primary">
Iframe : Send plugin message
Iframe : </button>
Iframe :
Iframe : <script type="text/javascript">
Iframe : document.querySelector('button').addEventListener(() => {
Iframe: parent.postMessage('test', '*');
Iframe : });
Iframe : </script>

CSS_Library -down-> Iframe
External_API -up-> Iframe
Iframe -down-> External_API

@enduml


### What is manifest.json file?

The `manifest.json` file contains the basic information about the plugin. It defines the plugin's name, description, the main code file, and the permissions it requires. The structure of the `manifest.json` file looks like this:

```json
{
  "name": "Your plugin name",
  "description": "Your plugin description",
  "code": "plugin.js",
  "icon": "Your icon",
  "permissions": [
    "content:read",
    "content:write",
    "library:read",
    "library:write",
    "user:read"
  ]
}
```

#### Properties

- **Name and description**: your plugin's basic information, which will be displayed in the plugin manager modal.
- **Code**: your plugin's file location. It needs to be compiled to JavaScript and reachable.
- **Icon**: your plugin's icon, which will be also displayed in the plugin manager modal. It'll be a `<img src="">` tag so you can use whichever image format works better for you. **It's recommended to use a 56x56 pixel icon for the best appearance on all devices**.
- **Permissions**: your plugin's permissions, which allow access to different parts of the Penpot API.

#### Types of permissions

- **content:read**: Allows reading of content-related data. Grants read access to all endpoints and operations dealing with content. Typical use cases: viewing shapes, pages, or other design elements in a project; accessing the properties and settings of content within the application.

- **content:write**: Allows writing or modifying content-related data. Grants write access to all endpoints and operations dealing with content modifications, except those marked as read-only. Typical use cases: adding, updating, or deleting shapes and elements in a design; uploading media or other assets to the project.

- **user:read**: Allows reading of user-related data. Grants read access to all endpoints and operations dealing with user data. Typical use cases: viewing user profiles and their associated information or listing active users in a particular context or project.

- **library:read**: Allows reading of library-related data and assets. Grants read access to all endpoints and operations dealing with the library context. Typical use cases: accessing shared design elements and components from a library or viewing the details and properties of library assets.

- **library:write**: Allows writing or modifying library-related data and assets. Grants write access to all endpoints and operations dealing with library modifications. Typical use cases: adding new components or assets to the library or updating or removing existing library elements.

### What are plugin.ts and plugin.js files?

The `plugin.ts` file is where you write code to interact with the Penpot API using TypeScript. This file is then compiled into `plugin.js` which is the final JavaScript code that runs the plugin. You don't write `plugin.js` directly; it's generated from the `plugin.ts` file.

<p class="advice">
<b>This is also the only file where you can use the Penpot object.</b> Do not try to use the Penpot object in your plugin interface scripts.
</p>

You can check some samples in:

- <a href="https://github.com/penpot/penpot-plugins-samples/" target="_blank">Penpot plugin samples.</a>

### What is TypeScript?

You may have noticed that we're using TypeScript in our plugin files, but what is it, and why?

TypeScript is like JavaScript with extra rules. These rules help you catch mistakes early, before you run your code. It makes your code more reliable and easier to manage, especially in big projects.

We're using TypeScript to make working with the Penpot API easier, as it provides autocompletion and instant access to documentation. However, even with TypeScript’s powerful features, you'll still need to include the `@penpot/plugin-types` npm package, which contains the typings for the Penpot Plugin API. This ensures that TypeScript can fully understand and work with the API.

![plugin-types example](/img/plugins/plugint-types-example.gif)

You can install the package in any project with `npm install @penpot/plugin-types`. You can check the details in [@penpot/plugin-types package](https://www.npmjs.com/package/@penpot/plugin-types).
