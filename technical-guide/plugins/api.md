---
title: 5.4. API
---

# Penpot plugins API

## Interfaces

### PenpotPluginData

Provides methods for managing plugin-specific data associated with a Penpot shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

#### Source: [index.d.ts:4](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L4)

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
#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

#### Source: [index.d.ts:59](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L59)

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
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

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
  findShapes(criteria): PenpotShape[]
  ```
  Finds all shapes on the page.
Optionaly it gets a criteria object to search for specific criteria

  **Parameters:**

  ```javascript
  criteria: {
    name: string
    nameLike: string
    type: undefined
  }
  ```
  **Returns:**
`PenpotShape[]`

#### Source: [index.d.ts:69](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L69)

### PenpotFill

Represents fill properties in Penpot.
This interface includes properties for defining solid color fills, gradient fills, and image fills.

#### Properties
* **fillColor**

    ```javascript
    fillColor?: string
    ```
    The optional solid fill color, represented as a string (e.g., '#FF5733').

* **fillOpacity**

    ```javascript
    fillOpacity?: number
    ```
    The optional opacity level of the solid fill color, ranging from 0 (fully transparent) to 1 (fully opaque).
Defaults to 1 if omitted.

* **fillColorGradient**

    ```javascript
    fillColorGradient?: PenpotGradient
    ```
    The optional gradient fill defined by a PenpotGradient object.

* **fillColorRefFile**

    ```javascript
    fillColorRefFile?: string
    ```
    The optional reference to an external file for the fill color.

* **fillColorRefId**

    ```javascript
    fillColorRefId?: string
    ```
    The optional reference ID within the external file for the fill color.

* **fillImage**

    ```javascript
    fillImage?: PenpotImageData
    ```
    The optional image fill defined by a PenpotImageData object.

#### Source: [index.d.ts:180](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L180)

### PenpotStroke

Represents stroke properties in Penpot.
This interface includes properties for defining the color, style, width, alignment, and caps of a stroke.

#### Properties
* **strokeColor**

    ```javascript
    strokeColor?: string
    ```
    The optional color of the stroke, represented as a string (e.g., '#FF5733').

* **strokeColorRefFile**

    ```javascript
    strokeColorRefFile?: string
    ```
    The optional reference to an external file for the stroke color.

* **strokeColorRefId**

    ```javascript
    strokeColorRefId?: string
    ```
    The optional reference ID within the external file for the stroke color.

* **strokeOpacity**

    ```javascript
    strokeOpacity?: number
    ```
    The optional opacity level of the stroke color, ranging from 0 (fully transparent) to 1 (fully opaque).
Defaults to 1 if omitted.

* **strokeStyle**

    ```javascript
    strokeStyle?: svg | solid | dotted | dashed | mixed | none
    ```
    The optional style of the stroke.

* **strokeWidth**

    ```javascript
    strokeWidth?: number
    ```
    The optional width of the stroke.

* **strokeAlignment**

    ```javascript
    strokeAlignment?: center | inner | outer
    ```
    The optional alignment of the stroke relative to the shape's boundary.

* **strokeCapStart**

    ```javascript
    strokeCapStart?: PenpotStrokeCap
    ```
    The optional cap style for the start of the stroke.

* **strokeCapEnd**

    ```javascript
    strokeCapEnd?: PenpotStrokeCap
    ```
    The optional cap style for the end of the stroke.

* **strokeColorGradient**

    ```javascript
    strokeColorGradient?: PenpotGradient
    ```
    The optional gradient stroke defined by a PenpotGradient object.

#### Source: [index.d.ts:225](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L225)

### PenpotColor

Represents color properties in Penpot.
This interface includes properties for defining solid colors, gradients, and image fills, along with metadata.

#### Properties
* **id**

    ```javascript
    id?: string
    ```
    The optional unique identifier for the color.

* **name**

    ```javascript
    name?: string
    ```
    The optional name of the color.

* **path**

    ```javascript
    path?: string
    ```
    The optional path or category to which this color belongs.

* **color**

    ```javascript
    color?: string
    ```
    The optional solid color, represented as a string (e.g., '#FF5733').

* **opacity**

    ```javascript
    opacity?: number
    ```
    The optional opacity level of the color, ranging from 0 (fully transparent) to 1 (fully opaque).
Defaults to 1 if omitted.

* **refId**

    ```javascript
    refId?: string
    ```
    The optional reference ID for an external color definition.

* **refFile**

    ```javascript
    refFile?: string
    ```
    The optional reference to an external file for the color definition.

* **gradient**

    ```javascript
    gradient?: PenpotGradient
    ```
    The optional gradient fill defined by a PenpotGradient object.

* **image**

    ```javascript
    image?: PenpotImageData
    ```
    The optional image fill defined by a PenpotImageData object.

#### Source: [index.d.ts:273](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L273)

### PenpotColorShapeInfoEntry

Entry for the color shape additional information.

#### Properties
* **property**

    ```javascript
    property: string
    ```
    Property that has the color (example: fill, stroke...)

* **index**

    ```javascript
    index?: number
    ```
    For properties that are indexes (such as fill) represent the index
of the color inside that property.

* **shapeId**

    ```javascript
    shapeId: string
    ```
    Identifier of the shape that contains the color

#### Source: [index.d.ts:316](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L316)

### PenpotColorShapeInfo

Additional color information for the methods to extract colors from a list of shapes.

#### Properties
* **shapesInfo**

    ```javascript
    shapesInfo: PenpotColorShapeInfoEntry[]
    ```
    List of shapes with additional information

#### Source: [index.d.ts:337](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L337)

### PenpotShadow

Represents shadow properties in Penpot.
This interface includes properties for defining drop shadows and inner shadows, along with their visual attributes.

#### Properties
* **id**

    ```javascript
    id?: string
    ```
    The optional unique identifier for the shadow.

* **style**

    ```javascript
    style?: drop-shadow | inner-shadow
    ```
    The optional style of the shadow.
- 'drop-shadow': A shadow cast outside the element.
- 'inner-shadow': A shadow cast inside the element.

* **offsetX**

    ```javascript
    offsetX?: number
    ```
    The optional X-axis offset of the shadow.

* **offsetY**

    ```javascript
    offsetY?: number
    ```
    The optional Y-axis offset of the shadow.

* **blur**

    ```javascript
    blur?: number
    ```
    The optional blur radius of the shadow.

* **spread**

    ```javascript
    spread?: number
    ```
    The optional spread radius of the shadow.

* **hidden**

    ```javascript
    hidden?: boolean
    ```
    Specifies whether the shadow is hidden.
Defaults to false if omitted.

* **color**

    ```javascript
    color?: PenpotColor
    ```
    The optional color of the shadow, defined by a PenpotColor object.

#### Source: [index.d.ts:348](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L348)

### PenpotBlur

Represents blur properties in Penpot.
This interface includes properties for defining the type and intensity of a blur effect, along with its visibility.

#### Properties
* **id**

    ```javascript
    id?: string
    ```
    The optional unique identifier for the blur effect.

* **type**

    ```javascript
    type?: "layer-blur"
    ```
    The optional type of the blur effect.
Currently, only 'layer-blur' is supported.

* **value**

    ```javascript
    value?: number
    ```
    The optional intensity value of the blur effect.

* **hidden**

    ```javascript
    hidden?: boolean
    ```
    Specifies whether the blur effect is hidden.
Defaults to false if omitted.

#### Source: [index.d.ts:390](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L390)

### PenpotFrameGuideColumnParams

Represents parameters for frame guide columns in Penpot.
This interface includes properties for defining the appearance and layout of column guides within a frame.

#### Properties
* **color**

    The color configuration for the column guides.

  * **color**

  * **opacity**

* **type**

    ```javascript
    type?: center | stretch | left | right
    ```
    The optional alignment type of the column guides.
- 'stretch': Columns stretch to fit the available space.
- 'left': Columns align to the left.
- 'center': Columns align to the center.
- 'right': Columns align to the right.

* **size**

    ```javascript
    size?: number
    ```
    The optional size of each column.

* **margin**

    ```javascript
    margin?: number
    ```
    The optional margin between the columns and the frame edges.

* **itemLength**

    ```javascript
    itemLength?: number
    ```
    The optional length of each item within the columns.

* **gutter**

    ```javascript
    gutter?: number
    ```
    The optional gutter width between columns.

#### Source: [index.d.ts:415](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L415)

### PenpotFrameGuideSquareParams

Represents parameters for frame guide squares in Penpot.
This interface includes properties for defining the appearance and size of square guides within a frame.

#### Properties
* **color**

    The color configuration for the square guides.

  * **color**

  * **opacity**

* **size**

    ```javascript
    size?: number
    ```
    The optional size of each square guide.

#### Source: [index.d.ts:450](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L450)

### PenpotFrameGuideColumn

Represents a frame guide for columns in Penpot.
This interface includes properties for defining the type, visibility, and parameters of column guides within a frame.

#### Properties
* **type**

    ```javascript
    type: "column"
    ```
    The type of the guide, which is always 'column' for column guides.

* **display**

    ```javascript
    display: boolean
    ```
    Specifies whether the column guide is displayed.

* **params**

    ```javascript
    params: PenpotFrameGuideColumnParams
    ```
    The parameters defining the appearance and layout of the column guides.

#### Source: [index.d.ts:465](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L465)

### PenpotFrameGuideRow

Represents a frame guide for rows in Penpot.
This interface includes properties for defining the type, visibility, and parameters of row guides within a frame.

#### Properties
* **type**

    ```javascript
    type: "row"
    ```
    The type of the guide, which is always 'row' for row guides.

* **display**

    ```javascript
    display: boolean
    ```
    Specifies whether the row guide is displayed.

* **params**

    ```javascript
    params: PenpotFrameGuideColumnParams
    ```
    The parameters defining the appearance and layout of the row guides.
Note: This reuses the same parameter structure as column guides.

#### Source: [index.d.ts:484](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L484)

### PenpotFrameGuideSquare

Represents a frame guide for squares in Penpot.
This interface includes properties for defining the type, visibility, and parameters of square guides within a frame.

#### Properties
* **type**

    ```javascript
    type: "square"
    ```
    The type of the guide, which is always 'square' for square guides.

* **display**

    ```javascript
    display: boolean
    ```
    Specifies whether the square guide is displayed.

* **params**

    ```javascript
    params: PenpotFrameGuideSquareParams
    ```
    The parameters defining the appearance and layout of the square guides.

#### Source: [index.d.ts:504](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L504)

### PenpotExport

Represents export settings in Penpot.
This interface includes properties for defining export configurations.

#### Properties
* **type**

    ```javascript
    type: svg | png | jpeg | pdf
    ```
    Type of the file to export. Can be one of the following values: png, jpeg, svg, pdf

* **scale**

    ```javascript
    scale: number
    ```
    For bitmap formats represent the scale of the original size to resize the export

* **suffix**

    ```javascript
    suffix: string
    ```
    Suffix that will be appended to the resulting exported file

#### Source: [index.d.ts:532](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L532)

### PenpotTrack

Represents a track configuration in Penpot.
This interface includes properties for defining the type and value of a track used in layout configurations.

#### Properties
* **type**

    ```javascript
    type: PenpotTrackType
    ```
    The type of the track.
This can be one of the following values:
- 'flex': A flexible track type.
- 'fixed': A fixed track type.
- 'percent': A track type defined by a percentage.
- 'auto': An automatic track type.

* **value**

    ```javascript
    value: null | number
    ```
    The value of the track.
This can be a number representing the size of the track, or null if not applicable.

#### Source: [index.d.ts:557](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L557)

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

#### Source: [index.d.ts:578](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L578)

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

#### Source: [index.d.ts:698](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L698)

### PenpotFlexLayout

Represents a flexible layout configuration in Penpot.
This interface extends  `PenpotCommonLayout`  and includes properties for defining the direction,
wrapping behavior, and child management of a flex layout.

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
    The direction of the flex layout.
- 'row': Main axis is horizontal, from left to right.
- 'row-reverse': Main axis is horizontal, from right to left.
- 'column': Main axis is vertical, from top to bottom.
- 'column-reverse': Main axis is vertical, from bottom to top.

* **wrap**

    ```javascript
    wrap?: wrap | nowrap
    ```
    The optional wrapping behavior of the flex layout.
- 'wrap': Child elements will wrap onto multiple lines.
- 'nowrap': Child elements will not wrap.

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
  Appends a child element to the flex layout.

  **Parameters:**

    `child` The child element to be appended, of type  `PenpotShape` .

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:780](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L780)

### PenpotPathCommand

Represents a path command in Penpot.
This interface includes a property for defining the type of command.

#### Properties
* **command**

    ```javascript
    command: M | move-to | Z | close-path | L | line-to | H | line-to-horizontal | V | line-to-vertical | C | curve-to | S | smooth-curve-to | Q | quadratic-bezier-curve-to | T | smooth-quadratic-bezier-curve-to | A | elliptical-arc
    ```
    The type of path command.
Possible values include:
- 'M' or 'move-to': Move to a new point.
- 'Z' or 'close-path': Close the current path.
- 'L' or 'line-to': Draw a straight line to a new point.
- 'H' or 'line-to-horizontal': Draw a horizontal line to a new point.
- 'V' or 'line-to-vertical': Draw a vertical line to a new point.
- 'C' or 'curve-to': Draw a cubic Bezier curve to a new point.
- 'S' or 'smooth-curve-to': Draw a smooth cubic Bezier curve to a new point.
- 'Q' or 'quadratic-bezier-curve-to': Draw a quadratic Bezier curve to a new point.
- 'T' or 'smooth-quadratic-bezier-curve-to': Draw a smooth quadratic Bezier curve to a new point.
- 'A' or 'elliptical-arc': Draw an elliptical arc to a new point.

* **params**

    Optional parameters associated with the path command.

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

#### Source: [index.d.ts:806](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L806)

### PenpotLayoutChildProperties

Properties for defining the layout of a child element in Penpot.

#### Properties
* **absolute**

    ```javascript
    absolute: boolean
    ```
    Specifies whether the child element is positioned absolutely.
When set to true, the element is taken out of the normal document flow and positioned relative to its nearest positioned ancestor.

* **zIndex**

    ```javascript
    zIndex: number
    ```
    Defines the stack order of the child element
Elements with a higher zIndex will be displayed in front of those with a lower zIndex.

* **horizontalSizing**

    ```javascript
    horizontalSizing: fill | auto | fix
    ```
    Determines the horizontal sizing behavior of the child element
- 'auto': The width is determined by the content.
- 'fill': The element takes up the available width.
- 'fix': The width is fixed.

* **verticalSizing**

    ```javascript
    verticalSizing: fill | auto | fix
    ```
    Determines the vertical sizing behavior of the child element.
- 'auto': The height is determined by the content.
- 'fill': The element takes up the available height.
- 'fix': The height is fixed.

* **alignSelf**

    ```javascript
    alignSelf: center | auto | stretch | start | end
    ```
    Aligns the child element within its container.
- 'auto': Default alignment.
- 'start': Aligns the element at the start of the container.
- 'center': Centers the element within the container.
- 'end': Aligns the element at the end of the container.
- 'stretch': Stretches the element to fill the container.

* **horizontalMargin**

    ```javascript
    horizontalMargin: number
    ```
    Sets the horizontal margin of the child element.
This is the space on the left and right sides of the element.

* **verticalMargin**

    ```javascript
    verticalMargin: number
    ```
    Sets the vertical margin of the child element.
This is the space on the top and bottom sides of the element.

* **topMargin**

    ```javascript
    topMargin: number
    ```
    Sets the top margin of the child element.
This is the space above the element.

* **rightMargin**

    ```javascript
    rightMargin: number
    ```
    Sets the right margin of the child element.
This is the space to the right of the element.

* **bottomMargin**

    ```javascript
    bottomMargin: number
    ```
    Sets the bottom margin of the child element.
This is the space below the element.

* **leftMargin**

    ```javascript
    leftMargin: number
    ```
    Sets the left margin of the child element.
This is the space to the left of the element.

* **maxWidth**

    ```javascript
    maxWidth: null | number
    ```
    Defines the maximum width of the child element.
If set to null, there is no maximum width constraint.

* **maxHeight**

    ```javascript
    maxHeight: null | number
    ```
    Defines the maximum height of the child element.
If set to null, there is no maximum height constraint.

* **minWidth**

    ```javascript
    minWidth: null | number
    ```
    Defines the minimum width of the child element.
If set to null, there is no minimum width constraint.

* **minHeight**

    ```javascript
    minHeight: null | number
    ```
    Defines the minimum height of the child element.
If set to null, there is no minimum height constraint.

#### Source: [index.d.ts:907](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L907)

### PenpotLayoutCellProperties

Properties for defining the layout of a cell in Penpot.

#### Properties
* **row**

    ```javascript
    row?: number
    ```
    The row index of the cell.
This value is optional and indicates the starting row of the cell.

* **rowSpan**

    ```javascript
    rowSpan?: number
    ```
    The number of rows the cell should span.
This value is optional and determines the vertical span of the cell.

* **column**

    ```javascript
    column?: number
    ```
    The column index of the cell.
This value is optional and indicates the starting column of the cell.

* **columnSpan**

    ```javascript
    columnSpan?: number
    ```
    The number of columns the cell should span.
This value is optional and determines the horizontal span of the cell.

* **areaName**

    ```javascript
    areaName?: string
    ```
    The name of the grid area that this cell belongs to.
This value is optional and can be used to define named grid areas.

* **position**

    ```javascript
    position?: area | auto | manual
    ```
    The positioning mode of the cell.
This value can be 'auto', 'manual', or 'area' and determines how the cell is positioned within the layout.

#### Source: [index.d.ts:1009](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1009)

### PenpotShapeBase

Represents the base properties and methods of a shape in Penpot.
This interface provides common properties and methods shared by all shapes.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **fills**

    ```javascript
    fills: mixed | 
    ```
    The fills applied to the shape.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

#### Source: [index.d.ts:1051](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1051)

### PenpotFrame

Represents a frame in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties and methods specific to frames.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "frame"
    ```
    The type of the shape, which is always 'frame' for frames.

