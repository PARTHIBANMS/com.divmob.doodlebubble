package com.divmob.maegame.e;

import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Callback;

class b
  implements Callback<T>
{
  b(TextureRegion paramTextureRegion, int paramInt) {}
  
  public void a(T paramT)
  {
    this.a.setTexturePosition(paramT.getTexturePositionX() + this.b, paramT.getTexturePositionY() + this.b);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.e.b
 * JD-Core Version:    0.7.0.1
 */