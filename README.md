# gl-scene-lambert-material

Lambert material for 3d scenes using [`stack.gl`](http://stack.gl).

As defined by [`gl-scene-material`](https://github.com/freeman-lab/gl-scene-material), a `material` is just a fragment shader and a set of uniforms with defaults. A material works well with [`gl-scene`](https://github.com/freeman-lab/gl-scene), but can also be used on its own.

## install

```
npm install gl-scene-lambert-material
```

## usage

Use with `gl-scene-material` to generate a compiled shader, given a `gl` context and constants to replace

```javascript
var lambert = require('gl-scene-lambert-material')
var material = require('gl-scene-material')(gl, lambert, {LIGHTCOUNT: 1})
```

Or just get the fragment shader for use elsewhere

```javascript
var fragment = require('gl-scene-lambert-material').fragment
```
