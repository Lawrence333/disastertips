
/*
 * DT4
 * Created by Eqela Studio 2.0b7.4
 */

public class DT4 : SEScene
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
		title = add_sprite_for_text("Man-Made Disasters","font2");
		title.move(0.34*get_scene_width(),0.1*get_scene_height()); 
		info = add_sprite_for_text("Tips on Man-Made Disasters","font3");
		info.move(0.36*get_scene_width(),0.20*get_scene_height());   
		tip1 = add_sprite_for_text("1. Since most of these disasters are caused by man, raising awareness is needed to prevent these disasters.","font4");
		tip1.move(0.02*get_scene_width(),0.31*get_scene_height());
		tip1 = add_sprite_for_text("2. Getting the people aware with the environment can help prevent these disasters from happening again.","font4");
		tip1.move(0.02*get_scene_width(),0.36*get_scene_height());
		tip1 = add_sprite_for_text("3. Stage cleanups on pollution to immediately prevent future disasters from happening.","font4");
		tip1.move(0.02*get_scene_width(),0.41*get_scene_height());
		tip1 = add_sprite_for_text("4. Keep updated on any environmental disaster that is about to happen due to illegal activity.","font4");
		tip1.move(0.02*get_scene_width(),0.46*get_scene_height());
		tip1 = add_sprite_for_text("5. Check local media, such as radio and news, to take note of environmental areas that need repairing.","font4");
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
        switch_scene(new Dist4());
        }
	}
public void cleanup() 
	{
	base.cleanup();
	}
}
