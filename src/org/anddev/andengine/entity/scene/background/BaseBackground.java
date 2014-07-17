package org.anddev.andengine.entity.scene.background;

import org.anddev.andengine.util.modifier.IModifier;
import org.anddev.andengine.util.modifier.ModifierList;

public abstract class BaseBackground
  implements IBackground
{
  private static final int BACKGROUNDMODIFIERS_CAPACITY_DEFAULT = 4;
  private final ModifierList<IBackground> mBackgroundModifiers = new ModifierList(this, 4);
  
  public void addBackgroundModifier(IModifier<IBackground> paramIModifier)
  {
    this.mBackgroundModifiers.add(paramIModifier);
  }
  
  public void clearBackgroundModifiers()
  {
    this.mBackgroundModifiers.clear();
  }
  
  public void onUpdate(float paramFloat)
  {
    this.mBackgroundModifiers.onUpdate(paramFloat);
  }
  
  public boolean removeBackgroundModifier(IModifier<IBackground> paramIModifier)
  {
    return this.mBackgroundModifiers.remove(paramIModifier);
  }
  
  public void reset()
  {
    this.mBackgroundModifiers.reset();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.BaseBackground
 * JD-Core Version:    0.7.0.1
 */