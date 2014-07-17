package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class MoveModifier
  extends DoubleValueSpanEntityModifier
{
  public MoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, null, IEaseFunction.DEFAULT);
  }
  
  public MoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public MoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public MoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, null, paramIEaseFunction);
  }
  
  protected MoveModifier(MoveModifier paramMoveModifier)
  {
    super(paramMoveModifier);
  }
  
  public MoveModifier deepCopy()
  {
    return new MoveModifier(this);
  }
  
  protected void onSetInitialValues(IEntity paramIEntity, float paramFloat1, float paramFloat2)
  {
    paramIEntity.setPosition(paramFloat1, paramFloat2);
  }
  
  protected void onSetValues(IEntity paramIEntity, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramIEntity.setPosition(paramFloat2, paramFloat3);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.MoveModifier
 * JD-Core Version:    0.7.0.1
 */