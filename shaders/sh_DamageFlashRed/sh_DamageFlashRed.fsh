//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uTimer;

void main()
{
	vec4 finalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	finalColor.r *= 2.0 + sin(uTimer * 0.5);
    gl_FragColor = finalColor;
}
