---
title: 5.2. Create a Plugin
---

# Create a Plugin

This guide covers the creation of a Penpot plugin with the most popular front frameworks.

Penpot offers two ways to kickstart your journey towards developing a plugin:

- Using the [Penpot Plugin Starter Template](https://github.com/penpot/penpot-plugin-starter-template): A basic template with the required files for quickstarting your plugin. This template uses Typescript and Vite.
- Follow to the next section to understand how to bootstrap a new plugin using one of the three major JavaScript frameworks.

<p class="advice">
Before you start, you might want to have the <a target="_blank" href="https://github.com/penpot/plugin-examples"> Plugin examples </a> at hand.
</p>

## Step 1. Create a project

Create your own app with the framework of your choice. See examples for each framework <a target="_blank" href="https://github.com/penpot/plugin-examples"> here </a>

| Framework | Command                                                     | Version\* |
| --------- | ----------------------------------------------------------- | --------- |
| Angular   | `ng new plugin-name`                                        | 18.0.0    |
| React     | `npm create vite@latest plugin-name -- --template react-ts` | 18.2.0    |
| Vue       | `npm create vue@latest`                                     | 3.4.21    |

_\*: version we used in the examples._

## Step 2. Install Penpot libraries

There are two libraries that can help you with your plugin's development. They are `@penpot/plugin-styles` and `@penpot/plugin-types`.

### Plugin styles

`@penpot/plugin-style` contains styles to help build the UI for Penpot plugins. To check the styles go to [Plugin styles](https://penpot.github.io/penpot-plugins/).

```bash
npm install @penpot/plugin-styles
```

You can add the styles to your global css file.

```css
@import "@penpot/plugin-styles/styles.css";
```

### Plugin types

`@penpot/plugin-types` contains the typings for the Penpot Plugin API.

```bash
npm install @penpot/plugin-types
```

If you're using typescript, don't forget to add `@penpot/plugin-types` to your typings in your `tsconfig.json`.

```json
{
  "compilerOptions": {
    [...]
    "typeRoots": ["./node_modules/@types", "./node_modules/@penpot"],
    "types": ["plugin-types"],
  }
}
```

## Step 3. Create a plugin file

A plugin file is needed to interact with Penpot and its API. You can use either javascript or typescript and it can be placed wherever you like. It normally goes alongside the main files inside the `src/` folder. We highly recommend labeling your creation as `plugin.js` or `plugin.ts`, depending upon your preferred language.

You can start with something like this:

```ts
penpot.ui.open("Plugin name", "", {
  width: 500,
  height: 600,
});
```

The sizing values are optional. By default the plugin will open with a size of 285x540 pixels.

## Step 4. Connect API and plugin interface

To be able to interact with the Penpot API from your plugin you'll need to implement messaging-type JavaScript events.

Dispatch a message from the API to your plugin interface:

```js
penpot.ui.sendMessage(message);
```

Capture incoming messages in your plugin interface using:

```js
window.addEventListener("message", (event) => {
  \\ console.log(event.data)
});
```

This way, any information you retrieve through the API can reach the plugin interface.

Check the [Api Documentation](/technical-guide/plugins/api) for more.

## Step 5. Build the plugin file

<div class="advice">
<p>This step is only for local serving.
For a detailed guide about building and deploying you can check the documentation at <a target="_blank" href="/technical-guide/plugins/deployment/">Deployment</a> </p>
<p>You can skip this step if working exclusively with JavaScript by simply moving `plugin.js` to your `public/` directory.</p>
</div>

If you wish to run your plugin locally and test it live you need to make your plugin file reachable. Right now, your `plugin.ts` file is somewhere in the `src\` folder, and you can't access it through `http://localhost:XXXX/plugin.js`.

You can achieve this through multiple solutions but we offer two simple ways of doing so. Of course you can come up with your own.

#### Vite

If you're using Vite you can simply edit the configuration file and add the build to your `vite.config.ts`.

```ts
export default defineConfig({
[...]
  build: {
    rollupOptions: {
      input: {
        plugin: "src/plugin.ts",
        index: "./index.html",
      },
      output: {
        entryFileNames: "[name].js",
      },
    },
  },
  preview: {
    port: XXXX,
  },
});
```

And then add the following scripts to your `package.json`:

```json
"scripts": {
  "dev": "vite build --watch & vite preview",
  "build": "tsc && vite build",
  [...]
}
```

#### Esbuild

```bash
$ npm i -D esbuild        # install as dev dependency
```

Now you can use esbuild to parse and move your plugin file.

```bash
esbuild your-folder/plugin.ts --minify --outfile=your-folder/public/plugin.js
```

You can add it to your `package.json` scripts so you don't need to manually re-run the build:

```json
  "scripts": {
    "start": "npm run build:plugin && ng serve",
    "build:plugin": "esbuild your-folder/plugin.ts --minify --outfile=your-folder/public/plugin.js"
    [...]
  },
```

Keep in mind that you'll need to build again your plugin file if you modify it mid-serve.

## Step 6. Configure the manifest file

Now that everything is in place you need a `manifest.json` file to provide Penpot with your plugin data. Remember to make it reachable by placing it in the `public/` folder.

```json
{
  "name": "Plugin name",
  "description": "Plugin description",
  "code": "/plugin.js",
  "icon": "/icon.png",
  "permissions": [
    "content:read",
    "content:write",
    "library:read",
    "library:write",
    "user:read"
  ]
}
```

Types of permissions:

- `content:read`: Allows reading of content-related data. Grants read access to all endpoints and operations dealing with content. Typical use cases: viewing shapes, pages, or other design elements in a project; accessing the properties and settings of content within the application.

- `content:write`: Allows writing or modifying content-related data. Grants write access to all endpoints and operations dealing with content modifications, except those marked as read-only. Typical use cases: adding, updating, or deleting shapes and elements in a design; uploading media or other assets to the project.

- `user:read`: Allows reading of user-related data. Grants read access to all endpoints and operations dealing with user data. Typical use cases: viewing user profiles and their associated information or listing active users in a particular context or project.

- `library:read`: Allows reading of library-related data and assets. Grants read access to all endpoints and operations dealing with the library context. Typical use cases: accessing shared design elements and components from a library or viewing the details and properties of library assets.

- `library:write`: Allows writing or modifying library-related data and assets. Grants write access to all endpoints and operations dealing with library modifications. Typical use cases: adding new components or assets to the library or updating or removing existing library elements.

## Step 7. Load the Plugin in Penpot

To test the plugin locally you need to serve it. Make sure that both `http://localhost:XXXX/manifest.json` and `http://localhost:XXXX/plugin.js` can be reached.

To load your plugin into Penpot you can use the shortcut `Ctrl + Alt + P` to directly open the Plugin manager modal. There you need to provide the plugin's manifest URL (example: `http://plugin.example/manifest.json`) for the installation. If there's no issues the plugin will be installed and then you would be able to open it whenever you like.

You can also open the Plugin manager modal via:

- Menu

  ![Penpot's menu image](/img/plugins/plugin-menu.png)

## Penpot theme (optional)

Penpot have a dark and a light theme. You can create your own implementation, but this step covers a way to get this value in your plugin so you can customize it to match the current Penpot theme.

### Common

The common steps includes modifying the plugin file to add the theme. We also added a basic interface file for typescript. This file is supposed to grow as you create more Events for your plugin.

#### Typescript

- Add a `model.ts` along the `plugin.ts` file with the following:

```ts
/**
 * This file contains the typescript interfaces for the plugin events.
 */

export interface ThemePluginEvent {
  type: "theme";
  content: string;
}

export type PluginMessageEvent = ThemePluginEvent;
```

- `plugin.ts`

```ts
import type { PluginMessageEvent } from "./model";

penpot.ui.open("Plugin name", `?theme=${penpot.getTheme()}`, {
  width: 500,
  height: 600,
});

penpot.on("themechange", (theme) => {
  sendMessage({ type: "theme", content: theme });
});

function sendMessage(message: PluginMessageEvent) {
  penpot.ui.sendMessage(message);
}
```

#### Javascript

- `plugin.js`

```js
penpot.ui.open("Plugin name", `?theme=${penpot.getTheme()}`, {
  width: 500,
  height: 600,
});

penpot.on("themechange", (theme) => {
  sendMessage({ type: "theme", content: theme });
});

function sendMessage(message) {
  penpot.ui.sendMessage(message);
}
```

- `main.js`

```js
window.addEventListener("message", (event) => {
  if (event.data && event.data.type === "theme") {
    document
      .querySelector("#app")
      .setAttribute("data-theme", event.data.content);
  }
});
```

### Angular

- `app.component.ts`

```ts
import { Component, inject } from "@angular/core";
import { toSignal } from "@angular/core/rxjs-interop";
import { ActivatedRoute, RouterOutlet } from "@angular/router";
import { fromEvent, map, filter, take, merge } from "rxjs";
import { PluginMessageEvent } from "../model";

@Component({
  selector: "app-root",
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: "./app.component.html",
  styleUrl: "./app.component.css",
  host: {
    "[attr.data-theme]": "theme()",
  },
})
export class AppComponent {
  public route = inject(ActivatedRoute);

  public messages$ = fromEvent<MessageEvent<PluginMessageEvent>>(
    window,
    "message"
  );

  public initialTheme$ = this.route.queryParamMap.pipe(
    map((params) => params.get("theme")),
    filter((theme) => !!theme),
    take(1)
  );

  public theme = toSignal(
    merge(
      this.initialTheme$,
      this.messages$.pipe(
        filter((event) => event.data.type === "theme"),
        map((event) => {
          return event.data.content;
        })
      )
    )
  );
}
```

### React

- `App.tsx`

```js
import { useState } from "react";
import "./App.css";

function App() {
  const url = new URL(window.location.href);
  const initialTheme = url.searchParams.get("theme");

  const [theme, setTheme] = useState(initialTheme || null);

  window.addEventListener("message", (event) => {
    if (event.data.type === "theme") {
      setTheme(event.data.content);
    }
  });

  return <div data-theme={theme}>Welcome to your plugin!</div>;
}

export default App;
```

### Vue

- `App.vue`

```html
<script setup lang="ts">
  import { onMounted } from "vue";
  import { signal } from "vue-signals";

  const theme = signal<string | null>(null);

  onMounted(() => {
    const url = new URL(window.location.href);

    const initialTheme = url.searchParams.get("theme");

    if (initialTheme) {
      theme.set(initialTheme as string);
    }

    window.addEventListener("message", (event) => {
      if (event.data.type === "theme") {
        theme.set(event.data.content);
      }
    });
  });
</script>

<template>
  <div :data-theme="theme()">Welcome to your plugin!</div>
</template>
```

### Styling

It may vary depending on where you have placed the theme attribute.

```css
[data-theme="dark"] {
  /** Dark styles */
}

[data-theme="light"] {
  /** Light styles */
}
```