* **grid**

    ```javascript
    grid?: PenpotGridLayout
    ```
    The grid layout configuration of the frame, if applicable.

* **flex**

    ```javascript
    flex?: PenpotFlexLayout
    ```
    The flex layout configuration of the frame, if applicable.

* **guides**

    ```javascript
    guides: PenpotFrameGuide
    ```
    The guides associated with the frame.

* **horizontalSizing**

    ```javascript
    horizontalSizing?: auto | fix
    ```
    The horizontal sizing behavior of the frame.

* **verticalSizing**

    ```javascript
    verticalSizing?: auto | fix
    ```
    The vertical sizing behavior of the frame.

* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

* **children**

    ```javascript
    children: PenpotShape[]
    ```
    The children shapes contained within the frame.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  Appends a child shape to the frame.

  **Parameters:**

    `child` The child shape to append.

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  Inserts a child shape at the specified index within the frame.

  **Parameters:**

    `index` The index at which to insert the child shape.

    `child` The child shape to insert.

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
  Adds a flex layout configuration to the frame.
Returns the flex layout configuration added to the frame.

  **Returns:**
`PenpotFlexLayout`

* **addGridLayout**

  ```javascript
  addGridLayout(): PenpotGridLayout
  ```
  Adds a grid layout configuration to the frame.
