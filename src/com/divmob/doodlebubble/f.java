package com.divmob.doodlebubble;

import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

class f
  extends AnimatedSprite
{
  f(GameActivity paramGameActivity, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    if (paramTouchEvent.isActionDown())
    {
      setCurrentTileIndex(1);
      registerEntityModifier(new DelayModifier(0.5F, new g(this)));
    }
    return true;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.f
 * JD-Core Version:    0.7.0.1
 */