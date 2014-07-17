package org.anddev.andengine.opengl.texture.source;

import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;

public abstract interface ITextureAtlasSource
{
  public abstract ITextureAtlasSource deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public abstract int getHeight();
  
  public abstract int getTexturePositionX();
  
  public abstract int getTexturePositionY();
  
  public abstract int getWidth();
  
  public abstract void setTexturePositionX(int paramInt);
  
  public abstract void setTexturePositionY(int paramInt);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.source.ITextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */