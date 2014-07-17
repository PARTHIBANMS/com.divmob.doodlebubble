package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;

public class RotationByModifier
  extends SingleValueChangeEntityModifier
{
  public RotationByModifier(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  public RotationByModifier(float paramFloat1, float paramFloat2, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramIEntityModifierListener);
  }
  
  protected RotationByModifier(RotationByModifier paramRotationByModifier)
  {
    super(paramRotationByModifier);
  }
  
  public RotationByModifier deepCopy()
  {
    return new RotationByModifier(this);
  }
  
  protected void onChangeValue(float paramFloat1, IEntity paramIEntity, float paramFloat2)
  {
    paramIEntity.setRotation(paramFloat2 + paramIEntity.getRotation());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.RotationByModifier
 * JD-Core Version:    0.7.0.1
 */