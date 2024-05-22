---
title: 5.4. API
---

# Penpot plugins API

## Interfaces

### PenpotFile

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
#### Source: [index.d.ts:1](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L1)

### PenpotPage

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
#### Methods
* **getShapeById**

  ```javascript
  getShapeById(id): null | PenpotShape
  ```
  **Parameters:**

  ```javascript
  id: string
  
  ```
  **Returns:**
`null | PenpotShape`

* **findShapes**

  ```javascript
  findShapes(): PenpotShape[]
  ```
  **Returns:**
`PenpotShape[]`

#### Source: [index.d.ts:7](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L7)

### PenpotFill

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
#### Source: [index.d.ts:33](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L33)

### PenpotStroke

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
    strokeStyle?: solid | dotted | dashed | mixed | none | svg
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
    strokeColorGradient: PenpotGradient
    ```
#### Source: [index.d.ts:51](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L51)

### PenpotColor

#### Properties
* **id**

    ```javascript
    id: string
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
#### Source: [index.d.ts:64](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L64)

### PenpotShadow

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **style**

    ```javascript
    style: drop-shadow | inner-shadow
    ```
* **offsetX**

    ```javascript
    offsetX: number
    ```
* **offsetY**

    ```javascript
    offsetY: number
    ```
* **blur**

    ```javascript
    blur: number
    ```
* **spread**

    ```javascript
    spread: number
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
* **color**

    ```javascript
    color: PenpotColor
    ```
#### Source: [index.d.ts:76](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L76)

### PenpotBlur

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **type**

    ```javascript
    type: "layer-blur"
    ```
* **value**

    ```javascript
    value: number
    ```
* **hidden**

    ```javascript
    hidden: boolean
    ```
#### Source: [index.d.ts:87](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L87)

### PenpotFrameGuideColumnParams

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
#### Source: [index.d.ts:94](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L94)

### PenpotFrameGuideSquareParams

#### Properties
* **color**

  * **color**

  * **opacity**

* **size**

    ```javascript
    size?: number
    ```
#### Source: [index.d.ts:103](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L103)

### PenpotFrameGuideColumn

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
#### Source: [index.d.ts:108](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L108)

### PenpotFrameGuideRow

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
#### Source: [index.d.ts:114](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L114)

### PenpotFrameGuideSquare

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
#### Source: [index.d.ts:120](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L120)

### PenpotExport

```javascript
PenpotExport: undefined
```
#### Source: [index.d.ts:131](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L131)

### PenpotTrack

#### Properties
* **type**

    ```javascript
    type: PenpotTrackType
    ```
* **value**

    ```javascript
    value: null | number
    ```
#### Source: [index.d.ts:135](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L135)

### PenpotCommonLayout

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **rowGap**

    ```javascript
    rowGap: number
    ```
* **columnGap**

    ```javascript
    columnGap: number
    ```
* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
* **topPadding**

    ```javascript
    topPadding: number
    ```
* **rightPadding**

    ```javascript
    rightPadding: number
    ```
* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
* **leftPadding**

    ```javascript
    leftPadding: number
    ```
* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
#### Methods
* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:140](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L140)

### PenpotGridLayout

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **rowGap**

    ```javascript
    rowGap: number
    ```
* **columnGap**

    ```javascript
    columnGap: number
    ```
* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
* **topPadding**

    ```javascript
    topPadding: number
    ```
* **rightPadding**

    ```javascript
    rightPadding: number
    ```
* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
* **leftPadding**

    ```javascript
    leftPadding: number
    ```
* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
* **dir**

    ```javascript
    dir: column | row
    ```
* **rows**

    ```javascript
    rows: PenpotTrack[]
    ```
* **columns**

    ```javascript
    columns: PenpotTrack[]
    ```
#### Methods
* **remove**

  ```javascript
  remove(): void
  ```
  **Returns:**
`void`

* **addRow**

  ```javascript
  addRow(type,value): void
  ```
  **Parameters:**

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
  **Parameters:**

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
  **Parameters:**

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
  **Parameters:**

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
  **Parameters:**

  ```javascript
  index: number
  
  ```
  **Returns:**
`void`

* **removeColumn**

  ```javascript
  removeColumn(index): void
  ```
  **Parameters:**

  ```javascript
  index: number
  
  ```
  **Returns:**
`void`

* **setColumn**

  ```javascript
  setColumn(index,type,value): void
  ```
  **Parameters:**

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
  **Parameters:**

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
  **Parameters:**

  ```javascript
  child: PenpotShape
  row: number
  column: number
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:177](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L177)

