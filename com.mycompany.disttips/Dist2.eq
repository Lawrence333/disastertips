
/*
 * Dist2
 * Created by Eqela Studio 2.0b7.4
 */

public class Dist2: SEScene
{
	SESprite disaster;
	SESprite main;
	SESprite title;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mydist","disaster",get_scene_width(),get_scene_height());
        disaster = add_sprite_for_image(SEImage.for_resource("mydist"));
        disaster.move(0,0);
		rsc.prepare_font("font1","arial bold color=#DDDDDD",50);
		rsc.prepare_font("font2","arial bold color=#0000CC",50);
		main = add_sprite_for_text("Main Menu","font1");
		main.move(0.1*get_scene_width(),0.9*get_scene_height());   
		title = add_sprite_for_text("Earthquake","font2");
		title.move(0.41*get_scene_width(),0.1*get_scene_height());
		}

public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.1*get_scene_width(),0.9*get_scene_height(),0.2*get_scene_width(), 0.99*get_scene_height())) {
        switch_scene(new Distlist());
        }
	}
public void cleanup() 
	{
	base.cleanup();
	}
}