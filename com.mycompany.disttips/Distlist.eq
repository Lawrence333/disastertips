
/*
 * Distlist
 * Created by Eqela Studio 2.0b7.4
 */

public class Distlist : SEScene
{
	SESprite disaster;
	SESprite listinfo;
	SESprite d1;
	SESprite d2;
	SESprite d3;
	SESprite d4;
	SESprite d5;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mydist","disaster",get_scene_width(),get_scene_height());
        disaster = add_sprite_for_image(SEImage.for_resource("mydist"));
        disaster.move(0,0);
        rsc.prepare_font("font1","arial bold color=#000032",60);
	    rsc.prepare_font("font2","arial bold color=#000000",40);
        listinfo = add_sprite_for_text("List of Disasters", "font1");
        listinfo.move(0.320*get_scene_width(),0.10*get_scene_height());    
		d1 = add_sprite_for_text("Typhoon","font2");
		d1.move(0.43*get_scene_width(),0.25*get_scene_height()); 
		d2 = add_sprite_for_text("Earthquake","font2");
		d2.move(0.41*get_scene_width(),0.35*get_scene_height()); 
		d3 = add_sprite_for_text("Tsunami","font2");
		d3.move(0.43*get_scene_width(),0.45*get_scene_height());
		d4 = add_sprite_for_text("Man-made Disasters","font2");
		d4.move(0.35*get_scene_width(),0.55*get_scene_height());
		d5 = add_sprite_for_text("Wildfires","font2");
		d5.move(0.43*get_scene_width(),0.65*get_scene_height());   		
	}
	public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.43*get_scene_width(),0.25*get_scene_height(),0.63*get_scene_width(), 0.34*get_scene_height())) {
        switch_scene(new Dist1());
        }
		if(pi.is_inside(0.43*get_scene_width(),0.35*get_scene_height(),0.63*get_scene_width(), 0.44*get_scene_height())) {
        switch_scene(new Dist2());
        }
		if(pi.is_inside(0.43*get_scene_width(),0.45*get_scene_height(),0.63*get_scene_width(), 0.54*get_scene_height())) {
        switch_scene(new Dist3());
        }
		if(pi.is_inside(0.37*get_scene_width(),0.55*get_scene_height(),0.63*get_scene_width(), 0.64*get_scene_height())) {
        switch_scene(new Dist4());
        }
		if(pi.is_inside(0.43*get_scene_width(),0.65*get_scene_height(),0.63*get_scene_width(), 0.74*get_scene_height())) {
        switch_scene(new Dist5());
        }
    }
	public void cleanup() {
		base.cleanup();
	}
}

