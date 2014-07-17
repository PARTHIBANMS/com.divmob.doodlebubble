package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;

public class DelayModifier
  extends DurationEntityModifier
{
  public DelayModifier(float paramFloat)
  {
    super(paramFloat);
  }
  
  public DelayModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat, paramIEntityModifierListener);
  }
  
  protected DelayModifier(DelayModifier paramDelayModifier)
  {
    super(paramDelayModifier);
  }
  
  public DelayModifier deepCopy()
  {
    return new DelayModifier(this);
  }
  
  protected void onManagedInitialize(IEntity paramIEntity) {}
  
  protected void onManagedUpdate(float paramFloat, IEntity paramIEntity) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.DelayModifier
 * JD-Core Version:    0.7.0.1
 */