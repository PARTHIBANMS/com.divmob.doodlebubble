package org.anddev.andengine.engine.camera.hud.controls;

import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

class BaseOnScreenControl$1
  extends Sprite
{
  BaseOnScreenControl$1(BaseOnScreenControl paramBaseOnScreenControl, float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTextureRegion);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    return this.this$0.onHandleControlBaseTouched(paramTouchEvent, paramFloat1, paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.hud.controls.BaseOnScreenControl.1
 * JD-Core Version:    0.7.0.1
 */