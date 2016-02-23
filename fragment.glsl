precision highp float;

varying vec3 vposition;
varying vec3 vnormal;
uniform vec3 eye;

#pragma glslify: Light = require('glsl-scene-light')
#pragma glslify: attenuation = require('glsl-scene-light-attenuation')
#pragma glslify: direction = require('glsl-scene-light-direction')
#pragma glslify: orenn = require('glsl-diffuse-oren-nayar')

struct Style {
  vec3 emissive;
  vec3 ambient;
  vec3 diffuse;
  float roughness;
};

uniform Light lighting[LIGHTCOUNT];
uniform Style style;

void main() {
  vec3 viewpoint = eye - vposition;
  vec3 result = vec3(0.0);

  for (int i = 0; i < LIGHTCOUNT; ++i) {
    if (lighting[i].visible) {
      vec3 dir = direction(lighting[i], vposition);
      float attn = attenuation(lighting[i], dir);
      float diffuse = orenn(normalize(dir), normalize(viewpoint), vnormal, style.roughness, 0.7);
      vec3 ambient = lighting[i].ambient * style.ambient;
      vec3 combined = diffuse * style.diffuse;
      result += style.emissive + ambient + attn * combined * lighting[i].color * lighting[i].intensity;
    }
  }

  gl_FragColor = vec4(result, 1);
}