---
title: 5.4. API
---

# Penpot plugins API

## Interfaces

### PenpotFile

PenpotFile represents a file in the Penpot application.
It includes properties for the file's identifier, name, and revision number.

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **revn**

    ```javascript
    revn: number
    ```
#### Source: [index.d.ts:5](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L5)

### PenpotPage

PenpotPage represents a page in the Penpot application.
It includes properties for the page's identifier and name, as well as methods for managing shapes on the page.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The  `id`  property is a unique identifier for the page.

* **name**

    ```javascript
    name: string
    ```
    The  `name`  property is the name of the page.

#### Methods
* **getShapeById**

  ```javascript
  getShapeById(id): null | PenpotShape
  ```
  Retrieves a shape by its unique identifier.

  **Parameters:**

    `id` The unique identifier of the shape.

  ```javascript
  id: string
  
  ```
  **Returns:**
`null | PenpotShape`

* **findShapes**

  ```javascript
  findShapes(): PenpotShape[]
  ```
  Finds all shapes on the page.

  **Returns:**
`PenpotShape[]`

#### Source: [index.d.ts:15](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L15)

### PenpotFill

TODO PenpotFill

#### Properties
* **fillColor**

    ```javascript
    fillColor?: string
    ```
* **fillOpacity**

    ```javascript
    fillOpacity?: number
    ```
* **fillColorGradient**

    ```javascript
    fillColorGradient?: PenpotGradient
    ```
* **fillColorRefFile**

    ```javascript
    fillColorRefFile?: string
    ```
* **fillColorRefId**

    ```javascript
    fillColorRefId?: string
    ```
* **fillImage**

    ```javascript
    fillImage?: PenpotImageData
    ```
#### Source: [index.d.ts:63](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L63)

### PenpotStroke

TODO PenpotStroke

#### Properties
* **strokeColor**

    ```javascript
    strokeColor?: string
    ```
* **strokeColorRefFile**

    ```javascript
    strokeColorRefFile?: string
    ```
* **strokeColorRefId**

    ```javascript
    strokeColorRefId?: string
    ```
* **strokeOpacity**

    ```javascript
    strokeOpacity?: number
    ```
* **strokeStyle**

    ```javascript
    strokeStyle?: svg | solid | dotted | dashed | mixed | none
    ```
* **strokeWidth**

    ```javascript
    strokeWidth?: number
    ```
* **strokeAlignment**

    ```javascript
    strokeAlignment?: center | inner | outer
    ```
* **strokeCapStart**

    ```javascript
    strokeCapStart?: PenpotStrokeCap
    ```
* **strokeCapEnd**

    ```javascript
    strokeCapEnd?: PenpotStrokeCap
    ```
* **strokeColorGradient**

    ```javascript
    strokeColorGradient?: PenpotGradient
    ```
#### Source: [index.d.ts:88](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L88)

### PenpotColor

TODO PenpotColor

#### Properties
* **id**

    ```javascript
    id?: string
    ```
* **name**

    ```javascript
    name?: string
    ```
* **path**

    ```javascript
    path?: string
    ```
* **color**

    ```javascript
    color?: string
    ```
* **opacity**

    ```javascript
    opacity?: number
    ```
* **refId**

    ```javascript
    refId?: string
    ```
* **refFile**

    ```javascript
    refFile?: string
    ```
* **gradient**

    ```javascript
    gradient?: PenpotGradient
    ```
* **image**

    ```javascript
    image?: PenpotImageData
    ```
#### Source: [index.d.ts:104](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L104)

### PenpotShadow

TODO PenpotShadow

#### Properties
* **id**

    ```javascript
    id?: string
    ```
* **style**

    ```javascript
    style?: drop-shadow | inner-shadow
    ```
* **offsetX**

    ```javascript
    offsetX?: number
    ```
* **offsetY**

    ```javascript
    offsetY?: number
    ```
* **blur**

    ```javascript
    blur?: number
    ```
* **spread**

    ```javascript
    spread?: number
    ```
* **hidden**

    ```javascript
    hidden?: boolean
    ```
* **color**

    ```javascript
    color?: PenpotColor
    ```
#### Source: [index.d.ts:119](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L119)

### PenpotBlur

TODO PenpotBlur

#### Properties
* **id**

    ```javascript
    id?: string
    ```
* **type**

    ```javascript
    type?: "layer-blur"
    ```
* **value**

    ```javascript
    value?: number
    ```
* **hidden**

    ```javascript
    hidden?: boolean
    ```
#### Source: [index.d.ts:133](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L133)

### PenpotFrameGuideColumnParams

TODO PenpotFrameGuideColumnParams

#### Properties
* **color**

  * **color**

  * **opacity**

* **type**

    ```javascript
    type?: center | stretch | left | right
    ```
* **size**

    ```javascript
    size?: number
    ```
* **margin**

    ```javascript
    margin?: number
    ```
* **itemLength**

    ```javascript
    itemLength?: number
    ```
* **gutter**

    ```javascript
    gutter?: number
    ```
#### Source: [index.d.ts:143](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L143)

### PenpotFrameGuideSquareParams

TODO PenpotFrameGuideSquareParams

#### Properties
* **color**

  * **color**

  * **opacity**

* **size**

    ```javascript
    size?: number
    ```
#### Source: [index.d.ts:155](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L155)

### PenpotFrameGuideColumn

TODO PenpotFrameGuideColumn

