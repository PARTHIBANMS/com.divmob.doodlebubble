package com.divmob.maegame.g;

import android.graphics.Bitmap;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.EmptyBitmapTextureAtlasSource;

public class a
  extends EmptyBitmapTextureAtlasSource
{
  private Bitmap a;
  
  public a(Bitmap paramBitmap)
  {
    super(paramBitmap.getWidth(), paramBitmap.getHeight());
    this.a = paramBitmap;
  }
  
  public Bitmap a()
  {
    return this.a;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.a
 * JD-Core Version:    0.7.0.1
 */