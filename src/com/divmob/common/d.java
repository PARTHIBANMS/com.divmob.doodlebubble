package com.divmob.common;

import com.divmob.maegame.d.b;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

class d
  extends AnimatedSprite
{
  d(ClassicMenu paramClassicMenu, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    if (paramTouchEvent.isActionDown())
    {
      ClassicMenu.a(this.a);
      if (!ClassicMenu.b(this.a).a()) {
        this.a.o.setCurrentTileIndex(1);
      }
    }
    else
    {
      return false;
    }
    this.a.o.setCurrentTileIndex(0);
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.d
 * JD-Core Version:    0.7.0.1
 */