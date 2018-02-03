vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ){
  vec4 pixel = Texel(texture, texture_coords );//This is the current pixel color
  number average = (pixel.r+pixel.b+pixel.g)/3.0;
  pixel.r = 0.0;
  pixel.g = average;
  pixel.b = 0.0;
  return pixel;
}