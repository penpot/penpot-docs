---
title: 1. Getting Started.
---

# Getting Started #

This section details everything you need to know to get Penpot up and
running in production environments. Although it can be installed in
many ways, the recommended approach is using **docker** and
**docker-compose**.


## Install Docker ##

**Skip this section if you already have docker installed, up and running.**


Probably the best approach to install docker is following the official docker
installation guide: https://docs.docker.com/engine/install/



Optionally, after installing docker, you can tweak your sistem for
avoid constanly using of **sudo**. The easy, single step way is
executong the following command that will add the current user to the
docker group:

```bash
sudo usermod -aG docker $USER
```

*NOTE*: probably you will need to re-login again to make this change take effect.


For more advanced setup, docker already has a guide for [rootless docker][1]

[1]: https://docs.docker.com/engine/security/rootless/



## Start Penpot ##

As first step you will need to obtain the `docker-compose.yaml`
file. You can create it from scratch or start with the [default
one][2] from penpot repository:

[2]: https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml

```bash
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
```

The default compose file has all essential configuration variables
already set and they are pretty auto-explained. So we can proceed starting
the application without touching anything:

```bash
docker-compose -p penpot -f docker-compose.yaml up -d
```

This will start listening on http://localhost:9001


## Configuration ##

If you started the application without configuring SMTP, you probably
need to create a user in order be able login into the application. You
can create an additional, already activated user using this command:

```bash
docker exec -ti penpot_penpot-backend_1 ./manage.sh create-profile
```

In general, the application is ready to be used without email
configuration; for example when no smtp configuration is found you
should be able to change the user email (in profile section) without
the email validation step.

For more advanced setups, look a the [Configuration][3] section.

[3]: /technical-guide/configuration/

