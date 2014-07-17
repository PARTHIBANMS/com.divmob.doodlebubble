package com.divmob.maegame.e;

import android.content.Context;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.AssetBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.ResourceBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public class d
  extends BitmapTextureAtlasTextureRegionFactory
{
  public static <T extends ITextureAtlasSource> TextureRegion a(ITextureAtlas<T> paramITextureAtlas, T paramT, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    TextureRegion localTextureRegion = new TextureRegion(paramITextureAtlas, paramInt1 + paramInt3, paramInt2 + paramInt3, paramT.getWidth() - paramInt3 * 2, paramT.getHeight() - paramInt3 * 2);
    paramITextureAtlas.addTextureAtlasSource(paramT, localTextureRegion.getTexturePositionX() - paramInt3, localTextureRegion.getTexturePositionY() - paramInt3);
    localTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTextureRegion;
  }
  
  public static TextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3, paramInt4);
  }
  
  public static TextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, BitmapTextureAtlasTextureRegionFactory.sAssetBasePath + paramString), paramInt1, paramInt2, paramInt3);
  }
  
  public static TextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, sCreateTextureRegionBuffersManaged, paramInt3);
  }
  
  public static TextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2)
  {
    return a(paramBuildableBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2);
  }
  
  public static TextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, String paramString, int paramInt)
  {
    return a(paramBuildableBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, BitmapTextureAtlasTextureRegionFactory.sAssetBasePath + paramString), paramInt);
  }
  
  public static TextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt)
  {
    return a.a(paramBuildableBitmapTextureAtlas, paramIBitmapTextureAtlasSource, sCreateTextureRegionBuffersManaged, paramInt);
  }
  
  public static <T extends ITextureAtlasSource> TiledTextureRegion a(ITextureAtlas<T> paramITextureAtlas, T paramT, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4, int paramInt5)
  {
    TiledTextureRegion localTiledTextureRegion = new TiledTextureRegion(paramITextureAtlas, paramInt1 + paramInt5, paramInt2 + paramInt5, paramT.getWidth() - paramInt5 * 2, paramT.getHeight() - paramInt5 * 2, paramInt3, paramInt4);
    paramITextureAtlas.addTextureAtlasSource(paramT, localTiledTextureRegion.getTexturePositionX() - paramInt5, localTiledTextureRegion.getTexturePositionY() - paramInt5);
    localTiledTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTiledTextureRegion;
  }
  
  public static TiledTextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return a(paramBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }
  
  public static TiledTextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    return a(paramBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, BitmapTextureAtlasTextureRegionFactory.sAssetBasePath + paramString), paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public static TiledTextureRegion a(BitmapTextureAtlas paramBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    return a(paramBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, sCreateTextureRegionBuffersManaged, paramInt3, paramInt4, paramInt5);
  }
  
  public static TiledTextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramBuildableBitmapTextureAtlas, new ResourceBitmapTextureAtlasSource(paramContext, paramInt1), paramInt2, paramInt3, paramInt4);
  }
  
  public static TiledTextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramBuildableBitmapTextureAtlas, new AssetBitmapTextureAtlasSource(paramContext, BitmapTextureAtlasTextureRegionFactory.sAssetBasePath + paramString), paramInt1, paramInt2, paramInt3);
  }
  
  public static TiledTextureRegion a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramBuildableBitmapTextureAtlas, paramIBitmapTextureAtlasSource, paramInt1, paramInt2, sCreateTextureRegionBuffersManaged, paramInt3);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.e.d
 * JD-Core Version:    0.7.0.1
 */