Returns the grid layout configuration added to the frame.

  **Returns:**
`PenpotGridLayout`

#### Source: [index.d.ts:1311](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1311)

### PenpotGroup

Represents a group of shapes in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties and methods specific to groups.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **fills**

    ```javascript
    fills: mixed | 
    ```
    The fills applied to the shape.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "group"
    ```
    The type of the shape, which is always 'group' for groups.

* **children**

    ```javascript
    children: PenpotShape[]
    ```
    The children shapes contained within the group.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  Appends a child shape to the group.

  **Parameters:**

    `child` The child shape to append.

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  Inserts a child shape at the specified index within the group.

  **Parameters:**

    `index` The index at which to insert the child shape.

    `child` The child shape to insert.

  ```javascript
  index: number
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **isMask**

  ```javascript
  isMask(): boolean
  ```
  Checks if the group is currently a mask.
A mask defines a clipping path for its child shapes.

  **Returns:**
`boolean`

* **makeMask**

  ```javascript
  makeMask(): void
  ```
  Converts the group into a mask.

  **Returns:**
`void`

* **removeMask**

  ```javascript
  removeMask(): void
  ```
  Removes the mask from the group.

  **Returns:**
`void`

#### Source: [index.d.ts:1379](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1379)

### PenpotBool

Represents a boolean operation shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties and methods specific to boolean operations.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "bool"
    ```
    The type of the shape, which is always 'bool' for boolean operation shapes.

* **content**

    ```javascript
    content: PenpotPathCommand[]
    ```
    The content of the boolean shape, defined as an array of path commands.

* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

* **children**

    ```javascript
    children: PenpotShape[]
    ```
    The children shapes contained within the boolean shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

* **toD**

  ```javascript
  toD(): string
  ```
  Converts the boolean shape to its path data representation.
Returns the path data (d attribute) as a string.

  **Returns:**
`string`

* **appendChild**

  ```javascript
  appendChild(child): void
  ```
  Appends a child shape to the boolean shape.

  **Parameters:**

    `child` The child shape to append.

  ```javascript
  child: PenpotShape
  
  ```
  **Returns:**
`void`

* **insertChild**

  ```javascript
  insertChild(index,child): void
  ```
  Inserts a child shape at the specified index within the boolean shape.

  **Parameters:**

    `index` The index at which to insert the child shape.

    `child` The child shape to insert.

  ```javascript
  index: number
  child: PenpotShape
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:1432](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1432)

### PenpotRectangle

Represents a rectangle shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties specific to rectangles.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "rect"
    ```
    The type of the shape, which is always 'rect' for rectangle shapes.

* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

#### Source: [index.d.ts:1475](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1475)

### PenpotPath

Represents a path shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties and methods specific to paths.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "path"
    ```
    The type of the shape, which is always 'path' for path shapes.

* **content**

    ```javascript
    content: PenpotPathCommand[]
    ```
    The content of the path shape, defined as an array of path commands.

* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

* **toD**

  ```javascript
  toD(): string
  ```
  Converts the path shape to its path data representation.
Returns the path data (d attribute) as a string.

  **Returns:**
`string`

#### Source: [index.d.ts:1491](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1491)

### PenpotTextRange

Represents a range of text within a PenpotText shape.
This interface provides properties for styling and formatting text ranges.

#### Properties
* **shape**

    ```javascript
    shape: PenpotText
    ```
    The PenpotText shape to which this text range belongs.

* **characters**

    ```javascript
    characters: string
    ```
    The characters associated with the current text range.

* **fontId**

    ```javascript
    fontId: string
    ```
    The font ID of the text range. It can be a specific font ID or 'mixed' if multiple fonts are used.

* **fontFamily**

    ```javascript
    fontFamily: string
    ```
    The font family of the text range. It can be a specific font family or 'mixed' if multiple font families are used.

* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
    The font variant ID of the text range. It can be a specific font variant ID or 'mixed' if multiple font variants are used.

* **fontSize**

    ```javascript
    fontSize: string
    ```
    The font size of the text range. It can be a specific font size or 'mixed' if multiple font sizes are used.

* **fontWeight**

    ```javascript
    fontWeight: string
    ```
    The font weight of the text range. It can be a specific font weight or 'mixed' if multiple font weights are used.

* **fontStyle**

    ```javascript
    fontStyle: null | mixed | normal | italic
    ```
    The font style of the text range. It can be a specific font style or 'mixed' if multiple font styles are used.

* **lineHeight**

    ```javascript
    lineHeight: string
    ```
    The line height of the text range. It can be a specific line height or 'mixed' if multiple line heights are used.

* **letterSpacing**

    ```javascript
    letterSpacing: string
    ```
    The letter spacing of the text range. It can be a specific letter spacing or 'mixed' if multiple letter spacings are used.

* **textTransform**

    ```javascript
    textTransform: null | mixed | none | uppercase | capitalize | lowercase
    ```
    The text transform applied to the text range. It can be a specific text transform or 'mixed' if multiple text transforms are used.

* **textDecoration**

    ```javascript
    textDecoration: null | mixed | none | underline | line-through
    ```
    The text decoration applied to the text range. It can be a specific text decoration or 'mixed' if multiple text decorations are used.

* **direction**

    ```javascript
    direction: null | mixed | ltr | rtl
    ```
    The text direction for the text range. It can be a specific direction or 'mixed' if multiple directions are used.

* **fills**

    ```javascript
    fills: mixed | 
    ```
    The fill styles applied to the text range.

* **align**

    ```javascript
    align: null | center | mixed | left | right | justify
    ```
    The horizontal alignment of the text range. It can be a specific alignment or 'mixed' if multiple alignments are used.

* **verticalAlign**

    ```javascript
    verticalAlign: null | center | mixed | top | bottom
    ```
    The vertical alignment of the text range. It can be a specific alignment or 'mixed' if multiple alignments are used.

#### Methods
* **applyTypography**

  ```javascript
  applyTypography(typography): void
  ```
  Applies a typography style to the text range.
This method sets various typography properties for the text range according to the given typography style.

  **Parameters:**

    `typography` The typography style to apply.

  ```javascript
  typography: PenpotLibraryTypography
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:1516](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1516)

### PenpotText

PenpotText represents a text element in the Penpot application, extending the base shape interface.
It includes various properties to define the text content and its styling attributes.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **fills**

    ```javascript
    fills: mixed | 
    ```
    The fills applied to the shape.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "text"
    ```
    The type of the shape, which is always 'text' for text shapes.

* **characters**

    ```javascript
    characters: string
    ```
    The characters contained within the text shape.

* **growType**

    ```javascript
    growType: fixed | auto-width | auto-height
    ```
    The grow type of the text shape, defining how the text box adjusts its size.
Possible values are:
- 'fixed': Fixed size.
- 'auto-width': Adjusts width automatically.
- 'auto-height': Adjusts height automatically.

* **fontId**

    ```javascript
    fontId: string
    ```
    The font ID used in the text shape, or 'mixed' if multiple fonts are used.

* **fontFamily**

    ```javascript
    fontFamily: string
    ```
    The font family used in the text shape, or 'mixed' if multiple font families are used.

* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
    The font variant ID used in the text shape, or 'mixed' if multiple font variants are used.

* **fontSize**

    ```javascript
    fontSize: string
    ```
    The font size used in the text shape, or 'mixed' if multiple font sizes are used.

* **fontWeight**

    ```javascript
    fontWeight: string
    ```
    The font weight used in the text shape, or 'mixed' if multiple font weights are used.

* **fontStyle**

    ```javascript
    fontStyle: null | mixed | normal | italic
    ```
    The font style used in the text shape, or 'mixed' if multiple font styles are used.

* **lineHeight**

    ```javascript
    lineHeight: string
    ```
    The line height used in the text shape, or 'mixed' if multiple line heights are used.

* **letterSpacing**

    ```javascript
    letterSpacing: string
    ```
    The letter spacing used in the text shape, or 'mixed' if multiple letter spacings are used.

* **textTransform**

    ```javascript
    textTransform: null | mixed | uppercase | capitalize | lowercase
    ```
    The text transform applied to the text shape, or 'mixed' if multiple text transforms are used.

* **textDecoration**

    ```javascript
    textDecoration: null | mixed | underline | line-through
    ```
    The text decoration applied to the text shape, or 'mixed' if multiple text decorations are used.

* **direction**

    ```javascript
    direction: null | mixed | ltr | rtl
    ```
    The text direction for the text shape, or 'mixed' if multiple directions are used.

* **align**

    ```javascript
    align: null | center | mixed | left | right | justify
    ```
    The horizontal alignment of the text shape. It can be a specific alignment or 'mixed' if multiple alignments are used.

* **verticalAlign**

    ```javascript
    verticalAlign: null | center | top | bottom
    ```
    The vertical alignment of the text shape. It can be a specific alignment or 'mixed' if multiple alignments are used.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

* **getRange**

  ```javascript
  getRange(start,end): PenpotTextRange
  ```
  Gets a text range within the text shape.
Returns a PenpotTextRange object representing the specified text range.

  **Parameters:**

    `start` The start index of the text range.

    `end` The end index of the text range.

  ```javascript
  start: number
  end: number
  
  ```
  **Returns:**
`PenpotTextRange`

* **applyTypography**

  ```javascript
  applyTypography(typography): void
  ```
  Applies a typography style to the text shape.

    **Example:**

    This method sets various typography properties for the text shape according to the given typography style.

  **Parameters:**

    `typography` The typography style to apply.

  ```javascript
  typography: PenpotLibraryTypography
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:1615](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1615)

### PenpotEllipse

Represents an ellipse shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties specific to ellipses.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "circle"
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

#### Source: [index.d.ts:1719](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1719)

### PenpotSvgRaw

Represents an SVG raw shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties specific to raw SVG shapes.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **fills**

    ```javascript
    fills: mixed | 
    ```
    The fills applied to the shape.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "svg-raw"
    ```
#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

#### Source: [index.d.ts:1732](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1732)

### PenpotImage

Represents an image shape in Penpot.
This interface extends  `PenpotShapeBase`  and includes properties specific to image shapes.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the shape.

* **name**

    ```javascript
    name: string
    ```
    The name of the shape.

* **x**

    ```javascript
    x: number
    ```
    The x-coordinate of the shape's position.

* **y**

    ```javascript
    y: number
    ```
    The y-coordinate of the shape's position.

* **width**

    ```javascript
    width: number
    ```
    The width of the shape.

* **height**

    ```javascript
    height: number
    ```
    The height of the shape.

* **blocked**

    ```javascript
    blocked: boolean
    ```
    Indicates whether the shape is blocked.

* **hidden**

    ```javascript
    hidden: boolean
    ```
    Indicates whether the shape is hidden.

* **proportionLock**

    ```javascript
    proportionLock: boolean
    ```
    Indicates whether the shape has proportion lock enabled.

* **constraintsHorizontal**

    ```javascript
    constraintsHorizontal: center | left | right | leftright | scale
    ```
    The horizontal constraints applied to the shape.

* **constraintsVertical**

    ```javascript
    constraintsVertical: center | scale | top | bottom | topbottom
    ```
    The vertical constraints applied to the shape.

* **borderRadius**

    ```javascript
    borderRadius: number
    ```
    The border radius of the shape.

* **borderRadiusTopLeft**

    ```javascript
    borderRadiusTopLeft: number
    ```
    The border radius of the top-left corner of the shape.

* **borderRadiusTopRight**

    ```javascript
    borderRadiusTopRight: number
    ```
    The border radius of the top-right corner of the shape.

* **borderRadiusBottomRight**

    ```javascript
    borderRadiusBottomRight: number
    ```
    The border radius of the bottom-right corner of the shape.

* **borderRadiusBottomLeft**

    ```javascript
    borderRadiusBottomLeft: number
    ```
    The border radius of the bottom-left corner of the shape.

* **opacity**

    ```javascript
    opacity: number
    ```
    The opacity of the shape.

* **blendMode**

    ```javascript
    blendMode: difference | normal | darken | multiply | color-burn | lighten | screen | color-dodge | overlay | soft-light | hard-light | exclusion | hue | saturation | color | luminosity
    ```
    The blend mode applied to the shape.

* **shadows**

    ```javascript
    shadows: PenpotShadow[]
    ```
    The shadows applied to the shape.

* **blur**

    ```javascript
    blur?: PenpotBlur
    ```
    The blur effect applied to the shape.

* **exports**

    ```javascript
    exports: PenpotExport[]
    ```
    The export settings of the shape.

* **frameX**

    ```javascript
    frameX: number
    ```
    The x-coordinate of the shape relative to its frame.

* **frameY**

    ```javascript
    frameY: number
    ```
    The y-coordinate of the shape relative to its frame.

* **parentX**

    ```javascript
    parentX: number
    ```
    The x-coordinate of the shape relative to its parent.

* **parentY**

    ```javascript
    parentY: number
    ```
    The y-coordinate of the shape relative to its parent.

* **flipX**

    ```javascript
    flipX: boolean
    ```
    Indicates whether the shape is flipped horizontally.

* **flipY**

    ```javascript
    flipY: boolean
    ```
    Indicates whether the shape is flipped vertically.

* **rotation**

    ```javascript
    rotation: number
    ```
    Returns the rotation in degrees of the shape with respect to it's center.

* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
    The strokes applied to the shape.

* **layoutChild**

    ```javascript
    layoutChild?: PenpotLayoutChildProperties
    ```
    Layout properties for children of the shape.

* **layoutCell**

    ```javascript
    layoutCell?: PenpotLayoutChildProperties
    ```
    Layout properties for cells in a grid layout.

* **componentRefShape**

    ```javascript
    componentRefShape: null | PenpotShape
    ```
* **componentRoot**

    ```javascript
    componentRoot: null | PenpotShape
    ```
* **componentHead**

    ```javascript
    componentHead: null | PenpotShape
    ```
* **component**

    ```javascript
    component: null | PenpotLibraryComponent
    ```
