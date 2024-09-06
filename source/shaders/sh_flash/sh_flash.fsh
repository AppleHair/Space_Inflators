//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float lerp(float a,float b,float r) {
	return a + (b - a) * r;
}

void main()
{
	vec4 pixel = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	if (pixel.rgb == vec3(0.0,0.0,0.0)) {
		gl_FragColor = pixel;
	} else {
		gl_FragColor = vec4(lerp(pixel.r, 1.0, 0.5), lerp(pixel.g, 1.0, 0.5), lerp(pixel.b, 1.0, 0.5), pixel.a);
	}
}
