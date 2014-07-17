package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseSingleValueSpanModifier;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public abstract class SingleValueSpanEntityModifier
  extends BaseSingleValueSpanModifier<IEntity>
  implements IEntityModifier
{
  public SingleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public SingleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener);
  }
  
  public SingleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public SingleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEaseFunction);
  }
  
  protected SingleValueSpanEntityModifier(SingleValueSpanEntityModifier paramSingleValueSpanEntityModifier)
  {
    super(paramSingleValueSpanEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.SingleValueSpanEntityModifier
 * JD-Core Version:    0.7.0.1
 */