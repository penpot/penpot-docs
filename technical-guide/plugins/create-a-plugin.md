---
title: 5.2. Create a Plugin
---

# Create a Plugin

This guide covers the creation of a Penpot plugin with the most popular front frameworks.

Penpot offers two ways to kickstart your journey towards developing a plugin:

- Using the <a target="_blank" href="https://github.com/penpot/penpot-plugin-starter-template">Penpot Plugin Starter Template</a>: A basic template with the required files for quickstarting your plugin. This template uses Typescript and Vite.
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

`@penpot/plugin-style` contains styles to help build the UI for Penpot plugins. To check the styles go to <a target="_blank" href="https://penpot-plugins-styles.pages.dev/">Plugin styles</a>.

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

To enable interaction between your plugin and the Penpot API, you'll need to implement message-based communication using JavaScript events. This communication occurs between the main Penpot application and your plugin, which runs in an iframe. The `window` object facilitates this communication by sending and receiving messages between the two.

### Sending messages from Penpot to your plugin

To send a message from the Penpot API to your plugin interface, use the following command in `plugin.ts`:

```js
penpot.ui.sendMessage(message);
```

Here, `message` can be any data or instruction you want to pass to your plugin. This message is dispatched from Penpot and is received by your plugin's iframe.

### Receiving Messages in Your Plugin Interface

Your plugin can capture incoming messages from Penpot using the `window` object's `message` event. To do this, set up an event listener in your plugin like this:

```js
window.addEventListener("message", (event) => {
  // Handle the incoming message
  console.log(event.data);
});
```

The `event.data` object contains the message sent from Penpot. You can use this data to update your plugin's interface or trigger specific actions within your plugin.

### Two-Way Communication

This setup allows for two-way communication between Penpot and your plugin. Penpot can send messages to your plugin, and your plugin can respond or send messages back to Penpot using the same `postMessage` API. For example:

```js
// Sending a message back to Penpot from your plugin
parent.postMessage(responseMessage, targetOrigin);
```

- `responseMessage` is the data you want to send back to Penpot.
- `targetOrigin` should be the origin of the Penpot application to ensure messages are only sent to the intended recipient. You can use `'*'` to allow all.

### Summary

By using these message-based events, any data retrieved through the Penpot API can be communicated to and from your plugin interface seamlessly.

For more detailed information, refer to the [Penpot Plugins API Documentation](https://penpot-plugins-api-doc.pages.dev/).

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

### Icon

The plugin icon must be an image file. All image formats are valid, so you can use whichever format works best for your needs. Although there is no specific size requirement, it is recommended that the icon be 56x56 pixels in order to ensure its optimal appearance across all devices.

### Types of permissions

- `content:read`: Allows reading of content-related data. Grants read access to all endpoints and operations dealing with content. Typical use cases: viewing shapes, pages, or other design elements in a project; accessing the properties and settings of content within the application.

- `content:write`: Allows writing or modifying content-related data. Grants write access to all endpoints and operations dealing with content modifications, except those marked as read-only. Typical use cases: adding, updating, or deleting shapes and elements in a design; uploading media or other assets to the project.

- `user:read`: Allows reading of user-related data. Grants read access to all endpoints and operations dealing with user data. Typical use cases: viewing user profiles and their associated information or listing active users in a particular context or project.

- `library:read`: Allows reading of library-related data and assets. Grants read access to all endpoints and operations dealing with the library context. Typical use cases: accessing shared design elements and components from a library or viewing the details and properties of library assets.

- `library:write`: Allows writing or modifying library-related data and assets. Grants write access to all endpoints and operations dealing with library modifications. Typical use cases: adding new components or assets to the library or updating or removing existing library elements.

## Step 7. Load the Plugin in Penpot

<p class="advice"><b>Serving an application:</b> This refers to making your application accessible over a network, typically for testing or development purposes. <br><br>When using a tool like <a href="https://www.npmjs.com/package/live-server" target="_blank">live-server</a>, a local web server is created on your machine, which serves your application files over HTTP. Most modern frameworks offer their own methods for serving applications, and there are build tools like Vite and Webpack that can handle this process as well. </p>

**You don't need to deploy your plugin just to test it**. Locally serving your plugin is compatible with `https://early.penpot.dev/`. However, be mindful of potential CORS (Cross-Origin Resource Sharing) issues. To avoid these, ensure your plugin includes the appropriate cross-origin headers.

Serving your plugin will generate a URL that looks something like `http://localhost:XXXX`, where `XXXX` represents the port number on which the plugin is served. Ensure that both `http://localhost:XXXX/manifest.json` and `http://localhost:XXXX/plugin.js` are accessible. If these files are inside a specific folder, the URL should be adjusted accordingly (e.g., `http://localhost:XXXX/folder/manifest.json`).

Once your plugin is served you are ready to load it into Penpot. You can use the shortcut `Ctrl + Alt + P` to open the Plugin Manager modal. In this modal, provide the URL to your plugin's manifest file (e.g., `http://localhost:XXXX/manifest.json`) for installation. If everything is set up correctly, the plugin will be installed, and you can launch it whenever needed.

You can also open the Plugin manager modal via:

- Menu

  ![Penpot's menu image](/img/plugins/plugin-menu.png)

- Toolbar

  ![Penpot's toolbar image](/img/plugins/plugin-toolbar.png)
