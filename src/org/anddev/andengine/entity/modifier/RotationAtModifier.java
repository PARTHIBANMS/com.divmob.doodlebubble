package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class RotationAtModifier
  extends RotationModifier
{
  private final float mRotationCenterX;
  private final float mRotationCenterY;
  
  public RotationAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    super(paramFloat1, paramFloat2, paramFloat3, IEaseFunction.DEFAULT);
    this.mRotationCenterX = paramFloat4;
    this.mRotationCenterY = paramFloat5;
  }
  
  public RotationAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, IEaseFunction.DEFAULT);
    this.mRotationCenterX = paramFloat4;
    this.mRotationCenterY = paramFloat5;
  }
  
  public RotationAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEntityModifierListener, paramIEaseFunction);
    this.mRotationCenterX = paramFloat4;
    this.mRotationCenterY = paramFloat5;
  }
  
  public RotationAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramIEaseFunction);
    this.mRotationCenterX = paramFloat4;
    this.mRotationCenterY = paramFloat5;
  }
  
  protected RotationAtModifier(RotationAtModifier paramRotationAtModifier)
  {
    super(paramRotationAtModifier);
    this.mRotationCenterX = paramRotationAtModifier.mRotationCenterX;
    this.mRotationCenterY = paramRotationAtModifier.mRotationCenterY;
  }
  
  public RotationAtModifier deepCopy()
  {
    return new RotationAtModifier(this);
  }
  
  protected void onManagedInitialize(IEntity paramIEntity)
  {
    super.onManagedInitialize(paramIEntity);
    paramIEntity.setRotationCenter(this.mRotationCenterX, this.mRotationCenterY);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.RotationAtModifier
 * JD-Core Version:    0.7.0.1
 */