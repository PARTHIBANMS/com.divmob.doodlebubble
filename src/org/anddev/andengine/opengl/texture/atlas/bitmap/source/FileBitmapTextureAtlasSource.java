package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import java.io.File;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;

public class FileBitmapTextureAtlasSource
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  private final File mFile;
  private final int mHeight;
  private final int mWidth;
  
  public FileBitmapTextureAtlasSource(File paramFile)
  {
    this(paramFile, 0, 0);
  }
  
  /* Error */
  public FileBitmapTextureAtlasSource(File paramFile, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_2
    //   2: iload_3
    //   3: invokespecial 21	org/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource:<init>	(II)V
    //   6: aload_0
    //   7: aload_1
    //   8: putfield 23	org/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource:mFile	Ljava/io/File;
    //   11: new 25	android/graphics/BitmapFactory$Options
    //   14: dup
    //   15: invokespecial 28	android/graphics/BitmapFactory$Options:<init>	()V
    //   18: astore 4
    //   20: aload 4
    //   22: iconst_1
    //   23: putfield 32	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   26: new 34	java/io/FileInputStream
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 36	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: astore 5
    //   36: aload 5
    //   38: aconst_null
    //   39: aload 4
    //   41: invokestatic 42	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   44: pop
    //   45: aload 5
    //   47: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   50: aload_0
    //   51: aload 4
    //   53: getfield 51	android/graphics/BitmapFactory$Options:outWidth	I
    //   56: putfield 53	org/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource:mWidth	I
    //   59: aload_0
    //   60: aload 4
    //   62: getfield 56	android/graphics/BitmapFactory$Options:outHeight	I
    //   65: putfield 58	org/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource:mHeight	I
    //   68: return
    //   69: astore 6
    //   71: aconst_null
    //   72: astore 5
    //   74: new 60	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 62
    //   80: invokespecial 65	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_1
    //   84: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: aload 6
    //   92: invokestatic 79	org/anddev/andengine/util/Debug:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   95: aload 5
    //   97: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   100: goto -50 -> 50
    //   103: astore 7
    //   105: aconst_null
    //   106: astore 5
    //   108: aload 5
    //   110: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   113: aload 7
    //   115: athrow
    //   116: astore 7
    //   118: goto -10 -> 108
    //   121: astore 6
    //   123: goto -49 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	FileBitmapTextureAtlasSource
    //   0	126	1	paramFile	File
    //   0	126	2	paramInt1	int
    //   0	126	3	paramInt2	int
    //   18	43	4	localOptions	android.graphics.BitmapFactory.Options
    //   34	75	5	localFileInputStream	java.io.FileInputStream
    //   69	22	6	localIOException1	java.io.IOException
    //   121	1	6	localIOException2	java.io.IOException
    //   103	11	7	localObject1	Object
    //   116	1	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   26	36	69	java/io/IOException
    //   26	36	103	finally
    //   36	45	116	finally
    //   74	95	116	finally
    //   36	45	121	java/io/IOException
  }
  
  FileBitmapTextureAtlasSource(File paramFile, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2);
    this.mFile = paramFile;
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
  }
  
  public FileBitmapTextureAtlasSource deepCopy()
  {
    return new FileBitmapTextureAtlasSource(this.mFile, this.mTexturePositionX, this.mTexturePositionY, this.mWidth, this.mHeight);
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
    //   0: new 25	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 28	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_1
    //   10: putfield 105	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   13: new 34	java/io/FileInputStream
    //   16: dup
    //   17: aload_0
    //   18: getfield 23	org/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource:mFile	Ljava/io/File;
    //   21: invokespecial 36	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   24: astore_3
    //   25: aload_3
    //   26: aconst_null
    //   27: aload_2
    //   28: invokestatic 42	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   31: astore 6
    //   33: aload_3
    //   34: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   37: aload 6
    //   39: areturn
    //   40: astore 4
    //   42: aconst_null
    //   43: astore_3
    //   44: new 60	java/lang/StringBuilder
    //   47: dup
    //   48: ldc 107
    //   50: invokespecial 65	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: invokevirtual 113	java/lang/Object:getClass	()Ljava/lang/Class;
    //   57: invokevirtual 118	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   60: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc 123
    //   65: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: aload_0
    //   69: getfield 23	org/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource:mFile	Ljava/io/File;
    //   72: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: aload 4
    //   80: invokestatic 79	org/anddev/andengine/util/Debug:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   83: aload_3
    //   84: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   87: aconst_null
    //   88: areturn
    //   89: astore 7
    //   91: aconst_null
    //   92: astore_3
    //   93: aload 7
    //   95: astore 5
    //   97: aload_3
    //   98: invokestatic 48	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   101: aload 5
    //   103: athrow
    //   104: astore 5
    //   106: goto -9 -> 97
    //   109: astore 4
    //   111: goto -67 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	FileBitmapTextureAtlasSource
    //   0	114	1	paramConfig	android.graphics.Bitmap.Config
    //   7	21	2	localOptions	android.graphics.BitmapFactory.Options
    //   24	74	3	localFileInputStream	java.io.FileInputStream
    //   40	39	4	localIOException1	java.io.IOException
    //   109	1	4	localIOException2	java.io.IOException
    //   95	7	5	localObject1	Object
    //   104	1	5	localObject2	Object
    //   31	7	6	localBitmap	android.graphics.Bitmap
    //   89	5	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   13	25	40	java/io/IOException
    //   13	25	89	finally
    //   25	33	104	finally
    //   44	83	104	finally
    //   25	33	109	java/io/IOException
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.mFile + ")";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.FileBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */