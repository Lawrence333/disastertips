
/*
 * DT3
 * Created by Eqela Studio 2.0b7.4
 */

public class DT3 : SEScene
{
	SESprite disaster;
	SESprite main;
	SESprite title;
	SESprite info;
	SESprite tip1;
	SESprite return1;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mydist","disaster",get_scene_width(),get_scene_height());
        disaster = add_sprite_for_image(SEImage.for_resource("mydist"));
        disaster.move(0,0);
		rsc.prepare_font("font1","arial bold color=#DDDDDD",50);
		rsc.prepare_font("font2","arial bold color=#0000CC",50);
		rsc.prepare_font("font3","arial bold color=#000000",30);
		rsc.prepare_font("font4","arial bold color=#FFFFFF",20);
		main = add_sprite_for_text("Main Menu","font1");
		main.move(0.1*get_scene_width(),0.9*get_scene_height());  
		title = add_sprite_for_text("Tsunami","font2");
		title.move(0.43*get_scene_width(),0.1*get_scene_height());
		info = add_sprite_for_text("Tips on Tsunamis","font3");
		info.move(0.41*get_scene_width(),0.20*get_scene_height());
		tip1 = add_sprite_for_text("1. Avoid coastal areas. These are where the tsunamis attack most of the time and start attacking the land.","font4");
		tip1.move(0.02*get_scene_width(),0.31*get_scene_height());
		tip1 = add_sprite_for_text("2. Head to higher ground, as these areas can help you settle in until the tsunami ends.","font4");
		tip1.move(0.02*get_scene_width(),0.36*get_scene_height());
		tip1 = add_sprite_for_text("3. Do not stay near the shore if a tsunami is coming. Evacuate immediately.","font4");
		tip1.move(0.02*get_scene_width(),0.41*get_scene_height());
		tip1 = add_sprite_for_text("4. Know your local routes to higher ground to easily avoid getting hit by the tsunami.","font4");
		tip1.move(0.02*get_scene_width(),0.46*get_scene_height());
		tip1 = add_sprite_for_text("5. Keep informed of the water levels in your area to ensure safety and to know when to evacuate before the tsunami hits.","font4");
		tip1.move(0.02*get_scene_width(),0.51*get_scene_height());
		return1 = add_sprite_for_text("Return to Disaster Info","font2");
		return1.move(0.32*get_scene_width(),0.65*get_scene_height());
		}

public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.1*get_scene_width(),0.9*get_scene_height(),0.2*get_scene_width(), 0.99*get_scene_height())) {
        switch_scene(new Distlist());
        }
		if(pi.is_inside(0.32*get_scene_width(),0.65*get_scene_height(),0.68*get_scene_width(), 0.78*get_scene_height())) {
        switch_scene(new Dist3());
        }
	}
public void cleanup() 
	{
	base.cleanup();
	}
}
