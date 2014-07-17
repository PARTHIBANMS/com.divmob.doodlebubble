package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseTripleValueSpanModifier;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public abstract class TripleValueSpanEntityModifier
  extends BaseTripleValueSpanModifier<IEntity>
  implements IEntityModifier
{
  public TripleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public TripleValueSpanEntityModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramIEaseFunction);
  }
  
  protected TripleValueSpanEntityModifier(TripleValueSpanEntityModifier paramTripleValueSpanEntityModifier)
  {
    super(paramTripleValueSpanEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.TripleValueSpanEntityModifier
 * JD-Core Version:    0.7.0.1
 */