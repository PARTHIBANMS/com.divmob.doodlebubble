package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public abstract interface IBitmapTextureAtlasSource
  extends ITextureAtlasSource
{
  public abstract IBitmapTextureAtlasSource deepCopy();
  
  public abstract Bitmap onLoadBitmap(Bitmap.Config paramConfig);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */