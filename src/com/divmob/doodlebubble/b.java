package com.divmob.doodlebubble;

import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.util.GLHelper;

class b
  extends Sprite
{
  b(GameActivity paramGameActivity, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, TextureRegion paramTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramTextureRegion);
  }
  
  protected void onInitDraw(GL10 paramGL10)
  {
    super.onInitDraw(paramGL10);
    GLHelper.enableDither(paramGL10);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.b
 * JD-Core Version:    0.7.0.1
 */