### PenpotFlexLayout

#### Properties
* **alignItems**

    ```javascript
    alignItems?: center | stretch | start | end
    ```
* **alignContent**

    ```javascript
    alignContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **justifyItems**

    ```javascript
    justifyItems?: center | stretch | start | end
    ```
* **justifyContent**

    ```javascript
    justifyContent?: center | stretch | start | end | space-between | space-around | space-evenly
    ```
* **rowGap**

    ```javascript
    rowGap: number
    ```
* **columnGap**

    ```javascript
    columnGap: number
    ```
* **verticalPadding**

    ```javascript
    verticalPadding: number
    ```
* **horizontalPadding**

    ```javascript
    horizontalPadding: number
    ```
* **topPadding**

    ```javascript
    topPadding: number
    ```
* **rightPadding**

    ```javascript
    rightPadding: number
    ```
* **bottomPadding**

    ```javascript
    bottomPadding: number
    ```
* **leftPadding**

    ```javascript
    leftPadding: number
    ```
* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fit-content
    ```
* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fit-content
    ```
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

#### Source: [index.d.ts:194](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L194)

### PenpotShapeBase

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:201](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L201)

### PenpotFrame

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:292](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L292)

### PenpotGroup

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:311](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L311)

### PenpotBool

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:320](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L320)

### PenpotRectangle

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:329](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L329)

### PenpotPath

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:333](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L333)

### PenpotText

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:337](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L337)

### PepotFrame

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:343](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L343)

### PenpotCircle

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:348](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L348)

### PenpotSvgRaw

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:352](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L352)

### PenpotImage

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
    blendMode: normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | difference | exclusion | hue | saturation | color | luminosity
    ```
* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
* **blur**

    ```javascript
    blur: PenpotBlur
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

#### Source: [index.d.ts:356](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L356)

### PenpotViewport

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
#### Source: [index.d.ts:368](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L368)

### EventsMap

#### Properties
* **pagechange**

    ```javascript
    pagechange: PenpotPage
    ```
* **filechange**

    ```javascript
    filechange: PenpotFile
    ```
* **selectionchange**

    ```javascript
    selectionchange: string[]
    ```
* **themechange**

    ```javascript
    themechange: PenpotTheme
    ```
#### Source: [index.d.ts:385](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L385)

### PenpotContext

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
#### Methods
* **getFile**

  ```javascript
  getFile(): null | PenpotFile
  ```
  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  **Returns:**
`PenpotShape[]`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
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
  group(first,rest): PenpotGroup
  ```
  **Parameters:**

  ```javascript
  first: PenpotShape
  rest: PenpotShape[]
  
  ```
  **Returns:**
`PenpotGroup`

* **ungroup**

  ```javascript
  ungroup(first,rest): void
  ```
  **Parameters:**

  ```javascript
  first: PenpotShape
  rest: PenpotShape[]
  
  ```
  **Returns:**
`void`

* **createRectangle**

  ```javascript
  createRectangle(): PenpotRectangle
  ```
  **Returns:**
`PenpotRectangle`

* **createFrame**

  ```javascript
  createFrame(): PenpotFrame
  ```
  **Returns:**
`PenpotFrame`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): PenpotGroup
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
  **Parameters:**

  ```javascript
  text: string
  
  ```
  **Returns:**
`PenpotText`

