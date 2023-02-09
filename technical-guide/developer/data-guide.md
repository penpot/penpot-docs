---
title: 3.7. Data Guide
---

# Data Guide

The data structures are one of the most complex and important parts of Penpot.
It's critical that the data integrity is always maintained throughout the whole
usage, and also file exports & imports and data model evolution.

To modify the data structure (the most typical case will be to add a new attribute
to the shapes), this list must be checked. This is not an exhaustive list, but
all of this is important in general.

## General considerations

  * We prefer that the page and shape attributes are optional. I.E. there is a
    default object behavior, that occurs when the attribute is not present, and
    its presence activates some feature (example: if there is no `fill-color`,
    the shape is not filled). When you revert to the default state, it's better
    to remove the attribute than leaving it with null value. There are some
    process (for example import & export) that filter out and remove all
    attributes that are null.

  * So never expect that attribute with null value is a different state that
    without the attribute.

  * In objects attribute names we don't use special symbols that are allowed by
    Clojure (for example ending it with ? for boolean values), because this may
    cause problems when exporting.

## Specs and shapes creation

```
▾ common/
  ▾ src/app/common/
    ▾ pages/
        helpers.cljc
        init.cljc
        spec.cljc
```

  * In `spec.cljc` we have Clojure specs to validate the syntactic structure of
    objects inside a page.

  * In `init.cljc` are the default values for newly created objects.

  * And in `helpers.cljc` there are functions to help managing objects and
    doing transformations to them.

  * We are currently in process of refactoring this into
    `common/src/app/common/types` module, with a more Abstract Data Type
    oriented style.


## Data migrations

```
▾ common/
  ▾ src/app/common/
    ▾ pages/
        common.cljc
        migrations.cljc
```

When changing the model it's essential to take into account that the existing
Penpot files must keep working without changes. If you follow the general
considerations stated above, usually this is automatic, since the objects
already in the database just have the default behavior, that should be the same
as before the change. And the new features apply to new or edited objects.

But if this is not possible and we are talking of a breaking change, you can
write a data migration. Just define a new data version and a migration script
in `migrations.cljc` and increment `file-version` in `common.cljc`.

From then on, every time a file is loaded from the database, if its version
number is lower than the current version in the app, the file data will be
handled to all the needed migration functions. If you later modify and save
the file, it will be now updated in database.


## Shape edit forms

![Sidebar edit form](/img/sidebar-form.png)

```
▾ frontend/
  ▾ src/
    ▾ app/
      ▾ main/
        ▾ ui/
          ▾ workspace/
            ▾ sidebar/
              ▾ options/
                ▸ menus/
                ▸ rows/
                ▾ shapes/
                    bool.cljs
                    circle.cljs
                    frame.cljs
                    group.cljs
                    image.cljs
                    multiple.cljs
                    path.cljs
                    rect.cljs
                    svg_raw.cljs
                    text.cljs
```

  * In `shapes/*.cljs` there are the components that show the edit menu of each
    shape type.

  * In `menus/*.cljs` there are the building blocks of these menus.

  * And in `rows/*.cljs` there are some pieces, for example color input and
    picker.


## Multiple edit

When modifying the shape edit forms, you must take into account that these
forms may edit several shapes at the same time, even of different types.

When more than one shape is selected, the form inside `multiple.cljs` is used.
At the top of this module, a couple of maps define what attributes may be edited
and how, for each type of shape.

Then, the blocks in `menus/*.cljs` are used, but they are not given a shape, but
a values map. For each attribute, if all shapes have the same value, it is taken;
if not, the attribute will have the value `:multiple`.

The form blocks must be prepared for this value, display something useful to
the user in this case, and do a meaningful action when changing the value.
Usually this will be to set the attribute to a fixed value in all selected
shapes, but **only** those that may have the attribute (for example, only text
shapes have font attributes, or only rects has border radius).


## Component synchronization

```
▾ common/
  ▾ src/app/common/
    ▾ pages/
        common.cljc
```

For all shape attributes, you must take into account what happens when a
component is created, the attribute changed and then the component syncronized.

In `common.cljc` there is a structure that maps shape attributes to sync
groups. When an attribute is changed, the group will be marked as *touched* in
the shape, and when syncing all the attributes in the group will be copied.

Any attribute that is not in this map will be ignored in synchronizations.


## Export & import

```
▾ frontend/
  ▾ src/
    ▾ app/
      ▾ main/
        ▾ ui/
          ▾ shapes/
            ▸ text/
              attrs.cljs
              bool.cljs
              circle.cljs
              custom_stroke.cljs
              embed.cljs
              export.cljs
              fill_image.cljs
              filters.cljs
              frame.cljs
              gradients.cljs
              group.cljs
              image.cljs
              mask.cljs
              path.cljs
              rect.cljs
              shape.cljs
              svg_defs.cljs
              svg_raw.cljs
              text.cljs
      ▾ util/
          parser.cljs
```

To export a penpot file, basically we use the same system that is used to
display shapes in the workspace or viewer. In `shapes/*.cljs` there are
components that render one shape of each type into a SVG node.

But to be able to import the file later, some attributes that not match
directly to SVG properties need to be added as metadata (for example,
proportion locks, constraints, stroke alignment...). This is done in the
`exports.cljs` module.

Finally, to import a file, we make use of `parser.cljs`, a module that
contains the `parse-data` function. It receives a SVG node (possibly with
children) and converts it into a Penpot shape object. There are auxiliary
functions to read and convert each group of attributes, from the node 
properties or the metadata (with the `get-meta` function).

Any attribute that is not included in the export and import functions
will not be exported and will be lost if reimporting the file again.


## Code handoff

```
▾ frontend/
  ▾ src/
    ▾ app/
      ▾ main/
        ▾ ui/
          ▾ viewer/
            ▾ handoff/
              ▾ attributes/
                  blur.cljs
                  common.cljs
                  fill.cljs
                  image.cljs
                  layout.cljs
                  shadow.cljs
                  stroke.cljs
                  svg.cljs
                  text.cljs
                attributes.cljs
                code.cljs
      ▾ util/
          code_gen.cljs
```

In the code handoff view we have two modes:

![Handoff info](/img/handoff-info.png)

For the Info tab, the `attributes.cljs` module and all modules under
`attributes/*.cljs` have the components that extracts the attributes to hand
off of each type of shape.

![Handoff code](/img/handoff-code.png)

For the Code tab, the `code.cljs` module is in charge. For markup code
(currently only SVG mode) it simply takes the SVG nodes from the viewer main
viewport and prettily formats it.

For the style code (currently only CSS), the `code_gen.cljs` module has the
functions that convert the shape to CSS atributes.

