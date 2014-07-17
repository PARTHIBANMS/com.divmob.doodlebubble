package com.divmob.maegame.f.a;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.ScaleModifier;
import org.anddev.andengine.entity.modifier.SequenceEntityModifier;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class b
  extends Sprite
{
  public b(float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTextureRegion);
  }
  
  public void a() {}
  
  public void a(Scene paramScene)
  {
    paramScene.attachChild(this);
    paramScene.registerTouchArea(this);
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
    paramScene.registerTouchArea(this);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    switch (paramTouchEvent.getAction())
    {
    default: 
      return false;
    }
    clearEntityModifiers();
    c localc = new c(this);
    IEntityModifier[] arrayOfIEntityModifier = new IEntityModifier[2];
    arrayOfIEntityModifier[0] = new ScaleModifier(0.2F, 1.0F, 1.2F);
    arrayOfIEntityModifier[1] = new ScaleModifier(0.2F, 1.2F, 1.0F);
    registerEntityModifier(new SequenceEntityModifier(localc, arrayOfIEntityModifier));
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.a.b
 * JD-Core Version:    0.7.0.1
 */