* **type**

    ```javascript
    type: "image"
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
    The fills applied to the shape.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **isComponentInstance**

  ```javascript
  isComponentInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentMainInstance**

  ```javascript
  isComponentMainInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentCopyInstance**

  ```javascript
  isComponentCopyInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentNestedInstance**

  ```javascript
  isComponentNestedInstance(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentRoot**

  ```javascript
  isComponentRoot(): boolean
  ```
  **Returns:**
`boolean`

* **isComponentHead**

  ```javascript
  isComponentHead(): boolean
  ```
  **Returns:**
`boolean`

* **resize**

  ```javascript
  resize(width,height): void
  ```
  Resizes the shape to the specified width and height.

  **Parameters:**

    `width` The new width of the shape.

    `height` The new height of the shape.

  ```javascript
  width: number
  height: number
  
  ```
  **Returns:**
`void`

* **rotate**

  ```javascript
  rotate(angle,center): void
  ```
  Rotates the shape in relation with the given center.

  **Parameters:**

    `angle` Angle in degrees to rotate.

    `center` Center of the transform rotation. If not send will use the geometri center of the shapes.

  ```javascript
  angle: number
  center?: null | 
  
  ```
  **Returns:**
`void`

* **clone**

  ```javascript
  clone(): PenpotShape
  ```
  Creates a clone of the shape.
Returns a new instance of the shape with identical properties.

  **Returns:**
`PenpotShape`

* **remove**

  ```javascript
  remove(): void
  ```
  Removes the shape from its parent.

  **Returns:**
`void`

#### Source: [index.d.ts:1740](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1740)

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
#### Source: [index.d.ts:1781](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1781)

### EventsMap

Represents a mapping of events to their corresponding types in Penpot.
This interface provides information about various events that can be triggered in the application.

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

#### Source: [index.d.ts:1806](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1806)

### PenpotLibraryElement

Represents an element in a Penpot library.
This interface provides information about a specific element in a library.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library element.

* **libraryId**

    ```javascript
    libraryId: string
    ```
    The unique identifier of the library to which the element belongs.

* **name**

    ```javascript
    name: string
    ```
    The name of the library element.

* **path**

    ```javascript
    path: string
    ```
    The path of the library element.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

#### Source: [index.d.ts:1839](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1839)

### PenpotLibraryColor

Represents a color element from a library in Penpot.
This interface extends  `PenpotLibraryElement`  and includes properties specific to color elements.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library element.

* **libraryId**

    ```javascript
    libraryId: string
    ```
    The unique identifier of the library to which the element belongs.

* **name**

    ```javascript
    name: string
    ```
    The name of the library element.

* **path**

    ```javascript
    path: string
    ```
    The path of the library element.

* **color**

    ```javascript
    color?: string
    ```
    The color value of the library color.

* **opacity**

    ```javascript
    opacity?: number
    ```
    The opacity value of the library color.

* **gradient**

    ```javascript
    gradient?: PenpotGradient
    ```
    The gradient value of the library color, if it's a gradient.

* **image**

    ```javascript
    image?: PenpotImageData
    ```
    The image data of the library color, if it's an image fill.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **asFill**

  ```javascript
  asFill(): PenpotFill
  ```
  Converts the library color into a fill object.
Returns a  `PenpotFill`  object representing the color as a fill.

    **Example:**

    ```js
    const fill = libraryColor.asFill();
    ```

  **Returns:**
`PenpotFill`

* **asStroke**

  ```javascript
  asStroke(): PenpotStroke
  ```
  Converts the library color into a stroke object.
Returns a  `PenpotStroke`  object representing the color as a stroke.

    **Example:**

    ```js
    const stroke = libraryColor.asStroke();
    ```

  **Returns:**
`PenpotStroke`

#### Source: [index.d.ts:1865](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1865)

### PenpotLibraryTypography

Represents a typography element from a library in Penpot.
This interface extends  `PenpotLibraryElement`  and includes properties specific to typography elements.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library element.

* **libraryId**

    ```javascript
    libraryId: string
    ```
    The unique identifier of the library to which the element belongs.

* **name**

    ```javascript
    name: string
    ```
    The name of the library element.

* **path**

    ```javascript
    path: string
    ```
    The path of the library element.

* **fontId**

    ```javascript
    fontId: string
    ```
    The unique identifier of the font used in the typography element.

* **fontFamily**

    ```javascript
    fontFamily: string
    ```
    The font family of the typography element.

* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
    The unique identifier of the font variant used in the typography element.

* **fontSize**

    ```javascript
    fontSize: string
    ```
    The font size of the typography element.

* **fontWeight**

    ```javascript
    fontWeight: string
    ```
    The font weight of the typography element.

* **fontStyle**

    ```javascript
    fontStyle?: null | normal | italic
    ```
    The font style of the typography element.

* **lineHeight**

    ```javascript
    lineHeight: string
    ```
    The line height of the typography element.

* **letterSpacing**

    ```javascript
    letterSpacing: string
    ```
    The letter spacing of the typography element.

* **textTransform**

    ```javascript
    textTransform?: null | uppercase | capitalize | lowercase
    ```
    The text transform applied to the typography element.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **applyToText**

  ```javascript
  applyToText(shape): void
  ```
  Applies the typography styles to a text shape.

    **Example:**

    ```js
    typographyElement.applyToText(textShape);
    ```

  **Parameters:**

    `shape` The text shape to apply the typography styles to.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`void`

* **applyToTextRange**

  ```javascript
  applyToTextRange(range): void
  ```
  Applies the typography styles to a range of text within a text shape.

    **Example:**

    ```js
    typographyElement.applyToTextRange(textShape);
    ```

  **Parameters:**

  ```javascript
  range: PenpotTextRange
  
  ```
  **Returns:**
`void`

* **setFont**

  ```javascript
  setFont(font,variant): void
  ```
  Sets the font and optionally its variant for the typography element.

    **Example:**

    ```js
    typographyElement.setFont(newFont, newVariant);
    ```

  **Parameters:**

    `font` The font to set.

    `variant` The font variant to set (optional).

  ```javascript
  font: PenpotFont
  variant?: PenpotFontVariant
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:1910](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1910)

### PenpotLibraryComponent

Represents a component element from a library in Penpot.
This interface extends  `PenpotLibraryElement`  and includes properties specific to component elements.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library element.

* **libraryId**

    ```javascript
    libraryId: string
    ```
    The unique identifier of the library to which the element belongs.

* **name**

    ```javascript
    name: string
    ```
    The name of the library element.

* **path**

    ```javascript
    path: string
    ```
    The path of the library element.

* **mainInstance**

    ```javascript
    mainInstance: PenpotShape
    ```
#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **instance**

  ```javascript
  instance(): PenpotShape
  ```
  Creates an instance of the component.
Returns a  `PenpotShape`  object representing the instance of the component.

    **Example:**

    ```js
    const componentInstance = libraryComponent.instance();
    ```

  **Returns:**
`PenpotShape`

#### Source: [index.d.ts:1992](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1992)

### PenpotLibrarySummary

Represents a summary of a Penpot library.
This interface provides properties for summarizing various aspects of a Penpot library.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library.

* **name**

    ```javascript
    name: string
    ```
    The name of the library.

* **numColors**

    ```javascript
    numColors: number
    ```
    The number of colors in the library.

* **numComponents**

    ```javascript
    numComponents: number
    ```
    The number of components in the library.

* **numTypographies**

    ```javascript
    numTypographies: number
    ```
    The number of typographies in the library.

#### Source: [index.d.ts:2013](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2013)

### PenpotLibrary

Represents a library in Penpot, containing colors, typographies, and components.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the library.

* **name**

    ```javascript
    name: string
    ```
    The name of the library.

* **colors**

    ```javascript
    colors: PenpotLibraryColor[]
    ```
    An array of color elements in the library.

* **typographies**

    ```javascript
    typographies: PenpotLibraryTypography[]
    ```
    An array of typography elements in the library.

* **components**

    ```javascript
    components: PenpotLibraryComponent[]
    ```
    An array of component elements in the library.

#### Methods
* **getPluginData**

  ```javascript
  getPluginData(key): string
  ```
  Retrieves the plugin-specific data associated with the given key.

  **Parameters:**

    `key` The key for which to retrieve the data.
Returns the data associated with the key as a string.

  ```javascript
  key: string
  
  ```
  **Returns:**
`string`

* **setPluginData**

  ```javascript
  setPluginData(key,value): void
  ```
  Sets the plugin-specific data for the given key.

  **Parameters:**

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getPluginDataKeys**

  ```javascript
  getPluginDataKeys(): string[]
  ```
  Retrieves all the keys for the plugin-specific data.

Returns an array of strings representing all the keys.

  **Returns:**
`string[]`

* **getSharedPluginData**

  ```javascript
  getSharedPluginData(namespace,key): string
  ```
  Retrieves the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to retrieve the data.
Returns the shared data associated with the key as a string.

  ```javascript
  namespace: string
  key: string
  
  ```
  **Returns:**
`string`

* **setSharedPluginData**

  ```javascript
  setSharedPluginData(namespace,key,value): void
  ```
  Sets the shared plugin-specific data for the given namespace and key.

  **Parameters:**

    `namespace` The namespace for the shared data.

    `key` The key for which to set the data.

    `value` The data to set for the key.

  ```javascript
  namespace: string
  key: string
  value: string
  
  ```
  **Returns:**
`void`

* **getSharedPluginDataKeys**

  ```javascript
  getSharedPluginDataKeys(namespace): string[]
  ```
  Retrieves all the keys for the shared plugin-specific data in the given namespace.

  **Parameters:**

    `namespace` The namespace for the shared data.
Returns an array of strings representing all the keys in the namespace.

  ```javascript
  namespace: string
  
  ```
  **Returns:**
`string[]`

