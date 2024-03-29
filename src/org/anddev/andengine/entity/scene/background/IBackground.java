package org.anddev.andengine.entity.scene.background;

import org.anddev.andengine.engine.handler.IUpdateHandler;
import org.anddev.andengine.opengl.IDrawable;
import org.anddev.andengine.util.modifier.IModifier;

public abstract interface IBackground
  extends IUpdateHandler, IDrawable
{
  public abstract void addBackgroundModifier(IModifier<IBackground> paramIModifier);
  
  public abstract void clearBackgroundModifiers();
  
  public abstract boolean removeBackgroundModifier(IModifier<IBackground> paramIModifier);
  
  public abstract void setColor(float paramFloat1, float paramFloat2, float paramFloat3);
  
  public abstract void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.IBackground
 * JD-Core Version:    0.7.0.1
 */