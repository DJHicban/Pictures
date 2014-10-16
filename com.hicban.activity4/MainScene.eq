
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
    int w;
    int h;
    int pX;
    int py;
    int wt;
    int ht;
    SESprite basket;
    SESprite keep1;
    SESprite keep2;
    SESprite keep3;
    SESprite text;
  
  SESprite baskets;
    SESprite keeps1;
    SESprite keeps2;
    SESprite keeps3;
    
 
 
    public void initialize(SEResourceCache rsc) {
        w = get_scene_width();
        h = get_scene_height();
        
    //  base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("red"), w,h));
        rsc.prepare_image("pic1","basket",w*0.5,h*0.5);
        rsc.prepare_image("pic2","keep1",w*0.5,h*0.5);
        rsc.prepare_image("pic3","keep2",w*0.5,h*0.5);
        rsc.prepare_image("pic4","keep3",w*0.5,h*0.5);
        rsc.prepare_font("myfont","trebuchet ms bold color=black", 40);
        
        basket = add_sprite_for_image(SEImage.for_resource("pic1"));
        keep1 = add_sprite_for_image(SEImage.for_resource("pic2"));
        keep2 = add_sprite_for_image(SEImage.for_resource("pic3"));
        keep3 = add_sprite_for_image(SEImage.for_resource("pic4"));
            
        basket.move(0,0);
        keep1.move(0.5*w,0);
        keep2.move(0,h*0.5);
        keep3.move(0.5*w,0.5*h);
        text = add_sprite_for_text(" ", "myfont");
        wt = text.get_width();
        ht = text.get_height();    
        rsc.prepare_image("pic1","basket",w,h);
        rsc.prepare_image("pic2","keep1",w,h);
        rsc.prepare_image("pic3","keep2",w,h);
        rsc.prepare_image("pic4","keep3",w,h);
        
    }
    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        pX = pi.get_x();
        py = pi.get_y();
        
        if(pX > 0 && pX < w*0.5 && py > 0 && py < h*0.5) {
            text.set_text("Basketball");
            text.move(w*0.25-wt*0.5,h*0.25-ht*0.5);
            basket.set_alpha(0.5);
            keep1.set_alpha(1);
            keep2.set_alpha(1);
            keep3.set_alpha(1);
        }
        else if(pX > 0.5*w && pX < w && py > 0 && py < h*0.5) {
            text.set_text("Football");
            text.move(w*0.75-wt*0.5,h*0.25-ht*0.5);
            keep1.set_alpha(0.5);
            basket.set_alpha(1);
            keep2.set_alpha(1);
            keep3.set_alpha(1);
        }
        else if(pX > 0 && pX < w*0.5 && py > 0.5*h && py < h) {
            text.set_text("Football");
            text.move(w*0.25-wt*0.5,h*0.75-ht*0.5);
            keep2.set_alpha(0.5);
            basket.set_alpha(1);
            basket.set_alpha(1);
            basket.set_alpha(1);
        }
        else if(pX > 0.5 && pX < w && py > 0.5*h && py < h) {
            text.set_text("Football");
            text.move(w*0.75-wt*0.5,h*0.75-ht*0.5);
            keep3.set_alpha(0.5);
            basket.set_alpha(1);
            keep1.set_alpha(1);
            keep2.set_alpha(1);
        }
        if( pX > 0.35 && pX < w*0.5 && py > 0 && py < h*0.15 ) {
            baskets = add_sprite_for_image(SEImage.for_resource("pic1"));
        }
        
        else if( pX >0.75  && pX < w && py > 0 && py < h*0.15 ) {
            keeps1 = add_sprite_for_image(SEImage.for_resource("pic2"));
        }
        else if( pX >0.35  && pX < w*0.5 && py > 0.5*h && py < h*0.65 ) {
            keeps2 = add_sprite_for_image(SEImage.for_resource("pic3"));
        }
        else if( pX >0.75  && pX < w && py > 0.5*h && py < h*0.65 ) {
            keeps3 = add_sprite_for_image(SEImage.for_resource("pic4"));
        }
    }
    
    public void cleanup() {
        base.cleanup();
    }
}
