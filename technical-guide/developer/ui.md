---
title: 3.9. UI Guide
---

# UI Guide

These are the guidelines for developing UI in Penpot, including the design system.

## React & Rumext

The UI in Penpot uses React v18 , with the help of [rumext](https://github.com/funcool/rumext) for providing Clojure bindings. See [Rumext's User Guide](https://funcool.github.io/rumext/latest/user-guide.html) to learn how to create React components with Clojure.

## General guidelines

We want to hold our UI code to the same quality standards of the rest of the codebase. In practice, this means:

- UI components should be easy to maintain over time, especially because our design system is ever-changing.
- UI components should be accessible, and use the relevant HTML elements and/or Aria roles when applicable.
- We need to apply the rules for good software design:
  - The code should adhere to common patterns.
  - UI components should offer an ergonomic "API" (i.e. props).
  - UI components should favor composability.
  - Try to have loose coupling.

### Composability

**Composability is a common pattern** in the Web. We can see it in the standard HTML elements, which are made to be nested one inside another to craft more complex content. Standard Web components also offer slots to make composability more flexible.

<mark>Our UI components must be composable</mark>. In React, this is achieved via the `children` prop, in addition to pass slotted components via regular props.

#### Use of `children`

> **⚠️ NOTE**: Avoid manipulating `children` in your component. See [React docs](https://react.dev/reference/react/Children#alternatives) about the topic.

✅ **DO: Use children when we need to enable composing**

```clojure
(mf/defc primary-button*
  {::mf/props :obj}
  [{:keys [children] :rest props}]
  [:> "button" props children])
```

❓**Why?**

By using children, we are signaling the users of the component that they can put things _inside_, vs a regular prop that only works with text, etc. For example, it’s obvious that we can do things like this:

```clojure
[:> button* {}
  [:*
   "Subscribe for "
   [:& money-amount {:currency "EUR" amount: 3000}]]]
```

#### Use of slotted props

When we need to either:

- Inject multiple (and separate) groups of elements.
- Manipulate the provided components to add, remove, filter them, etc.

Instead of `children`, we can pass the component(s) via a regular a prop.

#### When _not_ to pass a component via a prop

It's about **ownership**. By allowing the passing of a full component, the responsibility of styling and handling the events of that component belong to whoever instantiated that component and passed it to another one.

For instance, here the user would be in total control of the `icon` component for styling (and for choosing which component to use as an icon, be it another React component, or a plain SVG, etc.)

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [icon children] :rest props}]
  [:> "button" props
     icon
     children])
```

However, we might want to control the aspect of the icons, or limit which icons are available for this component, or choose which specific React component should be used. In this case, instead of passing the component via a prop, we'd want to provide the data we need for the icon component to be instantiated:

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [icon children] :rest props}]
  (assert (or (nil? icon) (contains? valid-icon-list icon) "expected valid icon id"))
  [:> "button" props
    (when icon [:> icon* {:id icon :size "m"}])
    children])
```

### Our components should have a clear responsibility

It's important we are aware of:

- What are the **boundaries** of our component (i.e. what it can and cannot do)
  - Like in regular programming, it's good to keep all the inner elements at the same level of abstraction.
  - If a component grows too big, we can split it in several ones. Note that we can mark components as private with the `::mf/private true` meta tag.
- Which component is **responsible for what**.

As a rule of thumb:

- Components own the stuff they instantiate themselves.
- Slotted components or `children` belong to the place they have been instantiated.

This ownership materializes in other areas, like **styles**. For instance, parent components are usually reponsible for placing their children into a layout. Or, as mentioned earlier, we should avoid manipulating the styles of a component we don't have ownership over.

## Styling components

We use **CSS modules** and **Sass** to style components. Use the `(stl/css)` and `(stl/css-case)` functions to generate the class names for the CSS modules.

### Allow passing a class name

Our components should allow some customization by whoever is instantiating them. This is useful for positioning elements in a layout, providing CSS properties, etc.

