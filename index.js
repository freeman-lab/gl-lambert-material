var glslify = require('glslify')

module.exports = {
  fragment: glslify('./fragment.glsl'),
  style: {
    emissive: {type: 'vec3', default: [0.0, 0.0, 0.0]},
    ambient: {type: 'vec3', default: [0.2, 0.2, 0.2]},
    diffuse: {type: 'vec3', default: [0.8, 0.8, 0.8]},
    roughness: {type: 'float', default: 0.7, min: 0, max: 1},
    albedo: {type: 'float', default: 0.7, min: 0, max: 1}
  },
  name: 'lambert'
}
