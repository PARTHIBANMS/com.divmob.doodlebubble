package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class AlphaModifier
  extends SingleValueSpanEntityModifier
{
  public AlphaModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, null, IEaseFunction.DEFAULT);
  }
  
  public AlphaModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public AlphaModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public AlphaModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, null, paramIEaseFunction);
  }
  
  protected AlphaModifier(AlphaModifier paramAlphaModifier)
  {
    super(paramAlphaModifier);
  }
  
  public AlphaModifier deepCopy()
  {
    return new AlphaModifier(this);
  }
  
  protected void onSetInitialValue(IEntity paramIEntity, float paramFloat)
  {
    paramIEntity.setAlpha(paramFloat);
  }
  
  protected void onSetValue(IEntity paramIEntity, float paramFloat1, float paramFloat2)
  {
    paramIEntity.setAlpha(paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.AlphaModifier
 * JD-Core Version:    0.7.0.1
 */