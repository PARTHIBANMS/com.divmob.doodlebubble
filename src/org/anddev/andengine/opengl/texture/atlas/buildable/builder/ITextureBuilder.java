package org.anddev.andengine.opengl.texture.atlas.buildable.builder;

import java.util.ArrayList;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

public abstract interface ITextureBuilder<T extends ITextureAtlasSource, A extends ITextureAtlas<T>>
{
  public abstract void pack(A paramA, ArrayList<BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<T>> paramArrayList)
    throws ITextureBuilder.TextureAtlasSourcePackingException;
  
  public static class TextureAtlasSourcePackingException
    extends Exception
  {
    private static final long serialVersionUID = 4700734424214372671L;
    
    public TextureAtlasSourcePackingException(String paramString)
    {
      super();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.builder.ITextureBuilder
 * JD-Core Version:    0.7.0.1
 */