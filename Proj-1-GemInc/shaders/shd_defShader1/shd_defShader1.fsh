//
// Outline shader for player
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//pixel height, converted from texels
uniform float pixelH;
uniform float pixelW;
uniform float outColor[4]; 

void main()
{
	//set offsets to single pixel distance
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	//set outline color
	vec4 outline = vec4(outColor[0], outColor[1], outColor[2], outColor[3]);
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a; //finds the alpha of the current pixel.
	float iAlpha = sign(alpha); //get the initial alpha value, and set to either 0, or 1 if greater than 0
	//add the alpha of local pixels
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a); //right
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a); //left
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsety).a); //below
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsety).a); //above
	
	
	//set color to texture. 
    gl_FragColor = (outline *(1.0 - iAlpha)) +  (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord));
	
	//set alpha
	gl_FragColor.a = alpha;
}
