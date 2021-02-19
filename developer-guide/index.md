---
title: Developer guide
eleventyNavigation:
  key: Developer guide
  order: 3
---

# Developer guide

This documentation intends to explain how to get penpot application and run it
locally, to test it or make changes to it.

> If you only want to run it or change external parts, the simplest approach is
to use the official docker image, as explained below.

> If you want to modify the core application, see instead the
[Development Environment guide](../core_developer/development-environment).


## Install Docker ##

Skip this section if you already have docker installed, up and running.

You can install docker and its dependencies from your distribution repository
with:

```bash
sudo apt-get install docker docker-compose
```

Or follow installation instructions from docker.com; (for Debian
https://docs.docker.com/engine/install/debian/).

Ensure that the docker is started and optionally enable it to start with the
system:

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

And finally, add your user to the docker group:

```bash
sudo usermod -aG docker $USER
```

This will make use of the docker without `sudo` command all the time.

NOTE: probably you will need to re-login again to make this change take effect.


## Start penpot application ##

You can create it from scratch or take a base from the [penpot repository][1]

[1]: https://raw.githubusercontent.com/penpot/penpot/develop/docker/images/docker-compose.yaml

```bash
wget https://raw.githubusercontent.com/penpot/penpot/develop/docker/images/docker-compose.yaml
```

And then:

```bash
docker-compose -p penpot -f docker-compose.yaml up
```

The docker compose file contains the essential configuration for getting the
application running, and many essential configurations already explained in the
comments. All other configuration options are explained in the [Configuration
guide](../configuration).
