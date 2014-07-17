package org.anddev.andengine.opengl.texture.region;

import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.region.buffer.TextureRegionBuffer;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;

public abstract class BaseTextureRegion
{
  protected int mHeight;
  protected final ITexture mTexture;
  protected int mTexturePositionX;
  protected int mTexturePositionY;
  protected final TextureRegionBuffer mTextureRegionBuffer;
  protected int mWidth;
  
  public BaseTextureRegion(ITexture paramITexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mTexture = paramITexture;
    this.mTexturePositionX = paramInt1;
    this.mTexturePositionY = paramInt2;
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
    this.mTextureRegionBuffer = new TextureRegionBuffer(this, 35044, true);
    initTextureBuffer();
  }
  
  protected abstract BaseTextureRegion deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public int getHeight()
  {
    return this.mHeight;
  }
  
  public ITexture getTexture()
  {
    return this.mTexture;
  }
  
  public TextureRegionBuffer getTextureBuffer()
  {
    return this.mTextureRegionBuffer;
  }
  
  public abstract float getTextureCoordinateX1();
  
  public abstract float getTextureCoordinateX2();
  
  public abstract float getTextureCoordinateY1();
  
  public abstract float getTextureCoordinateY2();
  
  public int getTexturePositionX()
  {
    return this.mTexturePositionX;
  }
  
  public int getTexturePositionY()
  {
    return this.mTexturePositionY;
  }
  
  public int getWidth()
  {
    return this.mWidth;
  }
  
  protected void initTextureBuffer()
  {
    updateTextureRegionBuffer();
  }
  
  public boolean isFlippedHorizontal()
  {
    return this.mTextureRegionBuffer.isFlippedHorizontal();
  }
  
  public boolean isFlippedVertical()
  {
    return this.mTextureRegionBuffer.isFlippedVertical();
  }
  
  public boolean isTextureRegionBufferManaged()
  {
    return this.mTextureRegionBuffer.isManaged();
  }
  
  public void onApply(GL10 paramGL10)
  {
    this.mTexture.bind(paramGL10);
    if (GLHelper.EXTENSIONS_VERTEXBUFFEROBJECTS)
    {
      GL11 localGL11 = (GL11)paramGL10;
      this.mTextureRegionBuffer.selectOnHardware(localGL11);
      GLHelper.texCoordZeroPointer(localGL11);
      return;
    }
    GLHelper.texCoordPointer(paramGL10, this.mTextureRegionBuffer.getFloatBuffer());
  }
  
  public void setFlippedHorizontal(boolean paramBoolean)
  {
    this.mTextureRegionBuffer.setFlippedHorizontal(paramBoolean);
  }
  
  public void setFlippedVertical(boolean paramBoolean)
  {
    this.mTextureRegionBuffer.setFlippedVertical(paramBoolean);
  }
  
  public void setHeight(int paramInt)
  {
    this.mHeight = paramInt;
    updateTextureRegionBuffer();
  }
  
  public void setTexturePosition(int paramInt1, int paramInt2)
  {
    this.mTexturePositionX = paramInt1;
    this.mTexturePositionY = paramInt2;
    updateTextureRegionBuffer();
  }
  
  public void setTextureRegionBufferManaged(boolean paramBoolean)
  {
    this.mTextureRegionBuffer.setManaged(paramBoolean);
  }
  
  public void setWidth(int paramInt)
  {
    this.mWidth = paramInt;
    updateTextureRegionBuffer();
  }
  
  protected void updateTextureRegionBuffer()
  {
    this.mTextureRegionBuffer.update();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.BaseTextureRegion
 * JD-Core Version:    0.7.0.1
 */