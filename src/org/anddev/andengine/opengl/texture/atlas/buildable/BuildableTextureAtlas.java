package org.anddev.andengine.opengl.texture.atlas.buildable;

import java.io.IOException;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener;
import org.anddev.andengine.opengl.texture.atlas.buildable.builder.ITextureBuilder;
import org.anddev.andengine.opengl.texture.atlas.buildable.builder.ITextureBuilder.TextureAtlasSourcePackingException;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Callback;

public class BuildableTextureAtlas<T extends ITextureAtlasSource, A extends ITextureAtlas<T>>
  implements ITextureAtlas<T>
{
  private final A mTextureAtlas;
  private final ArrayList<TextureAtlasSourceWithWithLocationCallback<T>> mTextureAtlasSourcesToPlace = new ArrayList();
  
  public BuildableTextureAtlas(A paramA)
  {
    this.mTextureAtlas = paramA;
  }
  
  @Deprecated
  public void addTextureAtlasSource(T paramT, int paramInt1, int paramInt2)
  {
    this.mTextureAtlas.addTextureAtlasSource(paramT, paramInt1, paramInt2);
  }
  
  public void addTextureAtlasSource(T paramT, Callback<T> paramCallback)
  {
    this.mTextureAtlasSourcesToPlace.add(new TextureAtlasSourceWithWithLocationCallback(paramT, paramCallback));
  }
  
  public void bind(GL10 paramGL10)
  {
    this.mTextureAtlas.bind(paramGL10);
  }
  
  public void build(ITextureBuilder<T, A> paramITextureBuilder)
    throws ITextureBuilder.TextureAtlasSourcePackingException
  {
    paramITextureBuilder.pack(this.mTextureAtlas, this.mTextureAtlasSourcesToPlace);
    this.mTextureAtlasSourcesToPlace.clear();
    this.mTextureAtlas.setUpdateOnHardwareNeeded(true);
  }
  
  public void clearTextureAtlasSources()
  {
    this.mTextureAtlas.clearTextureAtlasSources();
    this.mTextureAtlasSourcesToPlace.clear();
  }
  
  public int getHardwareTextureID()
  {
    return this.mTextureAtlas.getHardwareTextureID();
  }
  
  public int getHeight()
  {
    return this.mTextureAtlas.getHeight();
  }
  
  public TextureOptions getTextureOptions()
  {
    return this.mTextureAtlas.getTextureOptions();
  }
  
  public ITextureAtlas.ITextureAtlasStateListener<T> getTextureStateListener()
  {
    return this.mTextureAtlas.getTextureStateListener();
  }
  
  public int getWidth()
  {
    return this.mTextureAtlas.getWidth();
  }
  
  public boolean hasTextureStateListener()
  {
    return this.mTextureAtlas.hasTextureStateListener();
  }
  
  public boolean isLoadedToHardware()
  {
    return this.mTextureAtlas.isLoadedToHardware();
  }
  
  public boolean isUpdateOnHardwareNeeded()
  {
    return this.mTextureAtlas.isUpdateOnHardwareNeeded();
  }
  
  public void loadToHardware(GL10 paramGL10)
    throws IOException
  {
    this.mTextureAtlas.loadToHardware(paramGL10);
  }
  
  public void reloadToHardware(GL10 paramGL10)
    throws IOException
  {
    this.mTextureAtlas.reloadToHardware(paramGL10);
  }
  
  public void removeTextureAtlasSource(ITextureAtlasSource paramITextureAtlasSource)
  {
    ArrayList localArrayList = this.mTextureAtlasSourcesToPlace;
    for (int i = -1 + localArrayList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      if (((TextureAtlasSourceWithWithLocationCallback)localArrayList.get(i)).mTextureAtlasSource == paramITextureAtlasSource)
      {
        localArrayList.remove(i);
        this.mTextureAtlas.setUpdateOnHardwareNeeded(true);
        return;
      }
    }
  }
  
  public void removeTextureAtlasSource(T paramT, int paramInt1, int paramInt2)
  {
    this.mTextureAtlas.removeTextureAtlasSource(paramT, paramInt1, paramInt2);
  }
  
  public void setLoadedToHardware(boolean paramBoolean)
  {
    this.mTextureAtlas.setLoadedToHardware(paramBoolean);
  }
  
  public void setUpdateOnHardwareNeeded(boolean paramBoolean)
  {
    this.mTextureAtlas.setUpdateOnHardwareNeeded(paramBoolean);
  }
  
  public void unloadFromHardware(GL10 paramGL10)
  {
    this.mTextureAtlas.unloadFromHardware(paramGL10);
  }
  
  public static class TextureAtlasSourceWithWithLocationCallback<T extends ITextureAtlasSource>
  {
    private final Callback<T> mCallback;
    private final T mTextureAtlasSource;
    
    public TextureAtlasSourceWithWithLocationCallback(T paramT, Callback<T> paramCallback)
    {
      this.mTextureAtlasSource = paramT;
      this.mCallback = paramCallback;
    }
    
    public Callback<T> getCallback()
    {
      return this.mCallback;
    }
    
    public T getTextureAtlasSource()
    {
      return this.mTextureAtlasSource;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas
 * JD-Core Version:    0.7.0.1
 */