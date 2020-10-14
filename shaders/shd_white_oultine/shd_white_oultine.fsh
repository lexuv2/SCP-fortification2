varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
void main()
{
    vec2 offsetx = vec2(pixelW, 0);
    vec2 offsety = vec2(0, pixelH);
 
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	int jest = 0;
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
		
		if(texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a > 0.)jest++;
		if(texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a > 0.)jest++;
		if(texture2D(gm_BaseTexture, v_vTexcoord + offsety).a > 0.)jest++;
		if(texture2D(gm_BaseTexture, v_vTexcoord - offsety).a > 0.)jest++;
	
	if(jest==1)
	{	    
    gl_FragColor.r = 255.0;
	gl_FragColor.g = 255.0;
	gl_FragColor.b = 255.0;
	gl_FragColor.a = 255.0;
	}
	
	
}