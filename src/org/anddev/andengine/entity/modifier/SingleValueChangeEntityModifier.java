package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseSingleValueChangeModifier;

public abstract class SingleValueChangeEntityModifier
  extends BaseSingleValueChangeModifier<IEntity>
  implements IEntityModifier
{
  public SingleValueChangeEntityModifier(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  public SingleValueChangeEntityModifier(float paramFloat1, float paramFloat2, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramIEntityModifierListener);
  }
  
  protected SingleValueChangeEntityModifier(SingleValueChangeEntityModifier paramSingleValueChangeEntityModifier)
  {
    super(paramSingleValueChangeEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.SingleValueChangeEntityModifier
 * JD-Core Version:    0.7.0.1
 */