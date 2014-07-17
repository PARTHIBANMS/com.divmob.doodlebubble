package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;

public class MoveByModifier
  extends DoubleValueChangeEntityModifier
{
  public MoveByModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public MoveByModifier(float paramFloat1, float paramFloat2, float paramFloat3, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener);
  }
  
  protected MoveByModifier(DoubleValueChangeEntityModifier paramDoubleValueChangeEntityModifier)
  {
    super(paramDoubleValueChangeEntityModifier);
  }
  
  public MoveByModifier deepCopy()
  {
    return new MoveByModifier(this);
  }
  
  protected void onChangeValues(float paramFloat1, IEntity paramIEntity, float paramFloat2, float paramFloat3)
  {
    paramIEntity.setPosition(paramFloat2 + paramIEntity.getX(), paramFloat3 + paramIEntity.getY());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.MoveByModifier
 * JD-Core Version:    0.7.0.1
 */