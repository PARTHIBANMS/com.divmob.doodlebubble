package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseDoubleValueChangeModifier;

public abstract class DoubleValueChangeEntityModifier
  extends BaseDoubleValueChangeModifier<IEntity>
  implements IEntityModifier
{
  public DoubleValueChangeEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public DoubleValueChangeEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener);
  }
  
  public DoubleValueChangeEntityModifier(DoubleValueChangeEntityModifier paramDoubleValueChangeEntityModifier)
  {
    super(paramDoubleValueChangeEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.DoubleValueChangeEntityModifier
 * JD-Core Version:    0.7.0.1
 */