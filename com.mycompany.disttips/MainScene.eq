public class MainScene : SEScene
{
    SESprite disaster;
    SESprite text;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mydist","disaster",get_scene_width(),get_scene_height());
        disaster = add_sprite_for_image(SEImage.for_resource("mydist"));
        disaster.move(0,0);
        rsc.prepare_font("font1","arial bold color=#000032",50);
        text = add_sprite_for_text("Disaster List Selection", "font1");
        text.move(0.30*get_scene_width(),0.50*get_scene_height());        
}
public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.3*get_scene_width(),0.5*get_scene_height(),0.6*get_scene_width(), 0.6*get_scene_height())) {
        switch_scene(new Distlist());
        }
    }
public void cleanup() {
        base.cleanup();
    }
}