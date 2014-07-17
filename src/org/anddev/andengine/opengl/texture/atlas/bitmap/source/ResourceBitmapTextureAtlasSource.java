package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;

public class ResourceBitmapTextureAtlasSource
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  private final Context mContext;
  private final int mDrawableResourceID;
  private final int mHeight;
  private final int mWidth;
  
  public ResourceBitmapTextureAtlasSource(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, 0, 0);
  }
  
  public ResourceBitmapTextureAtlasSource(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt2, paramInt3);
    this.mContext = paramContext;
    this.mDrawableResourceID = paramInt1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeResource(paramContext.getResources(), paramInt1, localOptions);
    this.mWidth = localOptions.outWidth;
    this.mHeight = localOptions.outHeight;
  }
  
  protected ResourceBitmapTextureAtlasSource(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramInt2, paramInt3);
    this.mContext = paramContext;
    this.mDrawableResourceID = paramInt1;
    this.mWidth = paramInt4;
    this.mHeight = paramInt5;
  }
  
  public ResourceBitmapTextureAtlasSource deepCopy()
  {
    return new ResourceBitmapTextureAtlasSource(this.mContext, this.mDrawableResourceID, this.mTexturePositionX, this.mTexturePositionY, this.mWidth, this.mHeight);
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
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPreferredConfig = paramConfig;
    return BitmapFactory.decodeResource(this.mContext.getResources(), this.mDrawableResourceID, localOptions);
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.mDrawableResourceID + ")";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.ResourceBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */