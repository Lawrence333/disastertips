
/*
 * Dist1
 * Created by Eqela Studio 2.0b7.4
 */

public class Dist1: SEScene
{
	SESprite disaster;
	SESprite main;
	SESprite title;
	SESprite info;
	SESprite tip1;
	SESprite tiplist;
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
		title = add_sprite_for_text("Typhoon","font2");
		title.move(0.43*get_scene_width(),0.1*get_scene_height());
		info = add_sprite_for_text("About Typhoons","font3");
		info.move(0.42*get_scene_width(),0.20*get_scene_height());
		tip1 = add_sprite_for_text("Typhoons are strong gusts of wind that cause major damage. Their winds are unpredictable, because they are very fast and hard to predict.","font4");
		tip1.move(0.02*get_scene_width(),0.31*get_scene_height());
		tip1 = add_sprite_for_text("They also cause rains, floods and the massive hurdling of debris which leads to destruction in affected areas.","font4");
		tip1.move(0.02*get_scene_width(),0.36*get_scene_height());
		tip1 = add_sprite_for_text("Some typhoons can also get stronger during their time and duration, which can cause massive destruction to many areas.","font4");
		tip1.move(0.02*get_scene_width(),0.41*get_scene_height());
		tip1 = add_sprite_for_text("However, they can be predicted and prepared for when they strike at the environment.","font4");
		tip1.move(0.02*get_scene_width(),0.46*get_scene_height());
		tip1 = add_sprite_for_text("Here are some tips to get ready in case typhoons are about to strike in your area. It is best to be prepared.","font4");
		tip1.move(0.02*get_scene_width(),0.51*get_scene_height());
		tiplist = add_sprite_for_text("Tips for this Disaster","font2");
		tiplist.move(0.33*get_scene_width(),0.65*get_scene_height());
		}

public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.1*get_scene_width(),0.9*get_scene_height(),0.3*get_scene_width(), 0.99*get_scene_height())) 
		{
        switch_scene(new Distlist());
        }
		if(pi.is_inside(0.33*get_scene_width(),0.65*get_scene_height(),0.68*get_scene_width(), 0.78*get_scene_height())) {
        switch_scene(new DT1());
        }
	}
public void cleanup() 
	{
	base.cleanup();
	}
}
