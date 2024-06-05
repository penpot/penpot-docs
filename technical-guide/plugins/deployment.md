---
title: 5.3. Deployment
---

# Deployment

When it comes to deploying your plugin there are several platforms to choose from. Each platform has its unique features and benefits, so the choice depends on you.

In this guide you will found some options for static sites that have free plans.

## Building your project

The building may vary between frameworks but if you had previously configured your scripts in `package.json`, `npm run build` should work.

The resulting build should be located somewhere in the `dist/` folder, maybe somewhere else if you have configured so.

Be wary that some framework's builders can add additional folders like `apps/project-name/`, `project-name/` or `browser/`.

Examples:

![Vue dist example](/img/plugins/vue_dist.png)
![Angular dist example](/img/plugins/angular_dist.png)

## Netlify

### CORS issues

To avoid these issues you can add a `_headers` file to your plugin. Place it in the `public/` folder or alongside the main files.

```js
/*
  Access-Control-Allow-Origin: *
```

### Drag and drop

Netlify offers a simple drag and drop method. Check [Netlify Drop](https://app.netlify.com/drop).

#### How to deploy

1. Build your project

```bash
npm run build
```

2. Go to [Netlify Drop](https://app.netlify.com/drop).

3. Drag and drop the build folder into Netlify Sites. Dropping the whole dist may not work, you should drop the folder where the main files are located.

![Angular dist example](/img/plugins/drag&drop.gif)

4. Done!

### Connect to Git

Netlify allows you to import an existing project from GitHub, GitLab, Bitbucket or Azure DevOps.

- [Configure builds](https://docs.netlify.com/configure-builds/overview/).

#### How to deploy

1. Go to [Start](https://app.netlify.com/start) and connect with your repository. Allow Netlify to be installed in either all your projects or just the selected ones.

![Netlify git installation](/img/plugins/install_netlify.png)

2. Configure your build settings. Netlify auto-detects your framework and offers a basic configuration. This is usually enough.

![Netlify git configuration](/img/plugins/build_settings.png)

3. Deploy your plugin.

## Cloudflare

### CORS issues

To avoid these issues you can add a `_headers` file to your plugin. Place it in the `public/` folder or alongside the main files.

```js
/*
  Access-Control-Allow-Origin: *
```

### Direct upload

You can directly upload your plugin folder.

- [Direct upload](https://developers.cloudflare.com/pages/get-started/direct-upload/)

#### How to deploy

1. Build your plugin.

```bash
npm run build
```

2. Go to Workers & Pages > Create > Page > Upload assets.

3. Create a new page.

![Cloudflare new page](/img/plugins/cf_new_page.png)

4. Upload your plugin files. You can drag and drop or select the folder.

![Cloudflare page upload files](/img/plugins/cf_upload_files.png)

5. Deploy site.

### Connect to Git

Cloudflare allows you to import an existing project from GitHub or GitLab.

- [Git integration](https://developers.cloudflare.com/pages/get-started/git-integration/)

#### How to deploy

1. Go to Workers & Pages > Create > Page > Connect to git

2. Select a repository. Allow Cloudflare to be installed in either all your projects or just the selected ones.

![Cloudflare git installation](/img/plugins/install_cloudflare.png)

4. Configure your build settings.

![Cloudflare git configuration](/img/plugins/cf_build_settings.png)

5. Save and deploy.

## Surge

Surge provides a CLI tool for easy deployment.

- [Getting Started](https://surge.sh/help/getting-started-with-surge).

### CORS issues

To avoid these issues you can add a `CORS` file to your plugin. Place it in the `public/` folder or alongside the main files.

The `CORS` can contain a `*` for any domain, or a list of specific domains.

Check [Enabling Cross-Origin Resources sharing](https://surge.sh/help/enabling-cross-origin-resource-sharing).

### How to deploy

1. Install surge CLI globally and log into your account or create one.

```bash
npm install --global surge
surge login
# or
surge signup
```

2. Create a CORS file to allow all sites.

```bash
echo '*' > public/CORS
```

3. Build your project.

```bash
npm run build
```

4. Start surge deployment

```bash
surge

# Your plugin build folder
project: /home/user/example-plugin/dist/

# your domain, surge offers a free .surge.sh domain and free ssl
domain: https://example-plugin-penpot.surge.sh

upload: [====================] 100% eta: 0.0s (10 files, 305761 bytes)
CDN: [====================] 100%
encryption: *.surge.sh, surge.sh (346 days)
IP: XXX.XXX.XXX.XXX

Success! - Published to example-plugin-penpot.surge.sh
```

5. Done!
