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
#### Source: [libs/plugin-types/index.d.ts:1](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L1)

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

#### Source: [libs/plugin-types/index.d.ts:7](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L7)

### PenpotFill

#### Properties
* **fillColor**

    ```javascript
    fillColor: string
    ```
* **fillOpacity**

    ```javascript
    fillOpacity: number
    ```
#### Source: [libs/plugin-types/index.d.ts:14](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L14)

### PenpotShape

#### Properties
* **id**

    ```javascript
    id: string
    ```
* **name**

    ```javascript
    name: string
    ```
* **type**

    ```javascript
    type: path | frame | circle | image | rect | text | group | bool | svg-raw
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
* **children**

    ```javascript
    children: PenpotShape[]
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): any
  ```
  **Parameters:**

  ```javascript
  width: number
height: number

  ```
  **Returns:**
`any`

#### Source: [libs/plugin-types/index.d.ts:19](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L19)

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
* **children**

    ```javascript
    children: PenpotShape[]
    ```
* **fills**

    ```javascript
    fills: PenpotFill[]
    ```
* **strokes**

    ```javascript
    strokes: PenpotStroke[]
    ```
* **type**

    ```javascript
    type: "text"
    ```
* **characters**

    ```javascript
    characters: string
    ```
#### Methods
* **resize**

  ```javascript
  resize(width,height): any
  ```
  **Parameters:**

  ```javascript
  width: number
height: number

  ```
  **Returns:**
`any`

#### Source: [libs/plugin-types/index.d.ts:42](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L42)

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
#### Source: [libs/plugin-types/index.d.ts:47](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L47)

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
* **addListener**

  ```javascript
  addListener: (type, callback) => void
  ```
  **Parameters:**

  ```javascript
  type: string
callback: any

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

* **createRectangle**

  ```javascript
  createRectangle(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

#### Source: [libs/plugin-types/index.d.ts:56](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L56)

### Penpot

These are methods and properties available on the  `penpot`  global object.

#### Properties
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

* **log**

  Description of log

  ```javascript
  log: (data) => void
  ```
  **Parameters:**

  ```javascript
  data: unknown[]

  ```
  **Returns:**
`void`

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

* **fetch**

  ```javascript
  fetch: (input, init) => Promise
  ```
  **Parameters:**

  ```javascript
  input: URL | RequestInfo
init?: RequestInit
input: string | URL | Request
init?: RequestInit

  ```
  **Returns:**
`Promise<Response>`

* **root**

    Description of root

    ```javascript
    root: PenpotShape
    ```
* **currentPage**

    Description of currentPage

    ```javascript
    currentPage: PenpotPage
    ```
* **selection**

    ```javascript
    selection: PenpotShape[]
    ```
#### Methods
* **getFile**

  Description of getFile

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

* **createRectangle**

  ```javascript
  createRectangle(): PenpotShape
  ```
  **Returns:**
`PenpotShape`

#### Source: [libs/plugin-types/index.d.ts:78](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L78)

## Type Aliases

### PenpotTheme

```javascript
PenpotTheme: light | dark
```
#### Source: [libs/plugin-types/index.d.ts:54](https://github.com/penpot/penpot-plugins/blob/5188e35c9a0659949308f9455ca111d5782ebb5d/libs/plugin-types/index.d.ts#L54)

