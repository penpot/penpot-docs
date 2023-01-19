---
title: 1. Self-hosting guide
---

# Self-hosting guide

This section details everything you need to know to get Penpot up and
running in your own machine, as explained in the [introduction][1] section.

## Install with Elestio

This section explains how to get Penpot up and running using <a href="https://elest.io/" target="_blank">Elestio</a>.

This platform offers a fully managed service for on-premise instances of a selection of open-source software! This means you can deploy a dedicated instance of Penpot in just 3 minutes. You’ll be relieved of the need to worry about DNS configuration, SMTP, backups, SSL certificates, OS & Penpot upgrades, and much more.

It uses the same Docker configuration as the other installation option, below, so all customization options are the same.

### Get an Elestio account

<p class="advice">
Skip this section if you already have an Elestio account.
</p>

To create your Elestio account <a href="https://dash.elest.io/deploy?soft=Penpot&id=121" target="_blank">click here</a>. You can choose to deploy on any one of five leading cloud providers or on-premise.

### Deploy Penpot using Elestio

Now you can Create your service in “Services”:
1. Look for Penpot.
2. Select a Service Cloud Provider.
3. Select Service Cloud Region.
4. Select Service Plan (for a team of 20 you should be fine with 2GB RAM).
5. Select Elestio Service Support.
6. Provide Service Name (this will show in the URL of your instance) & Admin email (used to create the admin account).
7. Select Advanced Configuration options (you can also do this later).
8. Hit “Create Service” on the bottom right.

It will take a couple of minutes to get the instance launched. When the status turns to “Service is running” you are ready to get started.

By clicking on the Service you go to all the details and configuration options.

In Network/CNAME you can find the URL of your instance. Copy and paste this into a browser and start using Penpot.

### Configure Penpot with Elestio

If you want to make changes to your Penpot setup click on the “Update config” button in Software. Here you can see the “Docker compose” used to create the instance. In “ENV” top middle left you can make configuration changes that will be reflected in the Docker compose.

In this file, a “#” at the start of the line means it is text and not considered part of the configuration. This means you will need to delete it to get some of the configuration options to work. Once you made all your changes hit “Update & restart”. After a couple of minutes, your changes will be active.

You can find all configuration options in the [Configuration][2] section.

Get in contact with us through <a href="mailto:support@penpot.app">support@penpot.app</a> if you have any questions or need help.

### Update Penpot

Elestio will update your instance automatically to the latest release unless you don't want this. In that case you need to “Disable auto updates” in Software auto updates.


## Install with Docker

This section details everything you need to know to get Penpot up and running in production environments using Docker. For this, we provide a series of *Dockerfiles* and a *docker-compose* file that orchestrate all.

### Install Docker

<p class="advice">
Skip this section if you already have docker installed, up and running.
</p>

Currently, Docker comes into two different flavours:

#### Docker Desktop

This is the only option to have Docker in a Windows or MacOS. Recently it's also available for Linux, in the most popular distributions (Debian, Ubuntu and Fedora).

You can install it following the <a href="https://docs.docker.com/desktop/" target="_blank">official guide</a>.

Docker Desktop has a graphical control panel (GUI) to manage the service and view the containers, images and volumes. But need the command line (Terminal in Linux and Mac, or PowerShell in Windows) to build and run the containers, and execute other operations.

It already includes **docker compose** utility, needed by Penpot.

#### Docker Engine

This is the classic and default Docker setup for Linux machines, and the only option for a Linux VPS without graphical interface.

You can install it following the <a href="https://docs.docker.com/engine/" target="_blank">official guide</a>.

And you also need the [docker compose](https://docs.docker.com/compose/cli-command/#installing-compose-v2)  (V2) plugin. You
can use the old **docker-compose** tool, but all the documentation supposes you are using the V2.

You can easily check which version of **docker compose** you have. If you can execute `docker compose` command, then you have V2. If you need to write `docker-compose` (with a `-`) for it to work, you have the old version.

### Start Penpot

As first step you will need to obtain the `docker-compose.yaml` file. You can download it <a href="https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml" target="_blank">from Penpot repository</a>.

```bash
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
```

Then simply launch composer:

```bash
docker compose -p penpot -f docker-compose.yaml up -d
```

At the end it will start listening on http://localhost:9001


### Stop Penpot

If you want to stop running Penpot, just type

```bash
docker compose -p penpot -f docker-compose.yaml down
```


### Configure Penpot with Docker

The configuration is defined using environment variables in the `docker-compose.yaml`
file. The default downloaded file already comes with the essential variables
already set, and other ones commented out with some explanations.

In order to create users to log into the application, you will probably need
to configure some SMTP server, for the confirmation emails Penpot sends to
new registered users. But you can also create an already activated user with
this command:

```bash
docker exec -ti penpot-penpot-backend-1 ./manage.sh create-profile -u "Your Email" -p "Your Password" -n "Your Full Name"
```

**NOTE:** the exact container name depends on your docker version and platform.
For example it could be `penpot-penpot-backend-1` or `penpot_penpot-backend-1`.
You can check the correct name executing `docker ps`.

You can find all configuration options in the [Configuration][2] section.

### Update Penpot

To get the latest version of Penpot in your local installation, you just need to
execute:

```bash
docker compose -f docker-compose.yaml pull
```

This will fetch the latest images. When you do `docker compose up` again, the
containers will be recreated with the latest version.

### Backup Penpot

Penpot uses <a href="https://docs.docker.com/storage/volumes" target="_blank">Docker volumes</a> to store all persistent data. This allows you to delete and recreate containers whenever you want without losing information.

This also means you need to do regular backups of the contents of the volumes. You cannot directly
copy the contents of the volume data folder. Docker provides you a <a href="https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes" target="_blank">volume backup procedure</a>, that uses a temporary container to mount one or more volumes, and copy their data to an archive file stored outside of the container.

If you use Docker Desktop, <a href="https://www.docker.com/blog/back-up-and-share-docker-volumes-with-this-extension/" target="_blank">there is an extension</a> that may ease the backup process.

If you use the default **docker compose** file, there are two volumes used: one for the Postgres database and another one for the assets uploaded by your users (images and svg clips). There may be more volumes if you enable other features, as explained in the file itself.

[1]: /technical-guide
[2]: /technical-guide/configuration/
