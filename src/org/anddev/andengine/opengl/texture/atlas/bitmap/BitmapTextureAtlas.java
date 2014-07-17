package org.anddev.andengine.opengl.texture.atlas.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.opengl.GLUtils;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.opengl.texture.Texture.PixelFormat;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener;
import org.anddev.andengine.opengl.texture.atlas.TextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.bitmap.BitmapTexture.BitmapTextureFormat;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.util.Debug;

public class BitmapTextureAtlas
  extends TextureAtlas<IBitmapTextureAtlasSource>
{
  private final BitmapTexture.BitmapTextureFormat mBitmapTextureFormat;
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, TextureOptions paramTextureOptions)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, paramTextureOptions, null);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, TextureOptions paramTextureOptions, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, paramTextureOptions, paramITextureAtlasStateListener);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, paramITextureAtlasStateListener);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat)
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, TextureOptions.DEFAULT, null);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureOptions paramTextureOptions)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, paramTextureOptions, null);
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureOptions paramTextureOptions, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
    throws IllegalArgumentException
  {
    super(paramInt1, paramInt2, paramBitmapTextureFormat.getPixelFormat(), paramTextureOptions, paramITextureAtlasStateListener);
    this.mBitmapTextureFormat = paramBitmapTextureFormat;
  }
  
  public BitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, TextureOptions.DEFAULT, paramITextureAtlasStateListener);
  }
  
  protected void bindTextureOnHardware(GL10 paramGL10)
  {
    super.bindTextureOnHardware(paramGL10);
    Texture.PixelFormat localPixelFormat = this.mBitmapTextureFormat.getPixelFormat();
    int i = localPixelFormat.getGLFormat();
    int j = localPixelFormat.getGLType();
    paramGL10.glTexImage2D(3553, 0, i, this.mWidth, this.mHeight, 0, i, j, null);
  }
  
  public BitmapTexture.BitmapTextureFormat getBitmapTextureFormat()
  {
    return this.mBitmapTextureFormat;
  }
  
  protected void writeTextureToHardware(GL10 paramGL10)
  {
    Bitmap.Config localConfig = this.mBitmapTextureFormat.getBitmapConfig();
    int i = this.mPixelFormat.getGLFormat();
    int j = this.mPixelFormat.getGLType();
    boolean bool = this.mTextureOptions.mPreMultipyAlpha;
    ArrayList localArrayList = this.mTextureAtlasSources;
    int k = localArrayList.size();
    IBitmapTextureAtlasSource localIBitmapTextureAtlasSource;
    Bitmap localBitmap;
    for (int m = 0;; m++)
    {
      if (m >= k) {
        return;
      }
      localIBitmapTextureAtlasSource = (IBitmapTextureAtlasSource)localArrayList.get(m);
      if (localIBitmapTextureAtlasSource != null)
      {
        localBitmap = localIBitmapTextureAtlasSource.onLoadBitmap(localConfig);
        if (localBitmap != null) {
          break;
        }
        try
        {
          throw new IllegalArgumentException(localIBitmapTextureAtlasSource.getClass().getSimpleName() + ": " + localIBitmapTextureAtlasSource.toString() + " returned a null Bitmap.");
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Debug.e("Error loading: " + localIBitmapTextureAtlasSource.toString(), localIllegalArgumentException);
          if (getTextureStateListener() == null) {
            break label261;
          }
        }
        getTextureStateListener().onTextureAtlasSourceLoadExeption(this, localIBitmapTextureAtlasSource, localIllegalArgumentException);
      }
    }
    if (bool) {
      GLUtils.texSubImage2D(3553, 0, localIBitmapTextureAtlasSource.getTexturePositionX(), localIBitmapTextureAtlasSource.getTexturePositionY(), localBitmap, i, j);
    }
    for (;;)
    {
      localBitmap.recycle();
      break;
      GLHelper.glTexSubImage2D(paramGL10, 3553, 0, localIBitmapTextureAtlasSource.getTexturePositionX(), localIBitmapTextureAtlasSource.getTexturePositionY(), localBitmap, this.mPixelFormat);
    }
    label261:
    throw localIllegalArgumentException;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas
 * JD-Core Version:    0.7.0.1
 */