This is achieved by accepting a `class` prop (equivalent to `className` in JSX). Then, we need to join the class name we have received as a prop with our own class name for CSS modules.

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [children class] :rest props}]
  (let [class (dm/str class " " (stl/css :primary-button))
    props (mf/spread-props props {:class class})]
    [:> "button" props children]))
```

### About nested selectors

Nested styles for DOM elements that are not instantiated by our component should be avoided. Otherwise, we would be leaking CSS out of the component scope, which can lead to hard-to-maintain code.

❌ **AVOID: Styling elements that don’t belong to the component**

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [children] :rest props}]
  (let  [props (mf/spread-props props {:class (stl/css :primary-button)})]
    ;; note that we are NOT instantiating a <svg> here.
    [:> "button" props children]))

;; later in code
[:> button* {}
  [:> icon {:id "foo"}]
  "Lorem ipsum"]
```

```scss
.button {
  // ...
  svg {
    fill: var(--icon-color);
  }
}
```

✅ **DO: Take ownership of instantiating the component we need to style**

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [icon children class] :rest props}]
  (let [props (mf/spread-props props {:class (stl/css :button)})]
    [:> "button" props
     (when icon [:> icon* {:id icon :size "m"}])
     [:span {:class (stl/css :label-wrapper)} children]]))

;; later in code
[:> button* {:icon "foo"} "Lorem ipsum"]
```

```scss
.button {
  // ...
}

.icon {
  fill: var(--icon-color);
}
```

### Favor lower specificity

This helps with maintanibility, since lower [specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity) styles are easier to override.

Remember that nesting selector increases specificity, and it's usually not needed. However, pseudo-classes and pseudo-elements don't.

❌ **AVOID: Using a not-needed high specificity**

```scss
.btn {
  // ...
  .icon {
    fill: var(--icon-color);
  }
}
```

✅ **DO: Choose selectors with low specificity**

```scss
.btn {
  // ...
}

.icon {
  fill: var(--icon-color);
}
```

## Accessibility

### Let the browser do the heavy lifting

Whenever possible, leverage HTML semantic elements, which have been implemented by browsers and are accessible out of the box.

This includes:

- Using `<a>` for link (navigation, downloading files, sending e-mails via `mailto:`, etc.)
- Using `<button>` for triggering actions (submitting a form, closing a modal, selecting a tool, etc.)
- Using the proper heading level.
- Etc.

Also, elements **should be focusable** with keyboard. Pay attention to `tabindex` and the use of focus.

### Aria roles

If you cannot use a native element because of styling (like a `<select>` for a dropdown menu), consider either adding one that is hidden (except for assistive software) or use relevant [aria roles](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Roles) in your custom markup.

When using images as icons, they should have an `aria-label`, `alt`, or similar if they are not decorative and there's no text around to tag the button. Think, for instance, of a generic toolbar without text labels, just icon buttons.

For decorative images, they don't need to be anounced to assistive devices and should have `aria-hidden` set to `true`.

## Clojure / Rumext implementation notes

Please refer to the [Rumext User Guide](https://funcool.github.io/rumext/latest/user-guide.html) for important information, like naming conventions, available functions and macros, transformations done to props, etc.

Some things to have in mind:

- When you want to use JavaScript props, use the meta `{::mf/props :obj}`. In this case, avoid using `?` for boolean props, since they don't get a clean translation to JavaScript.
- You can use type hints such as `^boolean` to get JS semantics.
- Split big components into smaller ones. You can mark components as private with the `::mf/private true` meta.

### Delegating props

There is a mechanism to [delegate props](https://react.dev/learn/passing-props-to-a-component#forwarding-props-with-the-jsx-spread-syntax) equivalent to this:

```jsx
const Button => ({children, ...other}) {
  return <button {...other}>{children}</button>
};
```

We just need to use `:rest ` when declaring the component props.

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [children] :rest other}]
  [:> "button" other children])
```

If we need to augment this props object, we can use `spread-props` and the usual transformations that Rumext does (like `class` -> `className`, for instance) will be applied too.