#### Properties
* **type**

    ```javascript
    type: "column"
    ```
* **display**

    ```javascript
    display: boolean
    ```
* **params**

    ```javascript
    params: PenpotFrameGuideColumnParams
    ```
#### Source: [index.d.ts:163](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L163)

### PenpotFrameGuideRow

TODO PenpotFrameGuideRow

#### Properties
* **type**

    ```javascript
    type: "row"
    ```
* **display**

    ```javascript
    display: boolean
    ```
* **params**

    ```javascript
    params: PenpotFrameGuideColumnParams
    ```
#### Source: [index.d.ts:172](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L172)

### PenpotFrameGuideSquare

TODO PenpotFrameGuideSquare

#### Properties
* **type**

    ```javascript
    type: "column"
    ```
* **display**

    ```javascript
    display: boolean
    ```
* **params**

    ```javascript
    params: PenpotFrameGuideSquareParams
    ```
#### Source: [index.d.ts:181](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L181)

### PenpotExport

TODO PenpotExport

```javascript
PenpotExport: undefined
```
#### Source: [index.d.ts:198](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L198)

### PenpotTrack

TODO PenpotTrack

#### Properties
* **type**

    ```javascript
    type: PenpotTrackType
    ```
* **value**

    ```javascript
    value: null | number
    ```
#### Source: [index.d.ts:208](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L208)

### PenpotCommonLayout

PenpotCommonLayout represents a common layout interface in the Penpot application.
It includes various properties for alignment, spacing, padding, and sizing, as well as a method to remove the layout.

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
    The  `alignItems`  property specifies the default alignment for items inside the container.
It can be one of the following values:
- 'start': Items are aligned at the start.
- 'end': Items are aligned at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `alignContent`  property specifies how the content is aligned within the container when there is extra space.
It can be one of the following values:
- 'start': Content is aligned at the start.
- 'end': Content is aligned at the end.
- 'center': Content is centered.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
    The  `justifyItems`  property specifies the default justification for items inside the container.
It can be one of the following values:
- 'start': Items are justified at the start.
- 'end': Items are justified at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `justifyContent`  property specifies how the content is justified within the container when there is extra space.
It can be one of the following values:
- 'start': Content is justified at the start.
- 'center': Content is centered.
- 'end': Content is justified at the end.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **rowGap**

    ```javascript
    rowGap: number
    ```
    The  `rowGap`  property specifies the gap between rows in the layout.

* **columnGap**

    ```javascript
    columnGap: number
    ```
    The  `columnGap`  property specifies the gap between columns in the layout.

* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
    The  `verticalPadding`  property specifies the vertical padding inside the container.

* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
    The  `horizontalPadding`  property specifies the horizontal padding inside the container.

* **topPadding**

    ```javascript
    topPadding: number
    ```
    The  `topPadding`  property specifies the padding at the top of the container.

* **rightPadding**

    ```javascript
    rightPadding: number
    ```
    The  `rightPadding`  property specifies the padding at the right of the container.

* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
    The  `bottomPadding`  property specifies the padding at the bottom of the container.

* **leftPadding**

    ```javascript
    leftPadding: number
    ```
    The  `leftPadding`  property specifies the padding at the left of the container.

* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
    The  `horizontalSizing`  property specifies the horizontal sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
    The  `verticalSizing`  property specifies the vertical sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

#### Methods
* **remove**

  ```javascript
  remove(): void
  ```
  The  `remove`  method removes the layout.

  **Returns:**
`void`

#### Source: [index.d.ts:217](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L217)

### PenpotGridLayout

PenpotGridLayout represents a grid layout in the Penpot application, extending the common layout interface.
It includes properties and methods to manage rows, columns, and child elements within the grid.

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
    The  `alignItems`  property specifies the default alignment for items inside the container.
It can be one of the following values:
- 'start': Items are aligned at the start.
- 'end': Items are aligned at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `alignContent`  property specifies how the content is aligned within the container when there is extra space.
It can be one of the following values:
- 'start': Content is aligned at the start.
- 'end': Content is aligned at the end.
- 'center': Content is centered.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
    The  `justifyItems`  property specifies the default justification for items inside the container.
It can be one of the following values:
- 'start': Items are justified at the start.
- 'end': Items are justified at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `justifyContent`  property specifies how the content is justified within the container when there is extra space.
It can be one of the following values:
- 'start': Content is justified at the start.
- 'center': Content is centered.
- 'end': Content is justified at the end.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **rowGap**

    ```javascript
    rowGap: number
    ```
    The  `rowGap`  property specifies the gap between rows in the layout.

* **columnGap**

    ```javascript
    columnGap: number
    ```
    The  `columnGap`  property specifies the gap between columns in the layout.

* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
    The  `verticalPadding`  property specifies the vertical padding inside the container.

* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
    The  `horizontalPadding`  property specifies the horizontal padding inside the container.

* **topPadding**

    ```javascript
    topPadding: number
    ```
    The  `topPadding`  property specifies the padding at the top of the container.

* **rightPadding**

    ```javascript
    rightPadding: number
    ```
    The  `rightPadding`  property specifies the padding at the right of the container.

* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
    The  `bottomPadding`  property specifies the padding at the bottom of the container.

* **leftPadding**

    ```javascript
    leftPadding: number
    ```
    The  `leftPadding`  property specifies the padding at the left of the container.

* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
    The  `horizontalSizing`  property specifies the horizontal sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
    The  `verticalSizing`  property specifies the vertical sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

* **dir**

    ```javascript
    dir: column | row
    ```
    The  `dir`  property specifies the primary direction of the grid layout.
It can be either 'column' or 'row'.

* **rows**

    ```javascript
    rows: PenpotTrack[]
    ```
    The  `rows`  property represents the collection of rows in the grid.
This property is read-only.

* **columns**

    ```javascript
    columns: PenpotTrack[]
    ```
    The  `columns`  property represents the collection of columns in the grid.
This property is read-only.

#### Methods
* **remove**

  ```javascript
  remove(): void
  ```
  The  `remove`  method removes the layout.

  **Returns:**
`void`

* **addRow**

  ```javascript
  addRow(type,value): void
  ```
  Adds a new row to the grid.

  **Parameters:**

    `type` The type of the row to add.

    `value` The value associated with the row type (optional).

  ```javascript
  type: PenpotTrackType
  value?: number
  
  ```
  **Returns:**
`void`

* **addRowAtIndex**

  ```javascript
  addRowAtIndex(index,type,value): void
  ```
  Adds a new row to the grid at the specified index.

  **Parameters:**

    `index` The index at which to add the row.

    `type` The type of the row to add.

    `value` The value associated with the row type (optional).

  ```javascript
  index: number
  type: PenpotTrackType
  value?: number
  
  ```
  **Returns:**
`void`

* **addColumn**

  ```javascript
  addColumn(type,value): void
  ```
  Adds a new column to the grid.

  **Parameters:**

    `type` The type of the column to add.

    `value` The value associated with the column type (optional).

  ```javascript
  type: PenpotTrackType
  value?: number
  
  ```
  **Returns:**
`void`

* **addColumnAtIndex**

  ```javascript
  addColumnAtIndex(index,type,value): void
  ```
  Adds a new column to the grid at the specified index.

  **Parameters:**

    `index` The index at which to add the column.

    `type` The type of the column to add.

    `value` The value associated with the column type.

  ```javascript
  index: number
  type: PenpotTrackType
  value: number
  
  ```
  **Returns:**
`void`

* **removeRow**

  ```javascript
  removeRow(index): void
  ```
  Removes a row from the grid at the specified index.

  **Parameters:**

    `index` The index of the row to remove.

  ```javascript
  index: number
  
  ```
  **Returns:**
`void`

* **removeColumn**

  ```javascript
  removeColumn(index): void
  ```
  Removes a column from the grid at the specified index.

  **Parameters:**

    `index` The index of the column to remove.

  ```javascript
  index: number
  
  ```
  **Returns:**
`void`

* **setColumn**

  ```javascript
  setColumn(index,type,value): void
  ```
  Sets the properties of a column at the specified index.

  **Parameters:**

    `index` The index of the column to set.

    `type` The type of the column.

    `value` The value associated with the column type (optional).

  ```javascript
  index: number
  type: PenpotTrackType
  value?: number
  
  ```
  **Returns:**
`void`

* **setRow**

  ```javascript
  setRow(index,type,value): void
  ```
  Sets the properties of a row at the specified index.

  **Parameters:**

    `index` The index of the row to set.

    `type` The type of the row.

    `value` The value associated with the row type (optional).

  ```javascript
  index: number
  type: PenpotTrackType
  value?: number
  
  ```
  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child,row,column): void
  ```
  Appends a child element to the grid at the specified row and column.

  **Parameters:**

    `child` The child element to append.

    `row` The row index where the child will be placed.

    `column` The column index where the child will be placed.

  ```javascript
  child: PenpotShape
  row: number
  column: number
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:337](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L337)

### PenpotFlexLayout

TODO PenpotFlexLayout

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
    The  `alignItems`  property specifies the default alignment for items inside the container.
It can be one of the following values:
- 'start': Items are aligned at the start.
- 'end': Items are aligned at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `alignContent`  property specifies how the content is aligned within the container when there is extra space.
It can be one of the following values:
- 'start': Content is aligned at the start.
- 'end': Content is aligned at the end.
- 'center': Content is centered.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
    The  `justifyItems`  property specifies the default justification for items inside the container.
It can be one of the following values:
- 'start': Items are justified at the start.
- 'end': Items are justified at the end.
- 'center': Items are centered.
- 'stretch': Items are stretched to fill the container.

* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
    The  `justifyContent`  property specifies how the content is justified within the container when there is extra space.
It can be one of the following values:
- 'start': Content is justified at the start.
- 'center': Content is centered.
- 'end': Content is justified at the end.
- 'space-between': Content is distributed with space between.
- 'space-around': Content is distributed with space around.
- 'space-evenly': Content is distributed with even space around.
- 'stretch': Content is stretched to fill the container.

* **rowGap**

    ```javascript
    rowGap: number
    ```
    The  `rowGap`  property specifies the gap between rows in the layout.

* **columnGap**

    ```javascript
    columnGap: number
    ```
    The  `columnGap`  property specifies the gap between columns in the layout.

* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
    The  `verticalPadding`  property specifies the vertical padding inside the container.

* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
    The  `horizontalPadding`  property specifies the horizontal padding inside the container.

* **topPadding**

    ```javascript
    topPadding: number
    ```
    The  `topPadding`  property specifies the padding at the top of the container.

