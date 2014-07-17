package org.anddev.andengine.opengl.texture.atlas.bitmap;

import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas;
import org.anddev.andengine.opengl.texture.bitmap.BitmapTexture.BitmapTextureFormat;

public class BuildableBitmapTextureAtlas
  extends BuildableTextureAtlas<IBitmapTextureAtlasSource, BitmapTextureAtlas>
{
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, TextureOptions paramTextureOptions)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, paramTextureOptions, null);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, TextureOptions paramTextureOptions, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, paramTextureOptions, paramITextureAtlasStateListener);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
  {
    this(paramInt1, paramInt2, BitmapTexture.BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, paramITextureAtlasStateListener);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat)
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, TextureOptions.DEFAULT, null);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureOptions paramTextureOptions)
    throws IllegalArgumentException
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, paramTextureOptions, null);
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureOptions paramTextureOptions, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
    throws IllegalArgumentException
  {
    super(new BitmapTextureAtlas(paramInt1, paramInt2, paramBitmapTextureFormat, paramTextureOptions, paramITextureAtlasStateListener));
  }
  
  public BuildableBitmapTextureAtlas(int paramInt1, int paramInt2, BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, ITextureAtlas.ITextureAtlasStateListener<IBitmapTextureAtlasSource> paramITextureAtlasStateListener)
  {
    this(paramInt1, paramInt2, paramBitmapTextureFormat, TextureOptions.DEFAULT, paramITextureAtlasStateListener);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas
 * JD-Core Version:    0.7.0.1
 */