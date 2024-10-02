---
layout: layouts/plugins-no-sidebar.njk
---

# Beta changelog

### <g-emoji class="g-emoji" alias="boom" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f680.png"><img class="emoji" alt="boom" height="20" width="20" src="https://github.githubassets.com/images/icons/emoji/unicode/1f680.png"></g-emoji> Epics and highlights</code>
- This marks the release of version 1.0, and from this point forward, we’ll do our best to avoid making any more breaking changes (or make deprecations backward compatible).
- We’ve redone the documentation. You can check the API here:
[https://penpot-plugins-api-doc.pages.dev/](https://penpot-plugins-api-doc.pages.dev/)
- New samples repository with lots of samples to use the API:
[https://github.com/penpot/penpot-plugins-samples](https://github.com/penpot/penpot-plugins-samples)

### <g-emoji class="g-emoji" alias="boom" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f4a5.png"><img class="emoji" alt="boom" height="20" width="20" src="https://github.githubassets.com/images/icons/emoji/unicode/1f4a5.png"></g-emoji> Breaking changes & Deprecations

- Changed types names to remove the Penpot prefix. So for example: `PenpotShape` becomes `Shape`; `PenpotFile` becomes `File`, and so on. Check the [API documentation](https://penpot-plugins-api-doc.pages.dev/) for more details.
- Changes on the `penpot.on` and `penpot.off` methods.
Previously you had to send the original callback to the off method in order to remove an event listener. Now, `penpot.on` will return an *id* that you can pass to the `penpot.off` method in order to remove the listener.

Previously:
```
penpot.on(‘pagechange’, myListener); // Register an event listener
penpot.off(‘pagechange’, myListener); // Remove previously registered listener
```

Now:
```
const id = penpot.on(‘pagechange’, myListener);
penpot.off(id);
```

We’ve deprecated the old behavior in favor of the new one, this means that the behavior will work in the next version, but will be removed further down the line.

- Change some names to better align with the names in Penpot's UI.
  - type `frame` is now `board`:
    - `PenpotFrame` is now `Board`
    - `penpot.createFrame` changed to `penpot.createBoard`
    - `shape.frameX` / `shape.frameY` changed to `shape.boardX` / `shape.boardY`
    - `PenpotFrameGuideX` now `GuideX`
  - type `rect` is `rectangle`
    - `PenpotRectangle` is now `Rectangle`
  - type `circle` is `ellipse`
    - `PenpotCircle` is now `Ellipse`
    - `penpot.createCircle` changed to `penpot.createEllipse`
  - type `bool` is `boolean`
    - `PenpotBool` is now `Boolean`
- Removed the following methods
  - `getPage`, you can use now the property `currentPage`
  - `getFile`, you can use now the property `currentFile`
  - `getTheme`, you can use now the property `theme`
  - `getSelected`, you can use the property `selection`
  - `getSelectedShapes`, you can use the property `selection`

### <g-emoji class="g-emoji" alias="sparkles" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2728.png"><img class="emoji" alt="sparkles" height="20" width="20" src="https://github.githubassets.com/images/icons/emoji/unicode/2728.png"></g-emoji> New features

- Support for comments
- Support for export files
- Support for undo blocks
- Support for ruler guides
- Support for prototype functionality access
- New geometry utils:
  - shape.bounds
  - shape.center
- New events
  - contentsave
  - shapechange
- Adds property file.pages
- Adds parent reference to shape
- Add root shape reference to page
- Add detach shape to component method
- Adds method to createPage and openPage
- Adds shape.visible property
- Adds method penpot.viewport.zoomToShapes to change the viewport to the shapes.
