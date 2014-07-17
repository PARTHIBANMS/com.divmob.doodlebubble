package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseDoubleValueSpanModifier;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public abstract class DoubleValueSpanEntityModifier
  extends BaseDoubleValueSpanModifier<IEntity>
  implements IEntityModifier
{
  public DoubleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5);
  }
  
  public DoubleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener);
  }
  
  public DoubleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public DoubleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEaseFunction);
  }
  
  protected DoubleValueSpanEntityModifier(DoubleValueSpanEntityModifier paramDoubleValueSpanEntityModifier)
  {
    super(paramDoubleValueSpanEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.DoubleValueSpanEntityModifier
 * JD-Core Version:    0.7.0.1
 */