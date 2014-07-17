package org.anddev.andengine.opengl.texture.source;

public abstract class BaseTextureAtlasSource
  implements ITextureAtlasSource
{
  protected int mTexturePositionX;
  protected int mTexturePositionY;
  
  public BaseTextureAtlasSource(int paramInt1, int paramInt2)
  {
    this.mTexturePositionX = paramInt1;
    this.mTexturePositionY = paramInt2;
  }
  
  public int getTexturePositionX()
  {
    return this.mTexturePositionX;
  }
  
  public int getTexturePositionY()
  {
    return this.mTexturePositionY;
  }
  
  public void setTexturePositionX(int paramInt)
  {
    this.mTexturePositionX = paramInt;
  }
  
  public void setTexturePositionY(int paramInt)
  {
    this.mTexturePositionY = paramInt;
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "( " + getWidth() + "x" + getHeight() + " @ " + this.mTexturePositionX + "/" + this.mTexturePositionY + " )";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */