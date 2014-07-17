package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.MathUtils;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class RotateCubicBezierMoveModifier
  extends CubicBezierMoveModifier
{
  public RotateCubicBezierMoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9, paramIEaseFunction);
  }
  
  protected void onManagedUpdate(float paramFloat, IEntity paramIEntity)
  {
    float f1 = paramIEntity.getX();
    float f2 = paramIEntity.getY();
    super.onManagedUpdate(paramFloat, paramIEntity);
    float f3 = paramIEntity.getX() - f1;
    paramIEntity.setRotation(90.0F + MathUtils.radToDeg(MathUtils.atan2(paramIEntity.getY() - f2, f3)));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.RotateCubicBezierMoveModifier
 * JD-Core Version:    0.7.0.1
 */