* **rightPadding**

    ```javascript
    rightPadding: number
    ```
    The  `rightPadding`  property specifies the padding at the right of the container.

* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
    The  `bottomPadding`  property specifies the padding at the bottom of the container.

* **leftPadding**

    ```javascript
    leftPadding: number
    ```
    The  `leftPadding`  property specifies the padding at the left of the container.

* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
    The  `horizontalSizing`  property specifies the horizontal sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
    The  `verticalSizing`  property specifies the vertical sizing behavior of the container.
It can be one of the following values:
- 'fit-content': The container fits the content.
- 'fill': The container fills the available space.
- 'auto': The container size is determined automatically.

* **dir**

    ```javascript
    dir: column | row | row-reverse | column-reverse
    ```
* **wrap**

    ```javascript
    wrap?: wrap | nowrap
    ```
#### Methods
* **remove**

  ```javascript
  remove(): void
  ```
  The  `remove`  method removes the layout.

  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  **Parameters:**

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:417](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L417)

### PenpotPathCommand

TODO PenpotPathCommand

#### Properties
* **command**

    ```javascript
    command: M | move-to | Z | close-path | L | line-to | H | line-to-horizontal | V | line-to-vertical | C | curve-to | S | smooth-curve-to | Q | quadratic-bezier-curve-to | T | smooth-quadratic-bezier-curve-to | A | elliptical-arc
    ```
* **params**

  * **x**

  * **y**

  * **c1x**

  * **c1y**

  * **c2x**

  * **c2y**

  * **rx**

  * **ry**

  * **xAxisRotation**

  * **largeArcFlag**

  * **sweepFlag**

#### Source: [index.d.ts:427](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L427)

### PenpotShapeBase

TODO PenpotShapeBase

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:468](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L468)

### PenpotFrame

TODO PenpotFrame

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "frame"
    ```
* **grid**

    ```javascript
    grid?: PenpotGridLayout
    ```
* **flex**

    ```javascript
    flex?: PenpotFlexLayout
    ```
* **guides**

    ```javascript
    guides: PenpotFrameGuide
    ```
* **horizontalSizing**

    ```javascript
    horizontalSizing?: auto | fix
    ```
* **verticalSizing**

    ```javascript
    verticalSizing?: auto | fix
    ```
* **children**

    ```javascript
    children: PenpotShape[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  **Parameters:**

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  **Parameters:**

  ```javascript
  index: number
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **addFlexLayout**

  ```javascript
  addFlexLayout(): PenpotFlexLayout
  ```
  **Returns:**
`PenpotFlexLayout`

* **addGridLayout**

  ```javascript
  addGridLayout(): PenpotGridLayout
  ```
  **Returns:**
`PenpotGridLayout`

#### Source: [index.d.ts:563](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L563)

### PenpotGroup

TODO PenpotGroup

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "group"
    ```
* **children**

    ```javascript
    children: PenpotShape[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  **Parameters:**

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  **Parameters:**

  ```javascript
  index: number
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **makeMask**

  ```javascript
  makeMask(): void
  ```
  **Returns:**
`void`

* **removeMask**

  ```javascript
  removeMask(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:585](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L585)

### PenpotBool

TODO PenpotBool

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "bool"
    ```
* **content**

    ```javascript
    content: PenpotPathCommand[]
    ```
* **children**

    ```javascript
    children: PenpotShape[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

* **toD**

  ```javascript
  toD(): string
  ```
  **Returns:**
`string`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  **Parameters:**

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  **Parameters:**

  ```javascript
  index: number
  child: PenpotShape
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:608](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L608)

### PenpotRectangle

TODO PenpotRectangle

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "rect"
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:624](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L624)

### PenpotPath

TODO PenpotPath

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "path"
    ```
* **content**

    ```javascript
    content: PenpotPathCommand[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

* **toD**

  ```javascript
  toD(): string
  ```
  **Returns:**
`string`

#### Source: [index.d.ts:631](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L631)

### PenpotText

PenpotText represents a text element in the Penpot application, extending the base shape interface.
It includes various properties to define the text content and its styling attributes.

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "text"
    ```
* **characters**

    ```javascript
    characters: string
    ```
* **growType**

    ```javascript
    growType: fixed | auto-width | auto-height
    ```
* **fontId**

    ```javascript
    fontId: string
    ```
* **fontFamily**

    ```javascript
    fontFamily: string
    ```
* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
* **fontSize**

    ```javascript
    fontSize: string
    ```
* **fontWeight**

    ```javascript
    fontWeight: string
    ```
* **fontStyle**

    ```javascript
    fontStyle: string
    ```
* **lineHeight**

    ```javascript
    lineHeight: string
    ```
* **letterSpacing**

    ```javascript
    letterSpacing: string
    ```
* **textTransform**

    ```javascript
    textTransform: string
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:642](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L642)

### PepotFrame

TODO PepotFrame

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "frame"
    ```
* **children**

    ```javascript
    children: PenpotShape[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:661](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L661)

### PenpotEllipse

TODO PenpotEllipse

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "circle"
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:669](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L669)

### PenpotSvgRaw

TODO PenpotSvgRaw

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "svg-raw"
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:676](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L676)

### PenpotImage

TODO PenpotImage

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **x**

    ```javascript
    x: number
    ```
* **y**

    ```javascript
    y: number
    ```
* **width**

    ```javascript
    width: number
    ```
* **height**

    ```javascript
    height: number
    ```
