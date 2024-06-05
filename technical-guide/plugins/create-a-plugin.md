---
title: 5.2. Create a Plugin
---

# Create a Plugin

This guide covers the creation of a Penpot plugin with the most popular front frameworks.

You can check the examples in [Plugin examples](https://github.com/penpot/plugin-examples).

**Related:**

- For the starter vanilla template go to [Penpot Plugin Starter Template](https://github.com/penpot/penpot-plugin-starter-template).
- For the nx monorepo documentation go to [Creating a Plugin](https://github.com/penpot/penpot-plugins/blob/main/docs/create-plugin.md) or [Creating a Plugin (angular)](https://github.com/penpot/penpot-plugins/blob/main/docs/create-angular-plugin.md).

## Step 1. Create a project

Create your own app with the framework of your choice.

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

A plugin file is needed to interact with Penpot and its API. You can use either javascript or typescript and it can be placed wherever you like. It normally goes alongside the main files inside the `src/` folder.

You can start with something like this:

```ts
penpot.ui.open("Plugin name", "", {
  width: 500,
  height: 600,
});
```

The sizing values are optional. By default the plugin will open with a size of 285x540 pixels.

Check the [Api Documentation](/technical-guide/plugins/api) for more.

## Step 4. Build the plugin file

This step is for locally serving purposes, for a detailed guide about building and deploying you can check the documentation at [Deployment](/technical-guide/plugins/deployment).

Note: if you're using javascript you can skip this step by placing the `plugin.js` file directly in your `public\` folder, like we did in the React example.

If you wish to run your plugin locally and test it live you need to make your plugin file reachable. Right now, your `plugin.ts` file is somewhere in the `src\` folder, and you can't access it through `http://localhost:XXXX/plugin.js`.

You can achieve this through multiple solutions but we offer two simple ways of doing so. Of course you can come up with your own.

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

## Step 5. Configure the manifest file

Now that everything is in place you need a `manifest.json` file to provide Penpot with your plugin data. Remember to make it reachable by placing it in the `public/` folder.

```json
{
  "name": "Plugin name",
  "description": "Plugin description",
  "code": "/plugin.js",
  "icon": "/icon.png",
  "permissions": ["page:read", "file:read", "selection:read"]
}
```

## Live serve

To test the plugin locally you need to serve it.

Make sure that both `http://localhost:XXXX/manifest.json` and `http://localhost:XXXX/plugin.js` can be reached.

Use your `manifest.json` url to install your plugin in Penpot and test it live.

## Penpot theme (optional)

Penpot have a dark and a light theme. This step covers a way to get this value in your plugin so you can customize it to match the current Penpot theme.

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

- `App.js`

```js
import "./App.css";
import { useState } from "react";

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
