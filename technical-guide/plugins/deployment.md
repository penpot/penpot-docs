---
title: 5.3. Deployment
---

# Deployment

## Prepare

Before we deploy our plugin we need to have a domain at hand. You can use your own domain name and configure it through your chosen hosting service, but in this example, we are going to use Netlify and a free netlify.app domain.

We will be using `https://example-plugin-penpot.netlify.app`. Make sure to check your domain availability beforehand or else you may need to repeat all the steps.

By default the plugin is ready to run locally at `http://localhost:4201`, and we need it to run remotely at `https://example-plugin-penpot.netlify.app`. **You may or may not be using a diferent host or port, so keep that in mind**.

Also note that if you want to keep working locally you will need to revert all these changes. You could use a different branch, copy the project folder or simply checkout the changes once you have built your plugin.

Now that you know everything we can proceed with the changes.

### Manifest

First of all, we need to update the manifest file so it points to the correct plugin configuration. Go to `public/manifest.json` and change the line where it states that the code is in `http://localhost:4201`. Use the url where the plugin will be hosted, like this:

```json
{
  "name": "Example plugin",
  "code": "https://example-plugin-penpot.netlify.app/plugin.js",
  "permissions": ["page:read", "file:read", "selection:read"]
}
```

### Configuration

Our manifest is ready, but the opening function must be also updated. Go to `src/plugin.ts` (or the file where you have placed your `penpot.ui.open()`) and, again, change the `http://localhost:4201` to your chosen domain.

```ts
penpot.ui.open("Plugin name", "https://example-plugin-penpot.netlify.app", {
  width: 500,
  height: 600,
});
```

### Headers

Last but not least, to avoid cross-origin issues you can add a `_header` file to the `public/` folder. It should contain something similar to:

```js
/*
  Access-Control-Allow-Origin: *
```

Feel free to configure it as you need.

## Build

Now that our plugin is ready for deployment we need to build it.

For building the plugin we simply need to run the command: `npx nx build example-plugin --emptyOutDir=true`.

The resulting code would be found in `dist/apps/example-plugin` by default.

## Deploy

Deployment may vary according to the chosen host service. To deploy your plugin to Netlify you simply need to drag and drop the folder found in `dist/apps/example-plugin`into the Netlify Sites.

Once the deployment is complete, don't forget to configure the site name through Site Configuration in Netlify, so the resulting url match with the one we provided in the manifest and the plugin opening function. In this example, the name should be `example-plugin-penpot`, which would result in the url `https://example-plugin-penpot.netlify.app`.

## Test

Congratulations, you have successfully deployed your first plugin! Now it's time to test it.

You need to:

- Open some penpot project as usual.
- Load the plugin with `ɵloadPlugin({ manifest: 'https://example-plugin-penpot.netlify.app/manifest.json' })`.