```clojure
(mf/defc button*
  {::mf/props :obj}
  [{:keys [children class] :rest props}]
  (let [class (dm/str class " " (stl/css :button))
        props (mf/spread-props props {:class class})]
    [:> "button" props children]))
```

### Performance considerations

For components that belong to the “hot path” of rendering (like those in the sidebar, for instance), it’s worth avoiding some pitfalls that make rendering slower and/or will trigger a re-render.

Most of this techniques revolve around achieving one of these:

- Avoid creating brand new objects and functions in each render.
- Avoid needlessly operations that can be costly.
- Avoid a re-render.

#### Use of a JS object as props

It's faster to use a JS Object for props instead of a native Clojure map, because then that conversion will not happen in runtime in each re-render.

✅ **DO: Use the metadata `::mf/props :obj` when creating a component**

```clojure
(mf/defc icon*
  {::mf/props :obj}
  [props]
  ;; ...
  )
```

#### Split large and complex components into smaller parts

This can help to avoid full re-renders.

#### Avoid creating anonymous functions as callback handlers, etc.

This creates a brand new function every render. Instead, create the function on its own and memoize it when needed.

❌ **AVOID: Creating anonymous functions for handlers**

```clojure
(mf/defc login-button {::mf/props obj} []
  [:button {:on-click (fn []
    ;; emit event to login, etc.
    )}
   "Login"])
```

✅ **DO: Use named functions as callback handlers**

```clojure
(defn- login []
 ;; ...
 )

(mf/defc login-button
  {::mf/props :obj}
  []
  [:button {:on-click login} "Login"])

```

#### Avoid defining functions inside of a component (via `let`)

When we do this inside of a component, a brand new function is created in every render.

❌ \*\*AVOID: Using `let` to define functions

```clojure
(mf/defc login-button
  {::mf/props :obj}
  []
  (let [click-handler (fn []
                       ;; ...
                       )]
    [:button {:on-click click-handler} "Login"]))
```

✅ **DO: Define functions outside of the component**

```clojure
(defn- login []
 ;; ...
 )

(mf/defc login-button
  {::mf/props :obj}
  []
  [:button {:on-click login} "Login"])
```

#### Avoid defining functions with `partial` inside of components

`partial` returns a brand new anonymous function, so we should avoid using it in each render. For callback handlers that need parameters, a work around is to store these as `data-*` attributes and retrieve them inside the function.

❌ **AVOID: Using `partial` inside of a component**

```clojure
(defn- set-margin [side value]
  ;; ...
  )

(mf/defc margins []
  [:*
    [:> numeric-input* {:on-change (partial set-margin :left)}]
    [:> numeric-input* {:on-change (partial set-margin :right)}] ])
```

✅ **DO: Use `data-*` attributes to modify a function (many uses)**

```clojure
(defn- set-margin [value event]
  (let [side -> (dom/get-current-target event)
                (dom/get-data "side")
                (keyword)]
    ;; ...
)

(defc margins []
  [:*
    [:> numeric-input* {:data-side "left" :on-change set-margin}]
    [:> numeric-input* {:data-side "right" :on-change set-margin}]
    [:> numeric-input* {:data-side "top" :on-change set-margin}]
    [:> numeric-input* {:data-side "bottom" :on-change set-margin}]])

```

✅ **DO: Store the returned function from `partial` (few uses)**

```clojure
(defn- set-padding [sides value]
  ;; ...
  )

(def set-block-padding (partial set-padding :block))
(def set-inline-padding (partial set-padding :inline))

(defc paddings []
  [:*
    [:> numeric-input* {:on-change set-block-padding}]
    [:> numeric-input* {:on-change set-inline-padding}]])
```

#### Store values you need to use multiple times

Often we need to access values from props. It's best if we destructure them (because it can be costly, especially if this adds up and we need to access them multiple times) and store them in variables.

##### Destructuring props

✅ **DO: Destructure props with `:keys`**

