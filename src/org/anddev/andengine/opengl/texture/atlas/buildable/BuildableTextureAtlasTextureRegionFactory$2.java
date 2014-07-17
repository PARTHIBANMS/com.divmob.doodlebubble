package org.anddev.andengine.opengl.texture.atlas.buildable;

import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Callback;

class BuildableTextureAtlasTextureRegionFactory$2
  implements Callback<T>
{
  BuildableTextureAtlasTextureRegionFactory$2(TiledTextureRegion paramTiledTextureRegion) {}
  
  public void onCallback(T paramT)
  {
    this.val$tiledTextureRegion.setTexturePosition(paramT.getTexturePositionX(), paramT.getTexturePositionY());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlasTextureRegionFactory.2
 * JD-Core Version:    0.7.0.1
 */