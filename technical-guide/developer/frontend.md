---
title: 3.5. Frontend Guide
---

# Frontend Guide

This guide intends to explain the essential details of the frontend
application.

## Icons & Assets

The icons used on the frontend application are loaded using svgsprite
(properly handled by the gulp watch task). All icons should be in SVG
format located in `resources/images/icons`. The gulp task will
generate the sprite and the embed it into the `index.html` file.

Then, you can reference the icon from the sprite using the
`app.builtins.icons/icon-xref` macro:

```clojure
(ns some.namespace
  (:require-macros [app.main.ui.icons :refer [icon-xref]]))

(icon-xref :arrow)
```

For performance reasons, all used icons are statically defined in the
`src/app/main/ui/icons.cljs` file.

## Logging, Tracing & Debugging

### Logging framework

To trace and debug the execution of the code, one method is to enable the log
traces that currently are in the code using the [Logging
framework](/technical-guide/developer/common/#system-logging). You can edit a
module and set a lower log level, to see more traces in console. Search for
this kind of line and change to `:info` or `:debug`:

```clojure
(ns some.ns
  (:require [app.util.logging :as log]))

(log/set-level! :info)
```

Or you can change it live with the debug utility (see below):

```javascript
debug.set_logging("namespace", "level");
```

### Temporary traces

Of course, you have the traditional way of inserting temporary traces inside
the code to output data to the devtools console. There are several ways of
doing this.

#### Use clojurescript helper `prn`

This helper automatically formats the clojure and js data structures as plain
[EDN](https://clojuredocs.org/clojure.edn) for visual inspection and to know
the exact type of the data.

```clojure
(prn "message" expression)
```

![prn example](/img/traces1.png)

#### Use `pprint` function

We have set up a wrapper over [fipp](https://github.com/brandonbloom/fipp)
`pprint` function, that gives a human-readable formatting to the data, useful
for easy understanding of larger data structures.

The wrapper allows to easily specify `level`, `length` and `width` parameters,
with reasonable defaults, to control the depth level of objects to print, the
number of attributes to show and the display width.

```clojure
(:require [app.common.pprint :refer [pprint]])

;; On the code
(pprint shape {:level 2
               :length 21
               :width 30})
```

![pprint example](/img/traces2.png)

#### Use the js native functions

The `clj->js` function converts the clojure data structure into a javacript
object, interactively inspectable in the devtools.console.

```clojure
(js/console.log "message" (clj->js expression))
```

![clj->js example](/img/traces3.png)

### Breakpoints

You can insert standard javascript debugger breakpoints in the code, with this
function:

```clojure
(js-debugger)
```

The Clojurescript environment generates source maps to trace your code step by
step and inspect variable values. You may also insert breakpoints from the
sources tab, like when you debug javascript code.

One way of locating a source file is to output a trace with `(js/console.log)`
and then clicking in the source link that shows in the console at the right
of the trace.

### Access to clojure from js console

The penpot namespace of the main application is exported, so that is
accessible from javascript console in Chrome developer tools. Object
names and data types are converted to javascript style. For example
you can emit the event to reset zoom level by typing this at the
console (there is autocompletion for help):

```javascript
app.main.store.emit_BANG_(app.main.data.workspace.reset_zoom);
```

### Debug utility

We have defined, at `src/debug.cljs`, a `debug` namespace with many functions
easily accesible from devtools console.

#### Change log level

You can change the [log level](/technical-guide/developer/common/#system-logging)
of one namespace without reloading the page:

```javascript
debug.set_logging("namespace", "level");
```

#### Dump state and objects

There are some functions to inspect the global state or parts of it:

```javascript
// print the whole global state
debug.dump_state();

// print the latest events in the global stream
debug.dump_buffer();

// print a key of the global state
debug.get_state(":workspace-data :pages 0");

// print the objects list of the current page
debug.dump_objects();

// print a single object by name
debug.dump_object("Rect-1");

// print the currently selected objects
debug.dump_selected();

// print all objects in the current page and local library components.
// Objects are displayed as a tree in the same order of the
// layers tree, and also links to components are shown.
debug.dump_tree();

// This last one has two optional flags. The first one displays the
// object ids, and the second one the {touched} state.
debug.dump_tree(true, true);
```

And a bunch of other utilities (see the file for more).

## Workspace visual debug

Debugging a problem in the viewport algorithms for grouping and
rotating is difficult. We have set a visual debug mode that displays
some annotations on screen, to help understanding what's happening.
This is also in the `debug` namespace.

To activate it, open the javascript console and type:

```js
debug.toggle_debug("option");
```

Current options are `bounding-boxes`, `group`, `events` and
`rotation-handler`.

You can also activate or deactivate all visual aids with

```js
debug.debug_all();
debug.debug_none();
```

## Translations (I18N)

### How it works

All the translation strings of this application are stored in
standard _gettext_ files in `frontend/translations/*.po`.

They have a self explanatory format that looks like this:

```
#: src/app/main/ui/auth/register.cljs, src/app/main/ui/auth/login.cljs
msgid "auth.create-demo-account"
msgstr "Create demo account"
```

The files are automatically bundled into the `index.html` file on
compile time (in development and production). The bundled content is a
simplified version of this data structure to avoid loading unnecesary
data. The development environment has a watch process that detect
changes on that file and recompiles the `index.html`.

**There are no hot reload for translations strings**, you just need to
refresh the browser tab to refresh the translations in the running the
application.

Finally, when you have finished adding texts, execute the following command
inside the devenv, to reformat the file before commiting the file into the
repository:

```bash
# cd <repo>/frontend
yarn run validate-translations
```

At Penpot core team we maintain manually the english and spanish .po files. All
the others are managed in https://weblate.org.

**When a new language is available in weblate**, to enable it in the application
you need to add it in two places:

```
frontend/src/app/util/i18n.cljs (supported-locales)
frontend/gulpfile.js (const langs)
```

### How to use it

You need to use the `app.util.i18n/tr` function for lookup translation
strings:

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "auth.create-demo-account")
;; => "Create demo account"
```

If you want to insert a variable into a translated text, use `%s` as
placeholder, and then pass the variable value to the `(tr ...)` call.:

```
#: src/app/main/ui/settings/change_email.cljs
msgid "notifications.validation-email-sent"
msgstr "Verification email sent to %s. Check your email!"
```

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "notifications.validation-email-sent" email)
;; => "Verification email sent to test@example.com. Check your email!"
```

If you have defined plurals for some translation resource, then you
need to pass an additional parameter marked as counter in order to
allow the system know when to show the plural:

```
#: src/app/main/ui/dashboard/team.cljs
msgid "labels.num-of-projects"
msgid_plural "labels.num-of-projects"
msgstr[0] "1 project"
msgstr[1] "%s projects"
```

```clojure
(require [app.util.i18n :as i18n :refer [tr]])

(tr "labels.num-of-projects" (i18n/c 10))
;; => "10 projects"

(tr "labels.num-of-projects" (i18n/c 1))
;; => "1 project"
```

## Unit Tests

Unit tests have to be compiled first, and then run with node.

```bash
npx shadow-cljs compile tests && node target/tests.js
```

Or run the watch (that automatically runs the test):

```bash
npx shadow-cljs watch tests
```

## Integration tests

### Setup

To run integration tests locally, follow these steps.

Ensure your development environment docker image is up to date.

1. If it is not up to date, run:

```bash
./manage.sh pull-devenv
```

2. Once the update is complete, start the environment:

```bash
./manage.sh start-devenv
```

**NOTE** You can learn more about how to set up, start and stop our development environment [here](http://localhost:8080/technical-guide/developer/devenv/#getting-started)

### Running the integration tests

1. To run the integration tests, open a new tab in your development environment:

```bash
ctrl+b c
```

2. Go to the frontend folder:

```bash
cd penpot/frontend
```

3. Then, execute the following command:

```bash
yarn e2e:test
```

These tests will use a headless browser and display the results accordingly.

### Running tests with a browser

To access the testing UI, please follow these steps:

1. In a terminal on your host machine, navigate to the frontend folder, then run the next command:

```bash
# cd <repo>/frontend

npx playwright test --ui
```

> ❗**WARNING** It is important to be on the right folder `frontend` of the project or we may have silent errors trying to run the tests.

### How to write a test

#### Page Object Model

When conducting a significant number of tests, encountering repetitive code and common actions is typical.
To address this issue, we recommend leveraging Page Object Models (POM).

Page Object Models allow us to consolidate information into a single class and encapsulate it.

POMs do not necessarily refer to entire pages but can also represent specific regions of a page that are the focus of our tests. For example, we may have a POM for the login form, the footer of a complex page, or the projects section.

In a POM, we define locators for page elements:

```js
class LoginPage extends BasePage {
  constructor(page) {
    super(page)
    this.loginButton = page.getByRole("button", { name: "Login" });
    this.passwordInput = page.getByLabel("Password");
    this.emailInput = page.getByLabel("Email");
  }
  // Other functions and methods...
}
```

These locators are used in assertions as follows:

```js
await expect(loginPage.loginButton).toBeVisible();
```

In addition to locators, POMs also include methods that perform actions on those elements.

We are simulating user actions and events users trigger, so in other to mirror real-world user interactions. To achieve this:

**Use Realistic User Scenarios:** Design test cases that mimic real user scenarios and interactions with the application.

**Simulate User Inputs**: Such as mouse clicks, keyboard inputs, form submissions, or touch gestures, using the testing framework's API. Mimic user interactions as closely as possible to accurately simulate user behavior.

```js
async fillEmailAndPasswordInputs(email, password) {
  await this.emailInput.fill(email);
  await this.passwordInput.fill(password);
}
```

Lastly, POMs can include interception functions necessary to load that section or page. Only include common intercepts in the POM.

```js
async setupLoginSuccess() {
  await this.mockRPC("login-with-password", "logged-in-user/login-with-password-success.json");
}
```

With all these elements, a login test could look like this:

```js
test("User submits a wrong formatted email", async ({ page }) => {
  const loginPage = new LoginPage(page);

  await loginPage.setupLoginSuccess();

  await loginPage.fillEmailAndPasswordInputs("foo", "lorenIpsum");

  await expect(loginPage.errorLoginMessage).toBeVisible();
});
```

#### Mocking

**API calls**

In order to mock API calls we just need to inherit our POM from `BasePage` and then call the method `mockRPC` like this:

```js
export class MyPOM extends BasePage {
  setupMyPOMRPCs() {
    this.mockRPC("rpc/command/name", "json-file-with-fake-response.json")
    // We can use regular expressions to match API calls.
    this.mockRPC(/this\/can\/be\/a\/regex/, "json-file-with-fake-response.json")
    // ...and pass options like `status` or `contentType`.
    this.mockRPC("something/not/found", "json-file-with-fake-response.json", {
      status: 404
    })
  }
}
```

**Websockets**

To test WebSocket communications it is necessary to initialize the `MockWebSocketHelper`. This can be done by inheriting your POM from `BaseWebSocketPage` and then calling the static method `setupWebSockets` on the `beforeEach` test hook like this:

```js
test.beforeEach(async ({ page }) => {
  // ... Other page initialization ...

  // In this case we call `BaseWebSocketPage` but it could be
  // the name of your inherited class.
  await BaseWebSocketPage.setupWebSockets(page)

  // ... Other page initialization ...
})
```

And then you should be able to `await` for a specific WebSocket endpoint with
`waitForWebSocket` or call `waitForNotificationsWebSocket` if you want to mock
the `/ws/notifications` WebSocket.

```js
export class MyPOM extends BaseWebSocketPage {
  // ... Your Page Object Model code
}

test("My test", ({ page }) => {
  const myPOM = new MyPOM(page)

  const ws = await myPOM.waitForNotificationsWebSocket()
  // ^ this is equivalent to:
  // const ws = await myPOM.waitForWebSocket('ws://0.0.0.0:3500/ws/notifications')

  // Simulate the open event of the WebSocket.
  ws.mockOpen()

  // Simulate a message sent from the server.
  ws.mockMessage(data)

  // Simulate the close event of the WebSocket.
  ws.mockClose()
})
```

### Testing best practices

Our best practices are based on [Testing library documentation](https://testing-library.com/docs/).

This is a summary of the most important points to take into account:

#### Query priority

Queries are the methods to find elements on the page.
Your test should simulate as closely as possible the way users interact with the application.
Depending on the content of the page and the element to be selected, we will choose one method or the other following these priorities:

- **Queries Accessible to Everyone**: Queries that simulate the experience of visual users or use assistive technologies.

  1. [`page.getByRole`](https://playwright.dev/docs/locators#locate-by-role): This selector allows us to locate exposed elements in the [accessibility tree](https://developer.mozilla.org/en-US/docs/Glossary/Accessibility_tree).

  2. [`page.getByLabel`](https://playwright.dev/docs/locators#locate-by-label): If we need to query for form fields we prefer this way.

  3. [`page.getByPlaceholder`](https://playwright.dev/docs/locators#locate-by-placeholder): If your form field does not have a label you can use this locator.

  4. [`page.getByText`](https://playwright.dev/docs/locators#locate-by-text): Use this selector to located non-interactionable elements such as div p, or span by its text content.

- **Semantic Queries** -> These selectors comply with HTML5 and ARIA standards. However, it's important to note that the user experience when interacting with these attributes may differ significantly depending on the browser and assistive technology being used.

  1. [`page.byAltText`](https://playwright.dev/docs/locators#locate-by-alt-text): If your element is one which supports alt text (img, area, input, and any custom element), then you can use this to find that element.

  2. [`page.byTitle`](https://playwright.dev/docs/locators#locate-by-title): The title attribute is not consistently read by screen readers, and is not visible by default for sighted users.

- **Test IDs** -> Finally, if none of the previous options is possible, we can choose to locate the element by its TestId. We must keep in mind that this type of locator is not user-oriented.

  1. [`page.getByTestId`](https://playwright.dev/docs/locators#locate-by-test-id): Use this method if you can not locate by role or text.

For our integration tests we use Playwright, you can find more info about this library and the different locators [here](https://playwright.dev/docs/intro).

Simple how-to guide on locating elements for our tests:

Given this DOM structure.
```html
<form>
  <p>Penpot is the free open-...</p>
  <label for="email">
    Email
    <input placeholder="Email" name="email" type="email" id="email" value="" />
  </label>

  <label for="password">
    Password
    <input
      placeholder="Password"
      name="password"
      type="password"
      id="password"
      value=""
    />
  </label>
  <button type="submit">Login</button>
</form>
```
That represent this part of the app.

![Login page](/img/login-locators.webp)

Our first task will be to locate the login button.

![Login Button](/img/login-btn.webp)

Our initial approach involves following the instructions of the first group of locators, **Queries Accessible to Everyone**. To achieve this, we inspect the accessibility tree to gather information.

![Accessibility tree Login Button](/img/a11y-tree-btn.webp)

Having examined the accessibility tree, we identify that the button can be located by its role and name, which is our primary option.

```js
page.getByRole("button", { name: "Login" });
```

For selecting the input within the form, we opt for `getByLabel` as it is the recommended method for locating form inputs with available labels.

![Password input](/img/locate_by_label.webp)

So we can use this in our assertions:

```js
page.getByLabel("Password");
```

In cases where the previous input  does not have a proper label, we can locate it by its placeholder.

```js
page.getByPlaceholder("Password");
```

When we need to locate a text with no specific role, we employ the `getByText` method.

```js
page.getByText("Penpot is the free open-");
```
To locate the rest of the elements we continue exploring the list of queries according to the order of priority. If none of the above options match the item, we resort to `getByTestId` as a last resort.

For example, we use this approach when we try to select a page element within the list of pages in our file.

![Page item](/img/page-item-locator1.webp)

This element has a generic role, no label or placeholder, and no title or alt text.

![Page item accessibility tree information](/img/page-item-locator2.webp)

Moreover, its text may change.

```html
<div data-test="page-name">Page 1</div>
```
In these cases, the only way to locate it is to assign a test id.

```js
page.getByTestId("page-name")
```


#### Assertions

Assertions follow this structure:

```js
expect(query).toBeTruthy();
```

**Keep Assertions Clear and Concise:** Each assertion should verify a single expected behavior or outcome. Avoid combining multiple assertions into a single line to maintain clarity and readability.

**Use Descriptive Assertions:** Use descriptive assertion messages that clearly communicate the purpose of the assertion.

**Preferably choose assertions from the user's point of view:**.

The title exists or is visible.

```js
await expect(
  page.getByRole("heading", { name: "Log into my account" })
).toBeVisible();
```

The url contains a given substring or regex.

```js
await expect(page).toHaveURL(/dashboard/);
```

Avoid asking for something user can not see.

```js
const locator = page.locator(".my-element");
await expect(locator).toBeHidden();
```

**Avoid hard-coded values:** Avoid hard-coding expected values in assertions whenever possible.

In this example we have the error message hard-coded on the test.

```js
test("User submits a wrong formatted email", async ({ page }) => {
  const loginPage = new LoginPage(page);
  const errorMessage = "Enter a valid email please";

  await loginPage.setupLoginSuccess();

  await loginPage.fillEmailAndPasswordInputs("foo", "lorenIpsum");

  await expect(errorMessage).toBeVisible();
});
```

It is preferable to obtain these values from a POM in which all data are encapsulated, stored and can be consulted, used and modified if necessary.

```js
test("User submits a wrong formatted email", async ({ page }) => {
  const loginPage = new LoginPage(page);

  await loginPage.setupLoginSuccess();

  await loginPage.fillEmailAndPasswordInputs("foo", "lorenIpsum");

  await expect(loginPage.errorLoginMessage).toBeVisible();
});
```

**Cover the error state of a page**: Verify that the application handles errors gracefully by asserting the presence of error messages. We do not have to cover all error cases, that will be taken care of by the unit tests.

```js
await expect(
  page.getByRole("alert", { name: "Email or password is incorrect" })
).toBeVisible();
```

**Preferably positive assertions:** Avoid using `expect(query).not.toBeTruthy();`

```js
test("Check if user is not logged in", async () => {
  const loginPage = new LoginPage(page);
  const isLoggedIn = await loginPage.checkUserLoggedIn();

  expect(isLoggedIn).not.toBeTruthy(); // Negative assertion
});
```

Instead, it's better to write tests with positive assertions that explicitly verify the expected behavior. For example, we could rewrite the test to explicitly check if the user is logged out:

```js
test("Check if user is logged out", async () => {
  const loginPage = new LoginPage(page);
  const isLoggedIn = await loginPage.checkUserLoggedIn();

  expect(isLoggedIn).toBeFalsy(); // Positive assertion for user being logged out
});
```

#### Naming tests

**User-Centric Approach:** Tests should be named from the perspective of user actions.

Instead of `testLoginFunctionality`, use `shouldLoginSuccessfully` or `verifyLoginFailureMessage`.

**Descriptive Names:** Test names should be descriptive, clearly indicating the action being tested.

`shouldDisplayErrorMessageOnInvalidCredentials` communicates the expected behavior more effectively than `test1`.

**Clarity and Conciseness:** Keep test names clear and concise, avoiding unnecessary verbosity.

`verifyErrorMessageShownOnInvalidCredentials` is clearer than
`ensureThatAnErrorMessageIsDisplayedWhenIncorrectCredentialsAreEntered`.

**Use Action Verbs:** Start test names with action verbs to denote the action being tested.

`shouldNavigateToLoginPage` or `verifySuccessfulLogout`.
