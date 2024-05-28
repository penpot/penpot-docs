---
title: 5.5. Creating a Plugin outside Nx monorepo
---

# Creating a Plugin outside Nx monorepo

This guide covers the configuration of a plugin with your chosen framework outside the penpot monorepo environment.

For the starter vanilla template go to [Penpot Plugin Starter Template](https://github.com/penpot/penpot-plugin-starter-template).

For other creation guides:

- [Create a plugin](link-to-create-plugin.md)
- [Create an angular plugin](link-to-create-angular-plugin.md)

Keep in mind that this guide is written in general terms and different frameworks may need a few tweaks.

### Step 1: Create your app

Create your own app with the framework of your choice.

### Step 2: Install penpot libraries

Follow the documentation in [Publishing packages](link-to-publish-package.md) to locally publish and then install `@penpot/plugin-types` and `@penpot/plugin-styles` in your project.

Make sure to add the types to your configuration and import the styles in your css.

### Step 3: Create the plugin file

The plugin file can be either `.js` or `.ts`. In the examples we will be using `plugin.ts`. You can place it wherever you like, but it normally goes alongside the main files inside the `src/` folder.

You can start with something like this:

```ts
penpot.ui.open("Plugin name", "", {
  width: 500,
  height: 600,
});
```

Check the [Api Documentation](/technical-guide/plugins/api) for more.

### Step 4: Build the plugin file

In order to make your `plugin.ts` reachable, you need to parse it and make it public. You can achieve this through multiple solutions, but a quick way to do so is using the `esbuild` package.

```bash
$ npm i -D esbuild        # install as dev dependency
```

```bash
$ esbuild your-folder/plugin.ts --minify --outfile=your-folder/assets/plugin.js
```

You can add it to your `package.json` scripts like this:

```json
  "scripts": {
    "start": "npm run build:plugin && your-serve-command",
    "build:plugin": "esbuild your-folder/plugin.ts --minify --outfile=your-folder/assets/plugin.js"
    [...]
  },
```

### Step 5: Configure the manifest file

Now that everything is in place, you need a `manifest.json` file. The location may vary between frameworks, but it's usually located somewhere reachable like `assets/` or `public/`.

```json
{
  "name": "Plugin name",
  "description": "Plugin description",
  "host": "http://localhost:3000",
  "code": "/plugin.js",
  "icon": "your-folder/assets/icon.png",
  "permissions": ["page:read", "file:read", "selection:read"]
}
```

### Test the plugin

To test the plugin locally you need to serve it. Remember to use the same port that you configured in the `manifest.json`. Make sure that both `manifest.json` and `plugin.js` are reachable.

To install the plugin in penpot use the `manifest.json` url. Example: `http://localhost:XXXX/assets/manifest.json`
