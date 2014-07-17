package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Picture;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;
import org.anddev.andengine.util.Debug;

public abstract class PictureBitmapTextureAtlasSource
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  protected final int mHeight;
  protected final Picture mPicture;
  protected final int mWidth;
  
  public PictureBitmapTextureAtlasSource(Picture paramPicture)
  {
    this(paramPicture, 0, 0);
  }
  
  public PictureBitmapTextureAtlasSource(Picture paramPicture, int paramInt1, int paramInt2)
  {
    this(paramPicture, paramInt1, paramInt2, paramPicture.getWidth(), paramPicture.getHeight());
  }
  
  public PictureBitmapTextureAtlasSource(Picture paramPicture, int paramInt1, int paramInt2, float paramFloat)
  {
    this(paramPicture, paramInt1, paramInt2, Math.round(paramFloat * paramPicture.getWidth()), Math.round(paramFloat * paramPicture.getHeight()));
  }
  
  public PictureBitmapTextureAtlasSource(Picture paramPicture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2);
    this.mPicture = paramPicture;
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
  }
  
  public abstract PictureBitmapTextureAtlasSource deepCopy();
  
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
    Picture localPicture = this.mPicture;
    if (localPicture == null)
    {
      Debug.e("Failed loading Bitmap in PictureBitmapTextureAtlasSource.");
      return null;
    }
    Bitmap localBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, paramConfig);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.scale(this.mWidth / this.mPicture.getWidth(), this.mHeight / this.mPicture.getHeight(), 0.0F, 0.0F);
    localPicture.draw(localCanvas);
    return localBitmap;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.PictureBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */