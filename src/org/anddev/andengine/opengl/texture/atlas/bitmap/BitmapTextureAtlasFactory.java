package org.anddev.andengine.opengl.texture.atlas.bitmap;

import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.bitmap.BitmapTexture.BitmapTextureFormat;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.MathUtils;

public class BitmapTextureAtlasFactory
{
  public static BitmapTextureAtlas createForTextureAtlasSourceSize(BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource)
  {
    return createForTextureAtlasSourceSize(paramBitmapTextureFormat, paramIBitmapTextureAtlasSource, TextureOptions.DEFAULT);
  }
  
  public static BitmapTextureAtlas createForTextureAtlasSourceSize(BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, TextureOptions paramTextureOptions)
  {
    int i = paramIBitmapTextureAtlasSource.getWidth();
    int j = paramIBitmapTextureAtlasSource.getHeight();
    return new BitmapTextureAtlas(MathUtils.nextPowerOfTwo(i), MathUtils.nextPowerOfTwo(j), paramBitmapTextureFormat, paramTextureOptions);
  }
  
  public static BitmapTextureAtlas createForTextureAtlasSourceSize(BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureRegion paramTextureRegion)
  {
    return createForTextureRegionSize(paramBitmapTextureFormat, paramTextureRegion, TextureOptions.DEFAULT);
  }
  
  public static BitmapTextureAtlas createForTextureRegionSize(BitmapTexture.BitmapTextureFormat paramBitmapTextureFormat, TextureRegion paramTextureRegion, TextureOptions paramTextureOptions)
  {
    int i = paramTextureRegion.getWidth();
    int j = paramTextureRegion.getHeight();
    return new BitmapTextureAtlas(MathUtils.nextPowerOfTwo(i), MathUtils.nextPowerOfTwo(j), paramBitmapTextureFormat, paramTextureOptions);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasFactory
 * JD-Core Version:    0.7.0.1
 */