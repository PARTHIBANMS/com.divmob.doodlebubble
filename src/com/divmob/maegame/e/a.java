package com.divmob.maegame.e;

import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public class a
{
  public static <T extends ITextureAtlasSource, A extends ITextureAtlas<T>> TextureRegion a(BuildableTextureAtlas<T, A> paramBuildableTextureAtlas, T paramT, boolean paramBoolean, int paramInt)
  {
    TextureRegion localTextureRegion = new TextureRegion(paramBuildableTextureAtlas, paramInt, paramInt, paramT.getWidth() - paramInt * 2, paramT.getHeight() - paramInt * 2);
    paramBuildableTextureAtlas.addTextureAtlasSource(paramT, new b(localTextureRegion, paramInt));
    localTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTextureRegion;
  }
  
  public static <T extends ITextureAtlasSource, A extends ITextureAtlas<T>> TiledTextureRegion a(BuildableTextureAtlas<T, A> paramBuildableTextureAtlas, T paramT, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    TiledTextureRegion localTiledTextureRegion = new TiledTextureRegion(paramBuildableTextureAtlas, paramInt3, paramInt3, paramT.getWidth() - paramInt3 * 2, paramT.getHeight() - paramInt3 * 2, paramInt1, paramInt2);
    paramBuildableTextureAtlas.addTextureAtlasSource(paramT, new c(localTiledTextureRegion, paramInt3));
    localTiledTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTiledTextureRegion;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.e.a
 * JD-Core Version:    0.7.0.1
 */