* **blocked**

    ```javascript
    blocked: boolean
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
* **borderRadius**

    ```javascript
    borderRadius: number
    ```
* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
* **opacity**

    ```javascript
    opacity: number
    ```
* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
* **exports**

    ```javascript
    exports: PenpotExport
    ```
* **frameX**

    ```javascript
    frameX: number
    ```
* **frameY**

    ```javascript
    frameY: number
    ```
* **parentX**

    ```javascript
    parentX: number
    ```
* **parentY**

    ```javascript
    parentY: number
    ```
* **flipX**

    ```javascript
    flipX: boolean
    ```
* **flipY**

    ```javascript
    flipY: boolean
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **layoutChild**

  * **absolute**

  * **zIndex**

  * **horizontalSizing**

  * **verticalSizing**

  * **alignSelf**

  * **horizontalMargin**

  * **verticalMargin**

  * **topMargin**

  * **rightMargin**

  * **bottomMargin**

  * **leftMargin**

  * **maxWidth**

  * **maxHeight**

  * **minWidth**

  * **minHeight**

* **layoutCell**

  * **row**

  * **rowSpan**

  * **column**

  * **columnSpan**

  * **areaName**

  * **position**

* **type**

    ```javascript
    type: "image"
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): void
  ```
  **Parameters:**

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:683](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L683)

### PenpotViewport

PenpotViewport represents the viewport in the Penpot application.
It includes the center point, zoom level, and the bounds of the viewport.

#### Properties
* **center**

    ```javascript
    center: PenpotPoint
    ```
* **zoom**

    ```javascript
    zoom: number
    ```
* **bounds**

    ```javascript
    bounds: PenpotBounds
    ```
#### Source: [index.d.ts:707](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L707)

### EventsMap

TODO EventsMap

#### Properties
* **pagechange**

    ```javascript
    pagechange: PenpotPage
    ```
    The  `pagechange`  event is triggered when the active page in the project is changed.

* **filechange**

    ```javascript
    filechange: PenpotFile
    ```
    The  `filechange`  event is triggered when there are changes in the current file.

* **selectionchange**

    ```javascript
    selectionchange: string[]
    ```
    The  `selectionchange`  event is triggered when the selection of elements changes.
This event passes a list of identifiers of the selected elements.

* **themechange**

    ```javascript
    themechange: PenpotTheme
    ```
    The  `themechange`  event is triggered when the application theme is changed.

* **finish**

    ```javascript
    finish: string
    ```
    The  `finish`  event is triggered when some operation is finished.

#### Source: [index.d.ts:731](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L731)

### PenpotLibraryElement

TODO PenpotLibraryElement

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **libraryId**

    ```javascript
    libraryId: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **path**

    ```javascript
    path: string
    ```
#### Source: [index.d.ts:763](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L763)

### PenpotLibraryColor

TODO PenpotLibraryColor

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **libraryId**

    ```javascript
    libraryId: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **path**

    ```javascript
    path: string
    ```
* **color**

    ```javascript
    color?: string
    ```
* **opacity**

    ```javascript
    opacity?: number
    ```
* **gradient**

    ```javascript
    gradient?: PenpotGradient
    ```
* **image**

    ```javascript
    image?: PenpotImageData
    ```
#### Methods
* **asFill**

  ```javascript
  asFill(): PenpotFill
  ```
  TODO asFill

    **Example:**

    ```js
    asFill code
    ```

  **Returns:**
`PenpotFill`

* **asStroke**

  ```javascript
  asStroke(): PenpotStroke
  ```
  TODO asStroke

    **Example:**

    ```js
    asStroke code
    ```

  **Returns:**
`PenpotStroke`

#### Source: [index.d.ts:773](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L773)

### PenpotLibraryTypography

TODO PenpotLibraryTypography

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **libraryId**

    ```javascript
    libraryId: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **path**

    ```javascript
    path: string
    ```
* **fontId**

    ```javascript
    fontId: string
    ```
* **fontFamily**

    ```javascript
    fontFamily: string
    ```
* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
* **fontSize**

    ```javascript
    fontSize: string
    ```
* **fontWeight**

    ```javascript
    fontWeight: string
    ```
* **fontStyle**

    ```javascript
    fontStyle: string
    ```
* **lineHeight**

    ```javascript
    lineHeight: string
    ```
* **letterSpacing**

    ```javascript
    letterSpacing: string
    ```
* **textTransform**

    ```javascript
    textTransform: string
    ```
#### Methods
* **applyToText**

  ```javascript
  applyToText(shape): void
  ```
  TODO applyToText

    **Example:**

    ```js
    applyToText code
    ```

  **Parameters:**

    `shape` TODO

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`void`

* **applyToTextRange**

  ```javascript
  applyToTextRange(shape): void
  ```
  TODO applyToTextRange

    **Example:**

    ```js
    applyToTextRange code
    ```

  **Parameters:**

    `shape` TODO

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:802](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L802)

### PenpotLibraryComponent

TODO PenpotLibraryComponent

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **libraryId**

    ```javascript
    libraryId: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **path**

    ```javascript
    path: string
    ```
#### Methods
* **instance**

  ```javascript
  instance(): PenpotShape
  ```
  TODO instance

    **Example:**

    ```js
    instance code
    ```

  **Returns:**
`PenpotShape`

#### Source: [index.d.ts:840](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L840)

### PenpotUser

TODO PenpotUser

