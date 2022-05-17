---
title: 1. Getting Started
---

# Getting Started #

This section details everything you need to know to get Penpot up and
running in production environments.

Although it can be installed in many ways,
If you don't have experience using Docker or if you want a fully automatically managed service, we recommend using **Elestio**. Otherwise, go for **Docker**.


## Install with Elestio ##

This section details how to get Penpot up and running using Elestio. Elestio is using the same Docker compose as recommended in “Install with Docker” therefore you can also use the [Configuration][1] options.

[1]: /technical-guide/getting-started/#configuration


### Get an Elestio account ###

<p class="advice">
Skip this section if you already have an Elestio account.
</p>

<a href="https://elest.io/" target="_blank">Elestio</a> offers a fully managed service for on-premise instances of a selection of open-source software! This means you can deploy a dedicated instance of Penpot in just 3 minutes. You’ll be relieved of the need to worry about DNS configuration, SMTP, backups, SSL certificates, OS & Penpot upgrades, and much more.

You can choose to deploy on any one of five leading cloud providers or on-premise. To create your Elestio account <a href="https://dash.elest.io/deploy?soft=Penpot&id=121" target="_blank">click here</a>.

### Deploy Penpot using Elestio ###

Now you can Create you service in “Services”:
1. Look for Penpot
2. Select a Service provider
3. Select Service Cloud Region
4. Select Service Plan (we recommend minimum xxxx)
5. Select Elestio Service Support
6. Provide Service Name (this will show in the URL of your instance) & Admin email (used to create the admin account)
7. There are Advanced Configuration options, but you can also do these later
8. Hit “Create Service” on the bottom right

It will take a couple of minutes to get the instance launched. When the status turns to “Service is running” you are ready to get started.

By clicking on the Service you go to all the details and configuration options.

In Network/CNAME you can find the URL of your instance. Copy and paste this into a browser and start using Penpot.

### Configuration ###

If you want to make changes to your Penpot setup click on the “Update config” button in Software. Here you can see the “Docker compose” used to create the instance. In “ENV” top middle left you can make configuration changes that will be reflected in the Docker compose. You can find more information on the configuration options in Configuration. In the “ENV” file a “#” at the start of the line means it is text and not considered part of the configuration. This means you will need to delete it to get some of the configuration options to work. Once you made all your changes hit “Update & restart”. After a couple of minutes, your changes will be active.

Get in contact with us through <a href="mailto:support@penpot.app">support@penpot.app</a> if you have any questions or need help.

### Update Penpot ###

Elestio will update your instance automatically to the latest release unless you don't want this. In that case you need to “Disable auto updates” in Software auto updates.






## Install with Docker ##

This section details everything you need to know to get Penpot up and running in production environments with Docker. Although it can be installed in many ways, the recommended approach is using **docker** and **docker-compose**.

### Install Docker ###
<p class="advice">
Skip this section if you already have docker installed, up and running.
</p>

Probably the best approach to install docker is following the official docker
installation guide: https://docs.docker.com/engine/install/

And the [docker compose
(v2)](https://docs.docker.com/compose/cli-command/#installing-compose-v2). You
can use the old `docker-compose` of course, but all the decomentation
supposes you are using the V2.

Optionally, after installing docker, you can tweak your system for
avoid constanly using of **sudo**. The easy, single step way is
executing the following command that will add the current user to the
docker group:

```bash
sudo usermod -aG docker $USER
```

**NOTE**: probably you will need to re-login again to make this change take effect.


### Start Penpot ###

As first step you will need to obtain the `docker-compose.yaml`
file. You can create it from scratch or start with the [default
one][2] from penpot repository:

[2]: https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml

```bash
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/config.env
```

The configuration is defined using environment variables in the
`config.env` file and the downloaded file already comes with the
essential variables already set and other commented with appropriate
comments.

```bash
docker compose -p penpot -f docker-compose.yaml up -d
```

This will start listening on http://localhost:9001


### Configuration ###

If you started the application without configuring SMTP, you probably
need to create a user in order be able login into the application. You
can create an additional, already activated user using this command:

```bash
docker exec -ti penpot-penpot-backend-1 ./manage.sh create-profile
```

**NOTE:** take care that the `penpot-penpot-backend-1` name depends of
many factors, per example you may using docker-compose v1 or v2; you
can look for exact name executing the `docker ps`.

For more advanced setups, look a the [Configuration][3] section.

[3]: /technical-guide/configuration/


### Update Penpot ###

To get the latest version of Penpot in your local installation, you just
need to execute:

```bash
docker-compose -f docker-compose.yaml pull
```

This will fetch the latest images. When you do docker-compose up
again, the containers will be recreated with the latest version.
