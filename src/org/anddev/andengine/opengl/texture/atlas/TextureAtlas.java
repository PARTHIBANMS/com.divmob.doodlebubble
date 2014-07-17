package org.anddev.andengine.opengl.texture.atlas;

import java.util.ArrayList;
import org.anddev.andengine.opengl.texture.Texture;
import org.anddev.andengine.opengl.texture.Texture.PixelFormat;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.MathUtils;

public abstract class TextureAtlas<T extends ITextureAtlasSource>
  extends Texture
  implements ITextureAtlas<T>
{
  protected final int mHeight;
  protected final ArrayList<T> mTextureAtlasSources = new ArrayList();
  protected final int mWidth;
  
  public TextureAtlas(int paramInt1, int paramInt2, Texture.PixelFormat paramPixelFormat, TextureOptions paramTextureOptions, ITextureAtlas.ITextureAtlasStateListener<T> paramITextureAtlasStateListener)
  {
    super(paramPixelFormat, paramTextureOptions, paramITextureAtlasStateListener);
    if ((!MathUtils.isPowerOfTwo(paramInt1)) || (!MathUtils.isPowerOfTwo(paramInt2))) {
      throw new IllegalArgumentException("pWidth and pHeight must be a power of 2!");
    }
    this.mWidth = paramInt1;
    this.mHeight = paramInt2;
  }
  
  private void checkTextureAtlasSourcePosition(T paramT, int paramInt1, int paramInt2)
    throws IllegalArgumentException
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Illegal negative pTexturePositionX supplied: '" + paramInt1 + "'");
    }
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Illegal negative pTexturePositionY supplied: '" + paramInt2 + "'");
    }
    if ((paramInt1 + paramT.getWidth() > getWidth()) || (paramInt2 + paramT.getHeight() > getHeight())) {
      throw new IllegalArgumentException("Supplied pTextureAtlasSource must not exceed bounds of Texture.");
    }
  }
  
  public void addTextureAtlasSource(T paramT, int paramInt1, int paramInt2)
    throws IllegalArgumentException
  {
    checkTextureAtlasSourcePosition(paramT, paramInt1, paramInt2);
    paramT.setTexturePositionX(paramInt1);
    paramT.setTexturePositionY(paramInt2);
    this.mTextureAtlasSources.add(paramT);
    this.mUpdateOnHardwareNeeded = true;
  }
  
  public void clearTextureAtlasSources()
  {
    this.mTextureAtlasSources.clear();
    this.mUpdateOnHardwareNeeded = true;
  }
  
  public int getHeight()
  {
    return this.mHeight;
  }
  
  public ITextureAtlas.ITextureAtlasStateListener<T> getTextureStateListener()
  {
    return (ITextureAtlas.ITextureAtlasStateListener)super.getTextureStateListener();
  }
  
  public int getWidth()
  {
    return this.mWidth;
  }
  
  public void removeTextureAtlasSource(T paramT, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = this.mTextureAtlasSources;
    for (int i = -1 + localArrayList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      ITextureAtlasSource localITextureAtlasSource = (ITextureAtlasSource)localArrayList.get(i);
      if ((localITextureAtlasSource == paramT) && (localITextureAtlasSource.getTexturePositionX() == paramInt1) && (localITextureAtlasSource.getTexturePositionY() == paramInt2))
      {
        localArrayList.remove(i);
        this.mUpdateOnHardwareNeeded = true;
        return;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.TextureAtlas
 * JD-Core Version:    0.7.0.1
 */