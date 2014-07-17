package com.divmob.maegame.e;

import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Callback;

class c
  implements Callback<T>
{
  c(TiledTextureRegion paramTiledTextureRegion, int paramInt) {}
  
  public void a(T paramT)
  {
    this.a.setTexturePosition(paramT.getTexturePositionX() + this.b, paramT.getTexturePositionY() + this.b);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.e.c
 * JD-Core Version:    0.7.0.1
 */