#### Properties
* **id**

    ```javascript
    id: string
    ```
    TODO id

    **Example:**

    ```js
    id code
    ```

* **name**

    ```javascript
    name?: string
    ```
    TODO name

    **Example:**

    ```js
    name code
    ```

* **avatarUrl**

    ```javascript
    avatarUrl?: string
    ```
    TODO avatarUrl

    **Example:**

    ```js
    avatarUrl code
    ```

* **color**

    ```javascript
    color: string
    ```
    TODO color

    **Example:**

    ```js
    color code
    ```

* **sessionId**

    ```javascript
    sessionId?: string
    ```
    TODO sessionId

    **Example:**

    ```js
    sessionId code
    ```

#### Source: [index.d.ts:916](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L916)

### PenpotActiveUser

TODO PenpotActiveUser

#### Properties
* **id**

    ```javascript
    id: string
    ```
    TODO id

    **Example:**

    ```js
    id code
    ```

* **name**

    ```javascript
    name?: string
    ```
    TODO name

    **Example:**

    ```js
    name code
    ```

* **avatarUrl**

    ```javascript
    avatarUrl?: string
    ```
    TODO avatarUrl

    **Example:**

    ```js
    avatarUrl code
    ```

* **color**

    ```javascript
    color: string
    ```
    TODO color

    **Example:**

    ```js
    color code
    ```

* **sessionId**

    ```javascript
    sessionId?: string
    ```
    TODO sessionId

    **Example:**

    ```js
    sessionId code
    ```

* **position**

    TODO position

    **Example:**

    ```js
    position code
    ```

  * **x**

  * **y**

* **zoom**

    ```javascript
    zoom?: number
    ```
    TODO zoom

    **Example:**

    ```js
    zoom code
    ```

#### Source: [index.d.ts:967](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L967)

### PenpotContext

TODO PenpotContext

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
    TODO root

    **Example:**

    ```js
    context.root;
    ```

* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
    TODO currentPage

    **Example:**

    ```js
    context.currentPage;
    ```

* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
    TODO viewport

    **Example:**

    ```js
    context.viewport;
    ```

* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
    TODO library

    **Example:**

    ```js
    context.library;
    ```

* **currentUser**

    ```javascript
    currentUser: PenpotUser
    ```
    TODO currentUser

    **Example:**

    ```js
    context.currentUser;
    ```

* **activeUsers**

    ```javascript
    activeUsers: PenpotActiveUser
    ```
    TODO activeUsers

    **Example:**

    ```js
    context.activeUsers;
    ```

* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
    TODO selection

    **Example:**

    ```js
    penpot.selection;
    ```

#### Methods
* **getFile**

  ```javascript
  getFile(): null | PenpotFile
  ```
  Use this method to get file data

    **Example:**

    ```js
    penpot.getFile();
    ```

  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  Use this method to get page data

    **Example:**

    ```js
    penpot.getPage();
    ```

  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  Use this method to get the selected elements on penpot. You'll get and array of ids.

    **Example:**

    ```js
    penpot.getSelected();
    ```

  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  Use this method to get the selected elements on penpot. You'll get the data from each shape.

    **Example:**

    ```js
    penpot.getSelectedShapes();
    ```

  **Returns:**
`PenpotShape[]`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
  ```
  Use this method to get the selected theme on penpot. This is necessary to take care of the dark and light mode of your plugin UI.

    **Example:**

    ```js
    penpot.getTheme();
    ```

  **Returns:**
`PenpotTheme`

* **uploadMediaUrl**

  ```javascript
  uploadMediaUrl(name,url): Promise<PenpotImageData>
  ```
  **Parameters:**

  ```javascript
  name: string
  url: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **group**

  ```javascript
  group(shapes): PenpotGroup
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`PenpotGroup`

* **ungroup**

  ```javascript
  ungroup(group,other): void
  ```
  **Parameters:**

  ```javascript
  group: PenpotGroup
  other: PenpotGroup[]
  
  ```
  **Returns:**
`void`

* **createRectangle**

  ```javascript
  createRectangle(): PenpotRectangle
  ```
  Use this method to create the shape of a rectangle.

    **Example:**

    ```js
    penpot.createRectangle();
    ```

  **Returns:**
`PenpotRectangle`

* **createFrame**

  ```javascript
  createFrame(): PenpotFrame
  ```
  Use this method to create a frame. This is the first step before anything else, the container.
Then you can add a gridlayout, flexlayout or add a shape inside the frame.

    **Example:**

    ```js
    penpot.createFrame();
    ```

  **Returns:**
`PenpotFrame`

* **createEllipse**

  ```javascript
  createEllipse(): PenpotEllipse
  ```
  Use this method to create the shape of a ellipse.

    **Example:**

    ```js
    penpot.createEllipse();
    ```

  **Returns:**
`PenpotEllipse`

* **createPath**

  ```javascript
  createPath(): PenpotPath
  ```
  Use this method to create a path.

    **Example:**

    ```js
    penpot.createPath();
    ```

  **Returns:**
`PenpotPath`

* **createBoolean**

  ```javascript
  createBoolean(boolType,shapes): PenpotBool
  ```
  TODO createboolean

    **Example:**

    ```js
    penpot.createBoolean();
    ```

  **Parameters:**

  ```javascript
  boolType: PenpotBoolType
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`PenpotBool`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): PenpotGroup
  ```
  TODO createShapeFromSvg

    **Example:**

    ```js
    penpot.createShapeFromSvg();
    ```

  **Parameters:**

  ```javascript
  svgString: string
  
  ```
  **Returns:**
`PenpotGroup`

* **createText**

  ```javascript
  createText(text): PenpotText
  ```
  TODO createText

    **Example:**

    ```js
    const board = penpot.createFrame();
    let text;
    text = penpot.createText();
    text.growType = 'auto-height';
    text.fontFamily = 'Work Sans';
    text.fontSize = '12';
    board.appendChild(text);
    ```

  **Parameters:**

  ```javascript
  text: string
  
  ```
  **Returns:**
`PenpotText`

* **addListener**

  ```javascript
  addListener(type,callback): symbol
  ```
  TODO addListener

    **Example:**

    ```js
    penpot.addListener();
    ```

  **Parameters:**

    `type` todo explanation

    `callback` todo explanation

  ```javascript
  type: T
  callback: (event) => void
  
  ```
  **Returns:**
`symbol`

* **removeListener**

  ```javascript
  removeListener(listenerId): void
  ```
  TODO removeListener

    **Example:**

    ```js
    penpot.removeListener();
    ```

  **Parameters:**

  ```javascript
  listenerId: symbol
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:991](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L991)

