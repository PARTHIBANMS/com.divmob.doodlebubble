package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.IOException;
import java.io.InputStream;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;
import org.anddev.andengine.util.Debug;
import org.anddev.andengine.util.StreamUtils;

public class AssetBitmapTextureAtlasSource
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  private final String mAssetPath;
  private final Context mContext;
  private final int mHeight;
  private final int mWidth;
  
  public AssetBitmapTextureAtlasSource(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 0, 0);
  }
  
  public AssetBitmapTextureAtlasSource(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.mContext = paramContext;
    this.mAssetPath = paramString;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    try
    {
      localInputStream = paramContext.getAssets().open(paramString);
      BitmapFactory.decodeStream(localInputStream, null, localOptions);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Debug.e("Failed loading Bitmap in AssetBitmapTextureAtlasSource. AssetPath: " + paramString, localIOException);
        StreamUtils.close(localInputStream);
      }
    }
    finally
    {
      StreamUtils.close(localInputStream);
    }
    this.mWidth = localOptions.outWidth;
    this.mHeight = localOptions.outHeight;
  }
  
  AssetBitmapTextureAtlasSource(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2);
    this.mContext = paramContext;
    this.mAssetPath = paramString;
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
  }
  
  public AssetBitmapTextureAtlasSource deepCopy()
  {
    return new AssetBitmapTextureAtlasSource(this.mContext, this.mAssetPath, this.mTexturePositionX, this.mTexturePositionY, this.mWidth, this.mHeight);
  }
  
  public int getHeight()
  {
    return this.mHeight;
  }
  
  public int getWidth()
  {
    return this.mWidth;
  }
  
  /* Error */
  public android.graphics.Bitmap onLoadBitmap(android.graphics.Bitmap.Config paramConfig)
  {
    // Byte code:
    //   0: new 29	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 32	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_1
    //   10: putfield 117	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   13: aload_0
    //   14: getfield 25	org/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource:mContext	Landroid/content/Context;
    //   17: invokevirtual 42	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   20: aload_0
    //   21: getfield 27	org/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource:mAssetPath	Ljava/lang/String;
    //   24: invokevirtual 48	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   27: astore 7
    //   29: aload 7
    //   31: astore 4
    //   33: aload 4
    //   35: aconst_null
    //   36: aload_2
    //   37: invokestatic 54	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   40: astore 8
    //   42: aload 4
    //   44: invokestatic 60	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   47: aload 8
    //   49: areturn
    //   50: astore 6
    //   52: aconst_null
    //   53: astore 4
    //   55: new 72	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 119
    //   61: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload_0
    //   65: invokevirtual 125	java/lang/Object:getClass	()Ljava/lang/Class;
    //   68: invokevirtual 130	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   71: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc 132
    //   76: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: aload_0
    //   80: getfield 27	org/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource:mAssetPath	Ljava/lang/String;
    //   83: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: aload 6
    //   91: invokestatic 91	org/anddev/andengine/util/Debug:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   94: aload 4
    //   96: invokestatic 60	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   99: aconst_null
    //   100: areturn
    //   101: astore_3
    //   102: aconst_null
    //   103: astore 4
    //   105: aload_3
    //   106: astore 5
    //   108: aload 4
    //   110: invokestatic 60	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   113: aload 5
    //   115: athrow
    //   116: astore 5
    //   118: goto -10 -> 108
    //   121: astore 6
    //   123: goto -68 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	AssetBitmapTextureAtlasSource
    //   0	126	1	paramConfig	android.graphics.Bitmap.Config
    //   7	30	2	localOptions	BitmapFactory.Options
    //   101	5	3	localObject1	Object
    //   31	78	4	localInputStream1	InputStream
    //   106	8	5	localObject2	Object
    //   116	1	5	localObject3	Object
    //   50	40	6	localIOException1	IOException
    //   121	1	6	localIOException2	IOException
    //   27	3	7	localInputStream2	InputStream
    //   40	8	8	localBitmap	android.graphics.Bitmap
    // Exception table:
    //   from	to	target	type
    //   0	29	50	java/io/IOException
    //   0	29	101	finally
    //   33	42	116	finally
    //   55	94	116	finally
    //   33	42	121	java/io/IOException
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.mAssetPath + ")";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.AssetBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */