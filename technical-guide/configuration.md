---
title: 2. Configuration
---

# Configuration #

This section intends to explain all available configuration options.

The main and unique approach to configure penpot application is
using environment variables. All penpot related variables start with
`PENPOT_` prefix.

**NOTE**: All the examples that have values represent the
**default** values, and the examples that do not have values are
optional.


## Common ##

This section will list all common configuration that affects backend
and frontend. If you are using the default docker compose, all the
environment variables will be available for both frontend and backend
at the same time because a single environment file is used:
`config.env`.

There are two types of configuration: options (properties that
requieres some value) and flags (that just enables or disables
something). The `PENPOT_FLAGS` environment variable will have an
ordered list of strings using this format:
`<enable|disable>-<flag-name>`.


### Registration ###

Penpot comes with an option to completely disable the registration
process or restrict it to some domains.

If you want to completelly disable registration, use the following
variable in both fontend & backend:

```bash
PENPOT_FLAGS="$PENPOT_FLAGS disable-registration"
```

You also can restict the registrations to a closed list of domains:

```bash
# comma separated list of domains (backend only)
PENPOT_REGISTRATION_DOMAIN_WHITELIST=""
```


### Demo users ###

Penpot comes with facilities for fast creation of demo users without the need
of a registration process. The demo users by default have an expiration time of
7 days, and once expired they are completly deleted with all the generated
content. Very useful for testing or demostration purposes.

You can enable demo users using the following variable:

```bash
PENPOT_FLAGS="$PENPOT_FLAGS enable-demo-users"
```

### Authentication Providers

#### Callback URI

Insert the following callback URI to your oauth provider (changing <your_domain> and <oauth_provider> according to your setup):

```bash
# General URI
https://<your_domain>/api/auth/oauth/<oauth_provider>/callback

# E.g. Gitlab:
https://<your_domain>/api/auth/oauth/gitlab/callback
```

#### Google

Allows integrating with Google as OAuth provider:

```bash
# Backend & Frontend
PENPOT_GOOGLE_CLIENT_ID=<client-id>

# Backend only:
PENPOT_GOOGLE_CLIENT_SECRET=<client-secret>
```

#### GitLab

Allows integrating with GitLab as OAuth provider:

```bash
# Backend & Frontend
PENPOT_GITLAB_CLIENT_ID=<client-id>

# Backend only
PENPOT_GITLAB_BASE_URI=https://gitlab.com
PENPOT_GITLAB_CLIENT_SECRET=<client-secret>
```

#### GitHub

Allows integrating with GitHub as OAuth provider:

```bash
# Backend & Frontend
PENPOT_GITHUB_CLIENT_ID=<client-id>

# Backend only
PENPOT_GITHUB_CLIENT_SECRET=<client-secret>
```

#### OpenID Connect

**NOTE:** Since version 1.5.0

Allows integrating with a generic authentication provider that implements
the OIDC protocol (usually used for SSO).

All the other options are backend only:

```bash
## Frontend & Backend

PENPOT_OIDC_CLIENT_ID=<client-id>

## Backend only

# Mainly used for auto discovery the openid endpoints
PENPOT_OIDC_BASE_URI=<uri>
PENPOT_OIDC_CLIENT_SECRET=<client-id>

# Optional backend variables, used mainly if you want override; they are
# autodiscovered using the standard openid-connect mechanism.
PENPOT_OIDC_AUTH_URI=<uri>
PENPOT_OIDC_TOKEN_URI=<uri>
PENPOT_OIDC_USER_URI=<uri>

# Optional list of roles that users are required to have. If no role
# is provided, roles checking  disabled.
PENPOT_OIDC_ROLES="role1 role2"

# Attribute to use for lookup roles on the user object. Optional, if
# not provided, the roles checking will be disabled.
PENPOT_OIDC_ROLES_ATTR=
```

Since version 1.6.0:

```bash
# This settings allow overwrite the required scopes, use with caution
# because penpot requres at least `name` and `email` attrs found on the
# user info. Optional, defaults to `openid profile`.
PENPOT_OIDC_SCOPES="scope1 scope2"
```

#### Azure Active Directory using OpenID Connect

Allows integrating with Azure Active Directory as authentication provider:

```bash
# Backend & Frontend
PENPOT_OIDC_CLIENT_ID=<client-id>

## Backend only
PENPOT_OIDC_BASE_URI=https://login.microsoftonline.com/<tenant-id>/v2.0/
PENPOT_OIDC_CLIENT_SECRET=<client-secret>
```

### LDAP ###

Penpot comes with support for *Lightweight Directory Access Protocol*
(LDAP). This is the example configuration we use internally for testing
this authentication backend.

```bash
# Common
PENPOT_FLAGS="$PENPOT_FLAGS enable-login-with-ldap"

# Backend
PENPOT_LDAP_HOST=ldap
PENPOT_LDAP_PORT=10389
PENPOT_LDAP_SSL=false
PENPOT_LDAP_STARTTLS=false
PENPOT_LDAP_BASE_DN=ou=people,dc=planetexpress,dc=com
PENPOT_LDAP_BIND_DN=cn=admin,dc=planetexpress,dc=com
PENPOT_LDAP_BIND_PASSWORD=GoodNewsEveryone
PENPOT_LDAP_ATTRS_USERNAME=uid
PENPOT_LDAP_ATTRS_EMAIL=mail
PENPOT_LDAP_ATTRS_FULLNAME=cn
PENPOT_LDAP_ATTRS_PHOTO=jpegPhoto
```

If you miss something, please open an issue and we discuss it.


## Backend ##

This section enumerates the backend only configuration variables.


### Database

We only support PostgreSQL and we highly recommend >=13 version. If
you are using official docker images this is already solved for you.

Essential database configuration:

```bash
# Backend
PENPOT_DATABASE_USERNAME=penpot
PENPOT_DATABASE_PASSWORD=penpot
PENPOT_DATABASE_URI=postgresql://127.0.0.1/penpot
```

The username and password are optional.


### Email (SMTP)

By default, when no SMTP (email) is configured, the email will be printed to
the console, which means that the emails will be shown in the stdout. If you
have an SMTP service, uncomment the appropiate settings section in
`docker-compose.yml` and configure those environment variables.

Setting up the default FROM and REPLY-TO:

```bash
# Backend
PENPOT_SMTP_DEFAULT_REPLY_TO=Penpot <no-reply@example.com>
PENPOT_SMTP_DEFAULT_FROM=Penpot <no-reply@example.com>
```

Enable SMTP:

```bash
# Backend
PENPOT_FLAGS="$PENPOT_FLAGS enable-smtp"
PENPOT_SMTP_HOST=<host>
PENPOT_SMTP_PORT=587
PENPOT_SMTP_USER=<username>
PENPOT_SMTP_PASSWORD=<password>
PENPOT_SMTP_TLS=true
```


### Storage

Storage refers to storage used for store the user uploaded assets.

Assets storage is implemented using "plugable" backends. Currently
there are three backends available: `db`, `fs` and `s3` (for AWS S3).

#### FS Backend (default) ####

This is the default backend when you use the official docker images and
the default configuration looks like this:

```bash
# Backend
PENPOT_STORAGE_BACKEND=fs
PENPOT_STORAGE_FS_DIRECTORY=/opt/data/assets
```

The main downside of this backend is the hard dependency on nginx
approach to serve files managed by an application (not a simple
directory serving static files). But you should not worry about this
unless you want to install it outside the docker container and
configure the nginx yourself.

In case you want undestand how it internally works, you can take a look
on the [nginx configuration file][1] used in the docker images.

[1]: https://github.com/penpot/penpot/blob/main/docker/images/files/nginx.conf


#### DB Backend ####

This backend stores all the user uploaded assets on the database and
is ideal for small setups when you don't want to worry about backups
apart from the database.

In case you want to use this backend, proceed using the following
environment variable:

```bash
# Backend
PENPOT_STORAGE_BACKEND=db
```


#### AWS S3 Backend ####

This backend uses AWS S3 bucket for store the user uploaded
assets. For use it you should have an appropriate account on AWS cloud
and have the credentials, region and the bucket.

This is how configuration looks for S3 backend:

```bash
# AWS Credentials
AWS_ACCESS_KEY_ID=<you-access-key-id-here>
AWS_SECRET_ACCESS_KEY=<your-secret-access-key-here>

# Backend configuration
PENPOT_STORAGE_BACKEND=s3
PENPOT_STORAGE_S3_REGION=<aws-region>
PENPOT_STORAGE_S3_BUCKET=<bucket-name>
```

Right now, only `eu-central-1` region is supported. If you need
others, open an issue.


### Redis

The redis configuration is very simple, just provide with a valid
redis URI. Redis is used mainly for websocket notifications
coordination.

```bash
# Backend
PENPOT_REDIS_URI=redis://localhost/0
```

If you are using the official docker compose file, this is already
configured.


### HTTP

You can set the port where the backend http server will listen for requests.

```bash
# Backend
PENPOT_HTTP_SERVER_PORT=6060
```

Additionally, you probably will need to set the `PENPOT_PUBLIC_URI`
environment variable in case you go to serve penpot to the users, and
it should point to public URI where users will access the application:

```bash
# Backend
PENPOT_PUBLIC_URI=http://localhost:9001
```

### Server REPL

This is a more advanced setting, because it allows to set a port where the
server REPL will listen. Server REPL is very useful for performing diagnosis,
executing code on the running process, and/or making hotfixes of isolated pure
functions without restarting the process.

The default configuration is:

```bash
PENPOT_SREPL_HOST=127.0.0.1
PENPOT_SREPL_PORT=6062
```

You can connect to the repl using `netcat` or `telnet` in combination
with `rlwrap`. Example:

```bash
$ rlwrap netcat localhost 6062
user=>
```


## Frontend ##

In comparison with backend, frontend only has a small number of runtime
configuration options, and they are located in the `<dist>/js/config.js`
file.

If you are using the official docker images, the best approach to set
any configuration is using environment variables, and the image
automatically generates the `config.js` from them.

**NOTE**: many frontend related configuration variables are explained in the
[Common](#common) section, this section explains **frontend only** options.


### Demo warning ###

If you want to show a warning in the register and login page saying
that this is a demostration purpose instance (no backups, periodical
data wipe, ...), set the following variable:

```bash
# Frontend
PENPOT_FLAGS="$PENPOT_FLAGS enable-demo-warning"
```


## Exporter ##

The exporter application only have a single configuration option and
it can be provided using environment variables in the same way as
backend.


```bash
# Backend & Frontend
PENPOT_PUBLIC_URI=http://public-domain
```

This environment variable indicates where the exporter can access to
the public frontend application (because it uses special pages from it
to render the shapes in the underlying headless web browser).


## Other Flags

- `enable-cors`: Enables the default cors cofiguration that allows all
  domains (this configuration is designed only for dev purposes right
  now).
- `enable-backend-api-docs`: Enables the `/api/_doc` endpoint that
  lists all rpc methods available on backend.
- `enable-insecure-registration`: Enables the insecure process of
  profile registrion deactivating the email verification process (only
  for local or internal setups).
- `disable-secure-session-cookies`: By default, penpot uses the
  `secure` flag on cookies, this flag disables it; it is usefull if
  you have plan to serve penpot under different domain than
  `localhost` without HTTPS.