* **createColor**

  ```javascript
  createColor(): PenpotLibraryColor
  ```
  Creates a new color element in the library.
Returns a new  `PenpotLibraryColor`  object representing the created color element.

    **Example:**

    ```js
    const newColor = library.createColor();
    ```

  **Returns:**
`PenpotLibraryColor`

* **createTypography**

  ```javascript
  createTypography(): PenpotLibraryTypography
  ```
  Creates a new typography element in the library.
Returns a new  `PenpotLibraryTypography`  object representing the created typography element.

    **Example:**

    ```js
    const newTypography = library.createTypography();
    ```

  **Returns:**
`PenpotLibraryTypography`

* **createComponent**

  ```javascript
  createComponent(shapes): PenpotLibraryComponent
  ```
  Creates a new component element in the library using the provided shapes.

    **Example:**

    ```js
    const newComponent = library.createComponent([shape1, shape2]);
    ```

  **Parameters:**

    `shapes` An array of  `PenpotShape`  objects representing the shapes to be included in the component.
Returns a new  `PenpotLibraryComponent`  object representing the created component element.

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`PenpotLibraryComponent`

#### Source: [index.d.ts:2043](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2043)

### PenpotFontVariant

Represents a font variant in Penpot, which defines a specific style variation of a font.
This interface provides properties for describing the characteristics of a font variant.

#### Properties
* **name**

    ```javascript
    name: string
    ```
    The name of the font variant.

* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
    The unique identifier of the font variant.

* **fontWeight**

    ```javascript
    fontWeight: string
    ```
    The font weight of the font variant.

* **fontStyle**

    ```javascript
    fontStyle: normal | italic
    ```
    The font style of the font variant.

#### Source: [index.d.ts:2153](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2153)

### PenpotFont

Represents a font in Penpot, which includes details about the font family, variants, and styling options.
This interface provides properties and methods for describing and applying fonts within Penpot.

#### Properties
* **name**

    ```javascript
    name: string
    ```
    This property holds the human-readable name of the font.

* **fontId**

    ```javascript
    fontId: string
    ```
    The unique identifier of the font.

* **fontFamily**

    ```javascript
    fontFamily: string
    ```
    The font family of the font.

* **fontStyle**

    ```javascript
    fontStyle?: null | normal | italic
    ```
    The default font style of the font.

* **fontVariantId**

    ```javascript
    fontVariantId: string
    ```
    The default font variant ID of the font.

* **fontWeight**

    ```javascript
    fontWeight: string
    ```
    The default font weight of the font.

* **variants**

    ```javascript
    variants: PenpotFontVariant[]
    ```
    An array of font variants available for the font.

#### Methods
* **applyToText**

  ```javascript
  applyToText(text,variant): void
  ```
  Applies the font styles to a text shape.

  **Parameters:**

    `text` The text shape to apply the font styles to.

    `variant` Optional. The specific font variant to apply. If not provided, applies the default variant.

  ```javascript
  text: PenpotText
  variant?: PenpotFontVariant
  
  ```
  **Returns:**
`void`

* **applyToRange**

  ```javascript
  applyToRange(range,variant): void
  ```
  Applies the font styles to a text range within a text shape.

  **Parameters:**

    `range` The text range to apply the font styles to.

    `variant` Optional. The specific font variant to apply. If not provided, applies the default variant.

  ```javascript
  range: PenpotTextRange
  variant?: PenpotFontVariant
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:2179](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2179)

### PenpotFontsContext

Represents the context for managing fonts in Penpot.
This interface provides methods to interact with fonts, such as retrieving fonts by ID or name.

#### Properties
* **all**

    ```javascript
    all: PenpotFont[]
    ```
    An array containing all available fonts.

#### Methods
* **findById**

  ```javascript
  findById(id): null | PenpotFont
  ```
  Finds a font by its unique identifier.
Returns the  `PenpotFont`  object if found, otherwise  `null` .

  **Parameters:**

    `id` The ID of the font to find.

  ```javascript
  id: string
  
  ```
  **Returns:**
`null | PenpotFont`

* **findByName**

  ```javascript
  findByName(name): null | PenpotFont
  ```
  Finds a font by its name.
Returns the  `PenpotFont`  object if found, otherwise  `null` .

  **Parameters:**

    `name` The name of the font to find.

  ```javascript
  name: string
  
  ```
  **Returns:**
`null | PenpotFont`

* **findAllById**

  ```javascript
  findAllById(id): PenpotFont[]
  ```
  Finds all fonts matching a specific ID.
Returns an array of  `PenpotFont`  objects matching the provided ID.

  **Parameters:**

    `id` The ID to match against.

  ```javascript
  id: string
  
  ```
  **Returns:**
`PenpotFont[]`

* **findAllByName**

  ```javascript
  findAllByName(name): PenpotFont[]
  ```
  Finds all fonts matching a specific name.
Returns an array of  `PenpotFont`  objects matching the provided name.

  **Parameters:**

    `name` The name to match against.

  ```javascript
  name: string
  
  ```
  **Returns:**
`PenpotFont[]`

#### Source: [index.d.ts:2234](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2234)

### PenpotUser

Represents a user in Penpot.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the user.

    **Example:**

    ```js
    const userId = user.id;
    ```

* **name**

    ```javascript
    name?: string
    ```
    The name of the user.

    **Example:**

    ```js
    const userName = user.name;
    ```

* **avatarUrl**

    ```javascript
    avatarUrl?: string
    ```
    The URL of the user's avatar image.

    **Example:**

    ```js
    const avatarUrl = user.avatarUrl;
    ```

* **color**

    ```javascript
    color: string
    ```
    The color associated with the user.

    **Example:**

    ```js
    const userColor = user.color;
    ```

* **sessionId**

    ```javascript
    sessionId?: string
    ```
    The session ID of the user.

    **Example:**

    ```js
    const sessionId = user.sessionId;
    ```

#### Source: [index.d.ts:2272](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2272)

### PenpotActiveUser

Represents an active user in Penpot, extending the  `PenpotUser`  interface.
This interface includes additional properties specific to active users.

#### Properties
* **id**

    ```javascript
    id: string
    ```
    The unique identifier of the user.

    **Example:**

    ```js
    const userId = user.id;
    ```

* **name**

    ```javascript
    name?: string
    ```
    The name of the user.

    **Example:**

    ```js
    const userName = user.name;
    ```

* **avatarUrl**

    ```javascript
    avatarUrl?: string
    ```
    The URL of the user's avatar image.

    **Example:**

    ```js
    const avatarUrl = user.avatarUrl;
    ```

* **color**

    ```javascript
    color: string
    ```
    The color associated with the user.

    **Example:**

    ```js
    const userColor = user.color;
    ```

* **sessionId**

    ```javascript
    sessionId?: string
    ```
    The session ID of the user.

    **Example:**

    ```js
    const sessionId = user.sessionId;
    ```

* **position**

    The position of the active user.

    **Example:**

    ```js
    const userPosition = activeUser.position;
    ```

  * **x**

  * **y**

* **zoom**

    ```javascript
    zoom?: number
    ```
    The zoom level of the active user.

    **Example:**

    ```js
    const userZoom = activeUser.zoom;
    ```

#### Source: [index.d.ts:2323](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2323)

### PenpotContext

Represents the context of Penpot, providing access to various Penpot functionalities and data.

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
    The root shape in the current Penpot context.

    **Example:**

    ```js
    const rootShape = context.root;
    ```

* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
    The current page in the Penpot context.

    **Example:**

    ```js
    const currentPage = context.currentPage;
    ```

* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
    The viewport settings in the Penpot context.

    **Example:**

    ```js
    const viewportSettings = context.viewport;
    ```

* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
    The library context in the Penpot context, including both local and connected libraries.

    **Example:**

    ```js
    const libraryContext = context.library;
    ```

* **fonts**

    ```javascript
    fonts: PenpotFontsContext
    ```
    The fonts context in the Penpot context, providing methods to manage fonts.

* **currentUser**

    ```javascript
    currentUser: PenpotUser
    ```
    The current user in the Penpot context.

    **Example:**

    ```js
    const currentUser = context.currentUser;
    ```

* **activeUsers**

    ```javascript
    activeUsers: PenpotActiveUser
    ```
    An array of active users in the Penpot context.

    **Example:**

    ```js
    const activeUsers = context.activeUsers;
    ```

* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
    The currently selected shapes in Penpot.

    **Example:**

    ```js
    const selectedShapes = context.selection;
    ```

#### Methods
* **getFile**

  ```javascript
  getFile(): null | PenpotFile
  ```
  Retrieves file data from the current Penpot context.
Returns the file data or  `null`  if no file is available.

    **Example:**

    ```js
    const fileData = context.getFile();
    ```

  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  Retrieves page data from the current Penpot context.
Returns the page data or  `null`  if no page is available.

    **Example:**

    ```js
    const pageData = context.getPage();
    ```

  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  Retrieves the IDs of the currently selected elements in Penpot.
Returns an array of IDs representing the selected elements.

    **Example:**

    ```js
    const selectedIds = context.getSelected();
    ```

  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  Retrieves the shapes of the currently selected elements in Penpot.
Returns an array of shapes representing the selected elements.

    **Example:**

    ```js
    const selectedShapes = context.getSelectedShapes();
    ```

  **Returns:**
`PenpotShape[]`

* **shapesColors**

  ```javascript
  shapesColors(shapes): undefined[]
  ```
  Retrieves colors applied to the given shapes in Penpot.
Returns an array of colors and their shape information.

  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`undefined[]`

* **replaceColor**

  ```javascript
  replaceColor(shapes,oldColor,newColor): void
  ```
  Replaces a specified old color with a new color in the given shapes.

  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  oldColor: PenpotColor
  newColor: PenpotColor
  
  ```
  **Returns:**
