package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class MoveXModifier
  extends SingleValueSpanEntityModifier
{
  public MoveXModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, null, IEaseFunction.DEFAULT);
  }
  
  public MoveXModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public MoveXModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public MoveXModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, null, paramIEaseFunction);
  }
  
  protected MoveXModifier(MoveXModifier paramMoveXModifier)
  {
    super(paramMoveXModifier);
  }
  
  public MoveXModifier deepCopy()
  {
    return new MoveXModifier(this);
  }
  
  protected void onSetInitialValue(IEntity paramIEntity, float paramFloat)
  {
    paramIEntity.setPosition(paramFloat, paramIEntity.getY());
  }
  
  protected void onSetValue(IEntity paramIEntity, float paramFloat1, float paramFloat2)
  {
    paramIEntity.setPosition(paramFloat2, paramIEntity.getY());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.MoveXModifier
 * JD-Core Version:    0.7.0.1
 */