```clojure
(defc icon
  {::mf/props :obj}
  [{:keys [size img] :as props]
  [:svg {:width size
         :height size
         :class (stl/css-case icon true
                              icon-large (> size 16))}
    [:use {:href img}]])
```

❌ **AVOID: Accessing the object each time**

```clojure
(defc icon
  {::mf/props :obj}
  [props]
  [:svg {:width (unchecked-get props "size")
         :height (unchecked-get props "size")
         :class (stl/css-case icon true
                              icon-large (> (unchecked-get props "size") 16))}
    [:use {:href (unchecked-get props "img")}]])
```

##### Storing state values

We can avoid multiple calls to `(deref)` if we store the value in a variable.

✅ **DO: store state values**

```clojure
(defc accordion
  {::mf/props :obj}
  [{:keys [^boolean default-open title children] :as props]

  (let [
    open* (mf/use-state default-open)
    open? (deref open*)]
    [:details {:open open?}
      [:summary title]
      children]))
```

##### Unroll loops

Creating an array of static elements and iterating over it to generate DOM may be more costly than manually unrolling the loop.

❌ **AVOID: iterating over a static array**

```clojure
(defc shape-toolbar []
  (let tools ["rect" "circle" "text"]
    (for tool tools [:> tool-button {:tool tool}])))
```

✅ **DO: unroll the loop**

```clojure
(defc shape-toolbar []
  [:*
    [:> tool-button {:tool "rect"}]
    [:> tool-button {:tool "circle"}]
    [:> tool-button {:tool "text"}]])
```

## Penpot Design System

Penpot has started to use a **design system**, which is located at `frontend/src/app/main/ui/ds`. The components of the design system is published in a Storybook at [hourly.penpot.dev/storybook/](https://hourly.penpot.dev/storybook/) with the contents of the `develop` branch of the repository.

==When a UI component is **available in the design system**, use it!!==. If it's not available but it's part of the Design System (ask the design folks if you are unsure), then do add it to the design system and Storybook.

### Tokens

We use three **levels of tokens**:

- **Primary** tokens, referring to raw values (i.e. pixels, hex colors, etc.) of color, sizes, borders, etc. These are implemented as Sass variables. Examples are: `$mint-250`, `$sz-16`, `$br-circle`, etc.

- **Semantic** tokens, used mainly for theming. These are implemented with **CSS custom properties**. Depending on the theme, these semantic tokens would have different primary tokens as values. For instance, `--color-accent-primary` is `$purple-700` when the light theme is active, but `$mint-150` in the default theme. These custom properties have **global scope**.

- **Component** tokens, defined at component level as **CSS custom properties**. These are very useful when implementing variants. Examples include `--button-bg-color` or `--toast-icon-color`. These custom properties are constrained to the **local scope** of its component.

### Implementing variants

We can leverage component tokens to easily implement variants, by overriding their values in each component variant.

For instance, this is how we handle the styles of `<Toast>`, which have a different style depending on the level of the message (default, info, error, etc.)

```scss
.toast {
  // common styles for all toasts
  // ...

  --toast-bg-color: var(--color-background-primary);
  --toast-icon-color: var(--color-foreground-secondary);
  // ... more variables here

  background-color: var(--toast-bg-color);
}

.toast-icon {
  color: var(--toast-bg-color);
}

.toast-info {
  --toast-bg-color: var(--color-background-info);
  --toast-icon-color: var(--color-accent-info);
  // ... override more variables here
}

.toast-error {
  --toast-bg-color: var(--color-background-error);
  --toast-icon-color: var(--color-accent-error);
  // ... override more variables here
}

// ... more variants here
```

### Using icons and SVG assets

Please refer to the Storybook [documentation for icons](https://hourly.penpot.dev/storybook/?path=/docs/foundations-assets-icon--docs) and other [SVG assets](https://hourly.penpot.dev/storybook/?path=/docs/foundations-assets-rawsvg--docs) (logos, illustrations, etc.).
