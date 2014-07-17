package com.divmob.doodlebubble;

import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

class q
  extends AnimatedSprite
{
  q(MenuActivity paramMenuActivity, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    if (paramTouchEvent.isActionDown())
    {
      clearEntityModifiers();
      this.a.a(MenuActivity.d(this.a), true, true);
    }
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.q
 * JD-Core Version:    0.7.0.1
 */