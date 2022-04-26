//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uTimer;

void main()
{
	/// Code adapted from "Shaders in GameMaker Studio 2 - Damage Shader"
	/// by GameMaker Casts; https://www.youtube.com/watch?v=V2mt_Oxj87c
	vec4 finalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	finalColor.r *= 2.0 + sin(uTimer * 0.5);
    gl_FragColor = finalColor;
}