### Penpot

These are methods and properties available on the  `penpot`  global object.

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
    TODO root

    **Example:**

    ```js
    context.root;
    ```

* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
    TODO currentPage

    **Example:**

    ```js
    context.currentPage;
    ```

* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
    TODO viewport

    **Example:**

    ```js
    context.viewport;
    ```

* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
    TODO library

    **Example:**

    ```js
    context.library;
    ```

* **currentUser**

    ```javascript
    currentUser: PenpotUser
    ```
    TODO currentUser

    **Example:**

    ```js
    context.currentUser;
    ```

* **activeUsers**

    ```javascript
    activeUsers: PenpotActiveUser
    ```
    TODO activeUsers

    **Example:**

    ```js
    context.activeUsers;
    ```

* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
    TODO selection

    **Example:**

    ```js
    penpot.selection;
    ```

* **ui**

  * **open**

    ```javascript
    open: (name, url, options) => void
    ```
    Opens the plugin UI. It is possible to develop a plugin without interface (see Palette color example) but if you need, the way to open this UI is using  `penpot.ui.open` .
There is a minimum and maximum size for this modal and a default size but it's possible to customize it anyway with the options parameter.

    **Example:**

    ```js
    penpot.ui.open('Plugin name', 'url', {width: 150, height: 300});
    ```

    **Parameters:**

    `name` title of the plugin, it'll be displayed on the top of the modal

    `url` of the plugin

    `options` height and width of the modal.

    ```javascript
    name: string
    url: string
    options: {
      width: number
      height: number
    }
    ```
    **Returns:** `void`

  * **sendMessage**

    ```javascript
    sendMessage: (message) => void
    ```
    TODO description of sendMessage

    **Example:**

    ```js
    this.sendMessage({ type: 'example-type', content: 'data we want to share' });
    ```

    **Parameters:**

    `message` content usually is an object

    ```javascript
    message: unknown
    
    ```
    **Returns:** `void`

  * **onMessage**

    ```javascript
    onMessage: <T>(callback) => void
    ```
    This is usually used in the  `plugin.ts`  file in order to handle the data sent by our plugin

    **Example:**

    ```js
    penpot.ui.onMessage((message) => {if(message.type === 'example-type' { ...do something })});
    ```

    **Parameters:**

    ```javascript
    callback: (message) => void
    
    ```
    **Returns:** `void`

* **utils**

  * **types**

* **closePlugin**

  ```javascript
  closePlugin: () => void
  ```
  Closes the plugin. When this method is called the UI will be closed.

    **Example:**

    ```js
    penpot.closePlugin();
    ```

  **Returns:**
`void`

* **on**

  ```javascript
  on: <T extends keyof EventsMap>(type, callback) => void
  ```
  TODO description of 'on'

    **Example:**

    ```js
    penpot.on('pagechange', () => {...do something}).
    ```

  **Parameters:**

  ```javascript
  type: T
  callback: (event) => void
  
  ```
  **Returns:**
`void`

* **off**

  ```javascript
  off: <T extends keyof EventsMap>(type, callback) => void
  ```
  TODO description of 'off'

    **Example:**

    ```js
    penpot.off('pagechange', () => {...do something}).
    ```

  **Parameters:**

  ```javascript
  type: T
  callback: (event) => void
  
  ```
  **Returns:**
`void`

#### Methods
* **getFile**

  ```javascript
  getFile(): null | PenpotFile
  ```
  Use this method to get file data

    **Example:**

    ```js
    penpot.getFile();
    ```

  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  Use this method to get page data

    **Example:**

    ```js
    penpot.getPage();
    ```

  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  Use this method to get the selected elements on penpot. You'll get and array of ids.

    **Example:**

    ```js
    penpot.getSelected();
    ```

  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  Use this method to get the selected elements on penpot. You'll get the data from each shape.

    **Example:**

    ```js
    penpot.getSelectedShapes();
    ```

  **Returns:**
