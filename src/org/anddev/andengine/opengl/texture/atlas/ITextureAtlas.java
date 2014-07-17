package org.anddev.andengine.opengl.texture.atlas;

import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.ITexture.ITextureStateListener;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Debug;

public abstract interface ITextureAtlas<T extends ITextureAtlasSource>
  extends ITexture
{
  public abstract void addTextureAtlasSource(T paramT, int paramInt1, int paramInt2)
    throws IllegalArgumentException;
  
  public abstract void clearTextureAtlasSources();
  
  public abstract ITextureAtlasStateListener<T> getTextureStateListener();
  
  public abstract void removeTextureAtlasSource(T paramT, int paramInt1, int paramInt2);
  
  public static abstract interface ITextureAtlasStateListener<T extends ITextureAtlasSource>
    extends ITexture.ITextureStateListener
  {
    public abstract void onTextureAtlasSourceLoadExeption(ITextureAtlas<T> paramITextureAtlas, T paramT, Throwable paramThrowable);
    
    public static class DebugTextureAtlasStateListener<T extends ITextureAtlasSource>
      implements ITextureAtlas.ITextureAtlasStateListener<T>
    {
      public void onLoadedToHardware(ITexture paramITexture)
      {
        Debug.d("Texture loaded: " + paramITexture.toString());
      }
      
      public void onTextureAtlasSourceLoadExeption(ITextureAtlas<T> paramITextureAtlas, T paramT, Throwable paramThrowable)
      {
        Debug.e("Exception loading TextureAtlasSource. TextureAtlas: " + paramITextureAtlas.toString() + " TextureAtlasSource: " + paramT.toString(), paramThrowable);
      }
      
      public void onUnloadedFromHardware(ITexture paramITexture)
      {
        Debug.d("Texture unloaded: " + paramITexture.toString());
      }
    }
    
    public static class TextureAtlasStateAdapter<T extends ITextureAtlasSource>
      implements ITextureAtlas.ITextureAtlasStateListener<T>
    {
      public void onLoadedToHardware(ITexture paramITexture) {}
      
      public void onTextureAtlasSourceLoadExeption(ITextureAtlas<T> paramITextureAtlas, T paramT, Throwable paramThrowable) {}
      
      public void onUnloadedFromHardware(ITexture paramITexture) {}
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.ITextureAtlas
 * JD-Core Version:    0.7.0.1
 */