`void`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
  ```
  Retrieves the current theme (light or dark) in Penpot.
Returns the current theme.

    **Example:**

    ```js
    const currentTheme = context.getTheme();
    ```

  **Returns:**
`PenpotTheme`

* **uploadMediaUrl**

  ```javascript
  uploadMediaUrl(name,url): Promise<PenpotImageData>
  ```
  Uploads media to Penpot and retrieves its image data.

    **Example:**

    ```js
    const imageData = await context.uploadMediaUrl('example', 'https://example.com/image.jpg');
    ```

  **Parameters:**

    `name` The name of the media.

    `url` The URL of the media to be uploaded.
Returns a promise that resolves to the image data of the uploaded media.

  ```javascript
  name: string
  url: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **uploadMediaData**

  ```javascript
  uploadMediaData(name,data,mimeType): Promise<PenpotImageData>
  ```
  Uploads media to penpot and retrieves the image data

  **Parameters:**

    `name` The name of the media.

    `data` The image content data
Returns a promise that resolves to the image data of the uploaded media.

  ```javascript
  name: string
  data: Uint8Array
  mimeType: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **group**

  ```javascript
  group(shapes): null | PenpotGroup
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`null | PenpotGroup`

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
  createBoolean(boolType,shapes): null | PenpotBool
  ```
  Creates a PenpotBoolean shape based on the specified boolean operation and shapes.

    **Example:**

    ```js
    const booleanShape = context.createBoolean('union', [shape1, shape2]);
    ```

  **Parameters:**

    `boolType` The type of boolean operation ('union', 'difference', 'exclude', 'intersection').

    `shapes` An array of shapes to perform the boolean operation on.
Returns the newly created PenpotBoolean shape resulting from the boolean operation.

  ```javascript
  boolType: PenpotBoolType
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`null | PenpotBool`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): null | PenpotGroup
  ```
  Creates a PenpotGroup from an SVG string.

    **Example:**

    ```js
    const svgGroup = context.createShapeFromSvg('<svg>...</svg>');
    ```

  **Parameters:**

    `svgString` The SVG string representing the shapes to be converted into a group.
Returns the newly created PenpotGroup containing the shapes from the SVG.

  ```javascript
  svgString: string
  
  ```
  **Returns:**
`null | PenpotGroup`

* **createText**

  ```javascript
  createText(text): null | PenpotText
  ```
  Creates a PenpotText shape with the specified text content.

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
    
    ![example image](https://placehold.co/600x400)

  **Parameters:**

    `text` The text content for the PenpotText shape.
Returns the new created shape, if the shape wasn't created can return null.

  ```javascript
  text: string
  
  ```
  **Returns:**
`null | PenpotText`

* **generateMarkup**

  ```javascript
  generateMarkup(shapes,options): string
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  options: {
    type: undefined
  }
  ```
  **Returns:**
`string`

* **generateStyle**

  ```javascript
  generateStyle(shapes,options): string
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  options: {
    type: undefined
    withPrelude: boolean
    includeChildren: boolean
  }
  ```
  **Returns:**
`string`

* **addListener**

  ```javascript
  addListener(type,callback): symbol
  ```
  **Parameters:**

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
  **Parameters:**

  ```javascript
  listenerId: symbol
  
  ```
  **Returns:**
`void`

#### Source: [index.d.ts:2345](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2345)

### PenpotContextGeometryUtils

Utility methods for geometric calculations in Penpot.

#### Methods
* **center**

  ```javascript
  center(shapes): null | 
  ```
  Calculates the center point of a given array of shapes.
This method computes the geometric center (centroid) of the bounding boxes of the provided shapes.
Returns the center point as an object with  `x`  and  `y`  coordinates, or null if the array is empty.

  **Parameters:**

    `shapes` The array of shapes to calculate the center for.

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`null | `

#### Source: [index.d.ts:2615](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2615)

### PenpotContextTypesUtils

Utility methods for determining the types of Penpot shapes.

#### Methods
* **isFrame**

  ```javascript
  isFrame(shape): undefined
  ```
  Checks if the given shape is a frame.
Returns true if the shape is a PenpotFrame, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isGroup**

  ```javascript
  isGroup(shape): undefined
  ```
  Checks if the given shape is a group.
Returns true if the shape is a PenpotGroup, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isMask**

  ```javascript
  isMask(shape): undefined
  ```
  Checks if the given shape is a mask.
Returns true if the shape is a PenpotGroup (acting as a mask), otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isBool**

  ```javascript
  isBool(shape): undefined
  ```
  Checks if the given shape is a boolean operation.
Returns true if the shape is a PenpotBool, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isRectangle**

  ```javascript
  isRectangle(shape): undefined
  ```
  Checks if the given shape is a rectangle.
Returns true if the shape is a PenpotRectangle, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isPath**

  ```javascript
  isPath(shape): undefined
  ```
  Checks if the given shape is a path.
Returns true if the shape is a PenpotPath, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isText**

  ```javascript
  isText(shape): undefined
  ```
  Checks if the given shape is a text element.
Returns true if the shape is a PenpotText, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isEllipse**

  ```javascript
  isEllipse(shape): undefined
  ```
  Checks if the given shape is an ellipse.
Returns true if the shape is a PenpotEllipse, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

* **isSVG**

  ```javascript
  isSVG(shape): undefined
  ```
  Checks if the given shape is an SVG.
Returns true if the shape is a PenpotSvgRaw, otherwise false.

  **Parameters:**

    `shape` The shape to check.

  ```javascript
  shape: PenpotShape
  
  ```
  **Returns:**
`undefined`

#### Source: [index.d.ts:2629](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2629)

### PenpotContextUtils

Utility methods for various operations in Penpot.

#### Properties
* **geometry**

    ```javascript
    geometry: PenpotContextGeometryUtils
    ```
    Geometry utility methods for Penpot.
Provides methods for geometric calculations, such as finding the center of a group of shapes.

* **types**

    ```javascript
    types: PenpotContextTypesUtils
    ```
    Type utility methods for Penpot.
Provides methods for determining the types of various shapes in Penpot.

#### Source: [index.d.ts:2697](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2697)

### Penpot

These are methods and properties available on the  `penpot`  global object.

#### Properties
* **root**

    ```javascript
    root: PenpotShape
    ```
    The root shape in the current Penpot context.

    **Example:**

    ```js
    const rootShape = context.root;
    ```

* **currentPage**

    ```javascript
    currentPage: PenpotPage
    ```
    The current page in the Penpot context.

    **Example:**

    ```js
    const currentPage = context.currentPage;
    ```

* **viewport**

    ```javascript
    viewport: PenpotViewport
    ```
    The viewport settings in the Penpot context.

    **Example:**

    ```js
    const viewportSettings = context.viewport;
    ```

* **library**

    ```javascript
    library: PenpotLibraryContext
    ```
    The library context in the Penpot context, including both local and connected libraries.

    **Example:**

    ```js
    const libraryContext = context.library;
    ```

* **fonts**

    ```javascript
    fonts: PenpotFontsContext
    ```
    The fonts context in the Penpot context, providing methods to manage fonts.

* **currentUser**

    ```javascript
    currentUser: PenpotUser
    ```
    The current user in the Penpot context.

    **Example:**

    ```js
    const currentUser = context.currentUser;
    ```

* **activeUsers**

    ```javascript
    activeUsers: PenpotActiveUser
    ```
    An array of active users in the Penpot context.

    **Example:**

    ```js
    const activeUsers = context.activeUsers;
    ```

* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
    The currently selected shapes in Penpot.

    **Example:**

    ```js
    const selectedShapes = context.selection;
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
    Sends a message to the plugin UI.

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

    ```javascript
    utils: PenpotContextUtils
    ```
    Provides access to utility functions and context-specific operations.

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
  Adds an event listener for the specified event type.

    **Example:**

    ```js
    penpot.on('pagechange', () => {...do something}).
    ```

  **Parameters:**

    `type` The event type to listen for.

    `callback` The callback function to execute when the event is triggered.

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
  Removes an event listener for the specified event type.

    **Example:**

    ```js
    penpot.off('pagechange', () => {...do something}).
    ```

  **Parameters:**

    `type` The event type to stop listening for.

    `callback` The callback function to remove.

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
  Retrieves file data from the current Penpot context.