* **addListener**

  ```javascript
  addListener(type,callback): void
  ```
  **Parameters:**

  ```javascript
  type: T
  callback: (event) => void
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:421](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L421)

### Penpot

These are methods and properties available on the  `penpot`  global object.

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
* **ui**

  * **open**

    Description of open

    ```javascript
    open: (name, url, options) => void
    ```
    **Parameters:**

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

    Description of sendMessage

    ```javascript
    sendMessage: (message) => void
    ```
    **Parameters:**

    ```javascript
        message: unknown
    
    ```
    **Returns:** `void`

  * **onMessage**

    Description of onMessage

    ```javascript
    onMessage: <T>(callback) => void
    ```
    **Parameters:**

    ```javascript
        callback: (message) => void
    
    ```
    **Returns:** `void`

* **utils**

  * **types**

* **setTimeout**

  Description of setTimeout

  ```javascript
  setTimeout: (callback, time) => void
  ```
  **Parameters:**

  ```javascript
  callback: () => void
  time: number
  
  ```
  **Returns:**
`void`

* **closePlugin**

  ```javascript
  closePlugin: () => void
  ```
  **Returns:**
`void`

* **on**

  ```javascript
  on: <T extends keyof EventsMap>(type, callback) => void
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
  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  **Returns:**
`PenpotShape[]`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
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

* **createRectangle**

  ```javascript
  createRectangle(): PenpotRectangle
  ```
  **Returns:**
`PenpotRectangle`

* **createFrame**

  ```javascript
  createFrame(): PenpotFrame
  ```
  **Returns:**
`PenpotFrame`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): PenpotGroup
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
  **Parameters:**

  ```javascript
  text: string
  
  ```
  **Returns:**
`PenpotText`

#### Source: [index.d.ts:453](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L453)

## Type Aliases

### PenpotGradient

```javascript
PenpotGradient: undefined
```
#### Source: [index.d.ts:14](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L14)

### PenpotImageData

```javascript
PenpotImageData: undefined
```
#### Source: [index.d.ts:24](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L24)

### PenpotStrokeCap

```javascript
PenpotStrokeCap: round | square | line-arrow | triangle-arrow | square-marker | circle-marker | diamond-marker
```
#### Source: [index.d.ts:42](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L42)

### PenpotFrameGuide

```javascript
PenpotFrameGuide: PenpotFrameGuideColumn | PenpotFrameGuideRow | PenpotFrameGuideSquare
```
#### Source: [index.d.ts:126](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L126)

### PenpotTrackType

```javascript
PenpotTrackType: flex | fixed | percent | auto
```
#### Source: [index.d.ts:133](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L133)

### PenpotPoint

```javascript
PenpotPoint: undefined
```
#### Source: [index.d.ts:360](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L360)

### PenpotBounds

```javascript
PenpotBounds: undefined
```
#### Source: [index.d.ts:361](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L361)

### PenpotShape

```javascript
PenpotShape: PenpotFrame | PenpotGroup | PenpotBool | PenpotRectangle | PenpotPath | PenpotText | PenpotCircle | PenpotSvgRaw | PenpotImage
```
#### Source: [index.d.ts:374](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L374)

### PenpotTheme

```javascript
PenpotTheme: light | dark
```
#### Source: [index.d.ts:392](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L392)

### PenpotLibraryColor

```javascript
PenpotLibraryColor: undefined
```
#### Source: [index.d.ts:394](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L394)

### PenpotLibraryTypography

```javascript
PenpotLibraryTypography: undefined
```
#### Source: [index.d.ts:402](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L402)

### PenpotLibraryComponent

```javascript
PenpotLibraryComponent: undefined
```
#### Source: [index.d.ts:406](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L406)

### PenpotLibrary

```javascript
PenpotLibrary: undefined
```
#### Source: [index.d.ts:410](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L410)

### PenpotLibraryContext

```javascript
PenpotLibraryContext: undefined
```
#### Source: [index.d.ts:416](https://github.com/penpot/penpot-plugins/blob/d9f736cab63fd0dc4cd465c1241ddc1bfe51bb2f/libs/plugin-types/index.d.ts#L416)

