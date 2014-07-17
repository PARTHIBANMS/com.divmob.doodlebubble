package com.divmob.d;

import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

class b
  extends Sprite
{
  b(a parama, float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTextureRegion);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    boolean bool = true;
    if (!a.a(this.a)) {
      bool = false;
    }
    while (!paramTouchEvent.isActionUp()) {
      return bool;
    }
    this.a.onPlayClicked();
    return bool;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.d.b
 * JD-Core Version:    0.7.0.1
 */