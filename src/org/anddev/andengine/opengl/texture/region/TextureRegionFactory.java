package org.anddev.andengine.opengl.texture.region;

import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public class TextureRegionFactory
{
  public static <T extends ITextureAtlasSource> TextureRegion createFromSource(ITextureAtlas<T> paramITextureAtlas, T paramT, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    TextureRegion localTextureRegion = new TextureRegion(paramITextureAtlas, paramInt1, paramInt2, paramT.getWidth(), paramT.getHeight());
    paramITextureAtlas.addTextureAtlasSource(paramT, localTextureRegion.getTexturePositionX(), localTextureRegion.getTexturePositionY());
    localTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTextureRegion;
  }
  
  public static <T extends ITextureAtlasSource> TiledTextureRegion createTiledFromSource(ITextureAtlas<T> paramITextureAtlas, T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    TiledTextureRegion localTiledTextureRegion = new TiledTextureRegion(paramITextureAtlas, paramInt1, paramInt2, paramT.getWidth(), paramT.getHeight(), paramInt3, paramInt4);
    paramITextureAtlas.addTextureAtlasSource(paramT, localTiledTextureRegion.getTexturePositionX(), localTiledTextureRegion.getTexturePositionY());
    localTiledTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTiledTextureRegion;
  }
  
  public static TextureRegion extractFromTexture(ITexture paramITexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    TextureRegion localTextureRegion = new TextureRegion(paramITexture, paramInt1, paramInt2, paramInt3, paramInt4);
    localTextureRegion.setTextureRegionBufferManaged(paramBoolean);
    return localTextureRegion;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.TextureRegionFactory
 * JD-Core Version:    0.7.0.1
 */