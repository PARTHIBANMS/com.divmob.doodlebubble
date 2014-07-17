package org.anddev.andengine.opengl.texture.region;

import org.anddev.andengine.opengl.texture.ITexture;

public class TextureRegion
  extends BaseTextureRegion
{
  public TextureRegion(ITexture paramITexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramITexture, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public TextureRegion deepCopy()
  {
    return new TextureRegion(this.mTexture, this.mTexturePositionX, this.mTexturePositionY, this.mWidth, this.mHeight);
  }
  
  public float getTextureCoordinateX1()
  {
    return this.mTexturePositionX / this.mTexture.getWidth();
  }
  
  public float getTextureCoordinateX2()
  {
    return (this.mTexturePositionX + this.mWidth) / this.mTexture.getWidth();
  }
  
  public float getTextureCoordinateY1()
  {
    return this.mTexturePositionY / this.mTexture.getHeight();
  }
  
  public float getTextureCoordinateY2()
  {
    return (this.mTexturePositionY + this.mHeight) / this.mTexture.getHeight();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.TextureRegion
 * JD-Core Version:    0.7.0.1
 */