`PenpotShape[]`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
  ```
  Use this method to get the selected theme on penpot. This is necessary to take care of the dark and light mode of your plugin UI.

    **Example:**

    ```js
    penpot.getTheme();
    ```

  **Returns:**
`PenpotTheme`

* **uploadMediaUrl**

  ```javascript
  uploadMediaUrl(name,url): Promise<PenpotImageData>
  ```
  **Parameters:**

  ```javascript
  name: string
  url: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **group**

  ```javascript
  group(shapes): PenpotGroup
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`PenpotGroup`

* **ungroup**

  ```javascript
  ungroup(group,other): void
  ```
  **Parameters:**

  ```javascript
  group: PenpotGroup
  other: PenpotGroup[]
  
  ```
  **Returns:**
`void`

* **createRectangle**

  ```javascript
  createRectangle(): PenpotRectangle
  ```
  Use this method to create the shape of a rectangle.

    **Example:**

    ```js
    penpot.createRectangle();
    ```

  **Returns:**
`PenpotRectangle`

* **createFrame**

  ```javascript
  createFrame(): PenpotFrame
  ```
  Use this method to create a frame. This is the first step before anything else, the container.
Then you can add a gridlayout, flexlayout or add a shape inside the frame.

    **Example:**

    ```js
    penpot.createFrame();
    ```

  **Returns:**
`PenpotFrame`

* **createEllipse**

  ```javascript
  createEllipse(): PenpotEllipse
  ```
  Use this method to create the shape of a ellipse.

    **Example:**

    ```js
    penpot.createEllipse();
    ```

  **Returns:**
`PenpotEllipse`

* **createPath**

  ```javascript
  createPath(): PenpotPath
  ```
  Use this method to create a path.

    **Example:**

    ```js
    penpot.createPath();
    ```

  **Returns:**
`PenpotPath`

* **createBoolean**

  ```javascript
  createBoolean(boolType,shapes): PenpotBool
  ```
  TODO createboolean

    **Example:**

    ```js
    penpot.createBoolean();
    ```

  **Parameters:**

  ```javascript
  boolType: PenpotBoolType
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`PenpotBool`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): PenpotGroup
  ```
  TODO createShapeFromSvg

    **Example:**

    ```js
    penpot.createShapeFromSvg();
    ```

  **Parameters:**

  ```javascript
  svgString: string
  
  ```
  **Returns:**
`PenpotGroup`

* **createText**

  ```javascript
  createText(text): PenpotText
  ```
  TODO createText

    **Example:**

    ```js
    const board = penpot.createFrame();
    let text;
    text = penpot.createText();
    text.growType = 'auto-height';
    text.fontFamily = 'Work Sans';
    text.fontSize = '12';
    board.appendChild(text);
    ```

  **Parameters:**

  ```javascript
  text: string
  
  ```
  **Returns:**
`PenpotText`

#### Source: [index.d.ts:1208](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L1208)

## Type Aliases

### PenpotGradient

TODO PenpotGradient

```javascript
PenpotGradient: undefined
```
#### Source: [index.d.ts:38](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L38)

### PenpotImageData

TODO PenpotImageData

```javascript
PenpotImageData: undefined
```
#### Source: [index.d.ts:51](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L51)

### PenpotStrokeCap

TODO PenpotStrokeCap

```javascript
PenpotStrokeCap: round | square | line-arrow | triangle-arrow | square-marker | circle-marker | diamond-marker
```
#### Source: [index.d.ts:76](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L76)

### PenpotFrameGuide

TODO PenpotFrameGuide

```javascript
PenpotFrameGuide: PenpotFrameGuideColumn | PenpotFrameGuideRow | PenpotFrameGuideSquare
```
#### Source: [index.d.ts:190](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L190)

### PenpotTrackType

TODO PenpotTrackType

```javascript
PenpotTrackType: flex | fixed | percent | auto
```
#### Source: [index.d.ts:203](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L203)

### PenpotBoolType

TODO PenpotBoolType

```javascript
PenpotBoolType: union | difference | exclude | intersection
```
#### Source: [index.d.ts:599](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L599)

### PenpotPoint

PenpotPoint represents a point in 2D space, typically with x and y coordinates.

```javascript
PenpotPoint: undefined
```
#### Source: [index.d.ts:690](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L690)

### PenpotBounds

PenpotBounds represents the boundaries of a rectangular area,
defined by the coordinates of the top-left corner and the dimensions of the rectangle.

```javascript
PenpotBounds: undefined
```
#### Source: [index.d.ts:696](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L696)

### PenpotShape

PenpotShape represents a union of various shape types used in the Penpot project.
This type allows for different shapes to be handled under a single type umbrella.

```javascript
PenpotShape: PenpotFrame | PenpotGroup | PenpotBool | PenpotRectangle | PenpotPath | PenpotText | PenpotEllipse | PenpotSvgRaw | PenpotImage
```
#### Source: [index.d.ts:717](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L717)

### PenpotTheme

TODO PenpotTheme

```javascript
PenpotTheme: light | dark
```
#### Source: [index.d.ts:758](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L758)

### PenpotLibrary

TODO PenpotLibrary

```javascript
PenpotLibrary: undefined
```
#### Source: [index.d.ts:855](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L855)

### PenpotLibraryContext

TODO PenpotLibraryContext

```javascript
PenpotLibraryContext: undefined
```
#### Source: [index.d.ts:892](https://github.com/penpot/penpot-plugins/blob/8e91bc76d1ce96c3a40ec17c0d6f9cdd3bfaf90f/libs/plugin-types/index.d.ts#L892)