Returns the file data or  `null`  if no file is available.

    **Example:**

    ```js
    const fileData = context.getFile();
    ```

  **Returns:**
`null | PenpotFile`

* **getPage**

  ```javascript
  getPage(): null | PenpotPage
  ```
  Retrieves page data from the current Penpot context.
Returns the page data or  `null`  if no page is available.

    **Example:**

    ```js
    const pageData = context.getPage();
    ```

  **Returns:**
`null | PenpotPage`

* **getSelected**

  ```javascript
  getSelected(): string[]
  ```
  Retrieves the IDs of the currently selected elements in Penpot.
Returns an array of IDs representing the selected elements.

    **Example:**

    ```js
    const selectedIds = context.getSelected();
    ```

  **Returns:**
`string[]`

* **getSelectedShapes**

  ```javascript
  getSelectedShapes(): PenpotShape[]
  ```
  Retrieves the shapes of the currently selected elements in Penpot.
Returns an array of shapes representing the selected elements.

    **Example:**

    ```js
    const selectedShapes = context.getSelectedShapes();
    ```

  **Returns:**
`PenpotShape[]`

* **shapesColors**

  ```javascript
  shapesColors(shapes): undefined[]
  ```
  Retrieves colors applied to the given shapes in Penpot.
Returns an array of colors and their shape information.

  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`undefined[]`

* **replaceColor**

  ```javascript
  replaceColor(shapes,oldColor,newColor): void
  ```
  Replaces a specified old color with a new color in the given shapes.

  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  oldColor: PenpotColor
  newColor: PenpotColor
  
  ```
  **Returns:**
`void`

* **getTheme**

  ```javascript
  getTheme(): PenpotTheme
  ```
  Retrieves the current theme (light or dark) in Penpot.
Returns the current theme.

    **Example:**

    ```js
    const currentTheme = context.getTheme();
    ```

  **Returns:**
`PenpotTheme`

* **uploadMediaUrl**

  ```javascript
  uploadMediaUrl(name,url): Promise<PenpotImageData>
  ```
  Uploads media to Penpot and retrieves its image data.

    **Example:**

    ```js
    const imageData = await context.uploadMediaUrl('example', 'https://example.com/image.jpg');
    ```

  **Parameters:**

    `name` The name of the media.

    `url` The URL of the media to be uploaded.
Returns a promise that resolves to the image data of the uploaded media.

  ```javascript
  name: string
  url: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **uploadMediaData**

  ```javascript
  uploadMediaData(name,data,mimeType): Promise<PenpotImageData>
  ```
  Uploads media to penpot and retrieves the image data

  **Parameters:**

    `name` The name of the media.

    `data` The image content data
Returns a promise that resolves to the image data of the uploaded media.

  ```javascript
  name: string
  data: Uint8Array
  mimeType: string
  
  ```
  **Returns:**
`Promise<PenpotImageData>`

* **group**

  ```javascript
  group(shapes): null | PenpotGroup
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`null | PenpotGroup`

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
  createBoolean(boolType,shapes): null | PenpotBool
  ```
  Creates a PenpotBoolean shape based on the specified boolean operation and shapes.

    **Example:**

    ```js
    const booleanShape = context.createBoolean('union', [shape1, shape2]);
    ```

  **Parameters:**

    `boolType` The type of boolean operation ('union', 'difference', 'exclude', 'intersection').

    `shapes` An array of shapes to perform the boolean operation on.
Returns the newly created PenpotBoolean shape resulting from the boolean operation.

  ```javascript
  boolType: PenpotBoolType
  shapes: PenpotShape[]
  
  ```
  **Returns:**
`null | PenpotBool`

* **createShapeFromSvg**

  ```javascript
  createShapeFromSvg(svgString): null | PenpotGroup
  ```
  Creates a PenpotGroup from an SVG string.

    **Example:**

    ```js
    const svgGroup = context.createShapeFromSvg('<svg>...</svg>');
    ```

  **Parameters:**

    `svgString` The SVG string representing the shapes to be converted into a group.
Returns the newly created PenpotGroup containing the shapes from the SVG.

  ```javascript
  svgString: string
  
  ```
  **Returns:**
`null | PenpotGroup`

* **createText**

  ```javascript
  createText(text): null | PenpotText
  ```
  Creates a PenpotText shape with the specified text content.

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
    
    ![example image](https://placehold.co/600x400)

  **Parameters:**

    `text` The text content for the PenpotText shape.
Returns the new created shape, if the shape wasn't created can return null.

  ```javascript
  text: string
  
  ```
  **Returns:**
`null | PenpotText`

* **generateMarkup**

  ```javascript
  generateMarkup(shapes,options): string
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  options: {
    type: undefined
  }
  ```
  **Returns:**
`string`

* **generateStyle**

  ```javascript
  generateStyle(shapes,options): string
  ```
  **Parameters:**

  ```javascript
  shapes: PenpotShape[]
  options: {
    type: undefined
    withPrelude: boolean
    includeChildren: boolean
  }
  ```
  **Returns:**
`string`

#### Source: [index.d.ts:2714](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2714)

## Type Aliases

### PenpotGradient

Represents a gradient configuration in Penpot.
A gradient can be either linear or radial and includes properties to define its shape, position, and color stops.

```javascript
PenpotGradient: undefined
```
#### Source: [index.d.ts:111](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L111)

### PenpotImageData

Represents image data in Penpot.
This includes properties for defining the image's dimensions, metadata, and aspect ratio handling.

```javascript
PenpotImageData: undefined
```
#### Source: [index.d.ts:148](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L148)

### PenpotStrokeCap

Represents the cap style of a stroke in Penpot.
This type defines various styles for the ends of a stroke.

```javascript
PenpotStrokeCap: round | square | line-arrow | triangle-arrow | square-marker | circle-marker | diamond-marker
```
#### Source: [index.d.ts:212](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L212)

### PenpotFrameGuide

Represents a frame guide in Penpot.
This type can be one of several specific frame guide types: column, row, or square.

```javascript
PenpotFrameGuide: PenpotFrameGuideColumn | PenpotFrameGuideRow | PenpotFrameGuideSquare
```
#### Source: [index.d.ts:523](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L523)

### PenpotTrackType

Represents the type of track in Penpot.
This type defines various track types that can be used in layout configurations.

```javascript
PenpotTrackType: flex | fixed | percent | auto
```
#### Source: [index.d.ts:551](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L551)

### PenpotBoolType

Represents the boolean operation types available in Penpot.
These types define how shapes can be combined or modified using boolean operations.

```javascript
PenpotBoolType: union | difference | exclude | intersection
```
#### Source: [index.d.ts:1422](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1422)

### PenpotPoint

PenpotPoint represents a point in 2D space, typically with x and y coordinates.

```javascript
PenpotPoint: undefined
```
#### Source: [index.d.ts:1752](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1752)

### PenpotBounds

PenpotBounds represents the boundaries of a rectangular area,
defined by the coordinates of the top-left corner and the dimensions of the rectangle.

```javascript
PenpotBounds: undefined
```
#### Source: [index.d.ts:1758](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1758)

### PenpotShape

PenpotShape represents a union of various shape types used in the Penpot project.
This type allows for different shapes to be handled under a single type umbrella.

```javascript
PenpotShape: PenpotFrame | PenpotGroup | PenpotBool | PenpotRectangle | PenpotPath | PenpotText | PenpotEllipse | PenpotSvgRaw | PenpotImage
```
#### Source: [index.d.ts:1791](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1791)

### PenpotTheme

This type specifies the possible themes: 'light' or 'dark'.

```javascript
PenpotTheme: light | dark
```
#### Source: [index.d.ts:1833](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L1833)

### PenpotLibraryContext

Represents the context of Penpot libraries, including both local and connected libraries.
This type contains references to the local library and an array of connected libraries.

```javascript
PenpotLibraryContext: undefined
```
#### Source: [index.d.ts:2105](https://github.com/penpot/penpot-plugins/blob/8cd51c29f106ad435352af7405b209d20bfddae0/libs/plugin-types/index.d.ts#L2105)

