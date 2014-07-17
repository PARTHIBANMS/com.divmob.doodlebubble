package org.anddev.andengine.opengl.texture.atlas.buildable.builder;

import java.util.Comparator;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;

class BlackPawnTextureBuilder$1
  implements Comparator<BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<?>>
{
  public int compare(BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<?> paramTextureAtlasSourceWithWithLocationCallback1, BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<?> paramTextureAtlasSourceWithWithLocationCallback2)
  {
    int i = ((ITextureAtlasSource)paramTextureAtlasSourceWithWithLocationCallback2.getTextureAtlasSource()).getWidth() - ((ITextureAtlasSource)paramTextureAtlasSourceWithWithLocationCallback1.getTextureAtlasSource()).getWidth();
    if (i != 0) {
      return i;
    }
    return ((ITextureAtlasSource)paramTextureAtlasSourceWithWithLocationCallback2.getTextureAtlasSource()).getHeight() - ((ITextureAtlasSource)paramTextureAtlasSourceWithWithLocationCallback1.getTextureAtlasSource()).getHeight();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.builder.BlackPawnTextureBuilder.1
 * JD-Core Version:    0.7.0.1
 */