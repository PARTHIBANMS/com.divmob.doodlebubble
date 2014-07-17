package org.anddev.andengine.opengl.texture.atlas.buildable;

import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public class BuildableTextureAtlasTextureRegionFactory
{
  public static <T extends ITextureAtlasSource, A extends ITextureAtlas<T>> TextureRegion createFromSource(BuildableTextureAtlas<T, A> paramBuildableTextureAtlas, T paramT, boolean paramBoolean)
  {
    TextureRegion localTextureRegion = new TextureRegion(paramBuildableTextureAtlas, 0, 0, paramT.getWidth(), paramT.getHeight());
    paramBuildableTextureAtlas.addTextureAtlasSource(paramT, new BuildableTextureAtlasTextureRegionFactory.1(localTextureRegion));
    localTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTextureRegion;
  }
  
  public static <T extends ITextureAtlasSource, A extends ITextureAtlas<T>> TiledTextureRegion createTiledFromSource(BuildableTextureAtlas<T, A> paramBuildableTextureAtlas, T paramT, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    TiledTextureRegion localTiledTextureRegion = new TiledTextureRegion(paramBuildableTextureAtlas, 0, 0, paramT.getWidth(), paramT.getHeight(), paramInt1, paramInt2);
    paramBuildableTextureAtlas.addTextureAtlasSource(paramT, new BuildableTextureAtlasTextureRegionFactory.2(localTiledTextureRegion));
    localTiledTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTiledTextureRegion;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlasTextureRegionFactory
 * JD-Core Version:    0.7.0.1
 */