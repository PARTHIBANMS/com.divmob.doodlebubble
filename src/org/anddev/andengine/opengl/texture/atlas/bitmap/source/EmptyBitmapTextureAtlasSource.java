package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;

public class EmptyBitmapTextureAtlasSource
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  private final int mHeight;
  private final int mWidth;
  
  public EmptyBitmapTextureAtlasSource(int paramInt1, int paramInt2)
  {
    this(0, 0, paramInt1, paramInt2);
  }
  
  public EmptyBitmapTextureAtlasSource(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2);
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
  }
  
  public EmptyBitmapTextureAtlasSource deepCopy()
  {
    return new EmptyBitmapTextureAtlasSource(this.mTexturePositionX, this.mTexturePositionY, this.mWidth, this.mHeight);
  }
  
  public int getHeight()
  {
    return this.mHeight;
  }
  
  public int getWidth()
  {
    return this.mWidth;
  }
  
  public Bitmap onLoadBitmap(Bitmap.Config paramConfig)
  {
    return Bitmap.createBitmap(this.mWidth, this.mHeight, paramConfig);
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.mWidth + " x " + this.mHeight + ")";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.EmptyBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */