package org.anddev.andengine.opengl.texture.atlas.bitmap;

import android.content.Context;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.AssetBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.ResourceBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TextureRegionFactory;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class BitmapTextureAtlasTextureRegionFactory
{
  protected static String sAssetBasePath = "";
  protected static boolean sCreateTextureRegionBuffersManaged;
  
  public static TextureRegion createFromAsset(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    return createFromSource(paramBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, sAssetBasePath + paramString), paramInt1, paramInt2);
  }
  
  public static TextureRegion createFromAsset(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, String paramString)
  {
    return createFromSource(paramBuildableBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, sAssetBasePath + paramString));
  }
  
  public static TextureRegion createFromResource(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return createFromSource(paramBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3);
  }
  
  public static TextureRegion createFromResource(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, int paramInt)
  {
    return createFromSource(paramBuildableBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt));
  }
  
  public static TextureRegion createFromSource(BitmapTextureAtlas paramBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2)
  {
    return TextureRegionFactory.createFromSource(paramBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, sCreateTextureRegionBuffersManaged);
  }
  
  public static TextureRegion createFromSource(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource)
  {
    return BuildableTextureAtlasTextureRegionFactory.createFromSource(paramBuildableBitmapTextureAtlas, paramIBitmapTextureAtlasSource, sCreateTextureRegionBuffersManaged);
  }
  
  public static TiledTextureRegion createTiledFromAsset(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return createTiledFromSource(paramBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, sAssetBasePath + paramString), paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static TiledTextureRegion createTiledFromAsset(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    return createTiledFromSource(paramBuildableBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, sAssetBasePath + paramString), paramInt1, paramInt2);
  }
  
  public static TiledTextureRegion createTiledFromResource(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    return createTiledFromSource(paramBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public static TiledTextureRegion createTiledFromResource(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return createTiledFromSource(paramBuildableBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3);
  }
  
  public static TiledTextureRegion createTiledFromSource(BitmapTextureAtlas paramBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return TextureRegionFactory.createTiledFromSource(paramBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, paramInt3, paramInt4, sCreateTextureRegionBuffersManaged);
  }
  
  public static TiledTextureRegion createTiledFromSource(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2)
  {
    return BuildableTextureAtlasTextureRegionFactory.createTiledFromSource(paramBuildableBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, sCreateTextureRegionBuffersManaged);
  }
  
  public static void reset()
  {
    setAssetBasePath("");
    setCreateTextureRegionBuffersManaged(false);
  }
  
  public static void setAssetBasePath(String paramString)
  {
    if ((paramString.endsWith("/")) || (paramString.length() == 0))
    {
      sAssetBasePath = paramString;
      return;
    }
    throw new IllegalArgumentException("pAssetBasePath must end with '/' or be lenght zero.");
  }
  
  public static void setCreateTextureRegionBuffersManaged(boolean paramBoolean)
  {
    sCreateTextureRegionBuffersManaged = paramBoolean;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory
 * JD-Core Version:    0.7.0.1
 */