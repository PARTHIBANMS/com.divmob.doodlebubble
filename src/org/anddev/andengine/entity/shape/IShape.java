package org.anddev.andengine.entity.shape;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene.ITouchArea;

public abstract interface IShape
  extends IEntity, Scene.ITouchArea
{
  public abstract boolean collidesWith(IShape paramIShape);
  
  public abstract float getBaseHeight();
  
  public abstract float getBaseWidth();
  
  public abstract float getHeight();
  
  public abstract float getHeightScaled();
  
  public abstract float getWidth();
  
  public abstract float getWidthScaled();
  
  public abstract boolean isCullingEnabled();
  
  public abstract void setBlendFunction(int paramInt1, int paramInt2);
  
  public abstract void setCullingEnabled(boolean paramBoolean);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.shape.IShape
 * JD-Core Version:    0.7.0.1
 */