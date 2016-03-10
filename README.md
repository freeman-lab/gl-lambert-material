# gl-lambert-material

Lambert material for 3d rendering.

A `material` is a fragment shader and a set of styles with defaults, as defined in [`gl-material`](https://github.com/freeman-lab/gl-material).

## install

```
npm install gl-lambert-material
```

## usage

Use with `gl-material` to generate a compiled shader, given a `gl` context and constants to replace

```javascript
var lambert = require('gl-lambert-material')
var material = require('gl-material')(gl, lambert, {LIGHTCOUNT: 1})
```

Or just get the fragment shader for use elsewhere

```javascript
var fragment = require('gl-lambert-material').fragment
```
