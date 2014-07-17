package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class QuadraticBezierMoveModifier
  extends DurationEntityModifier
{
  private final IEaseFunction mEaseFunction;
  private final float mX1;
  private final float mX2;
  private final float mX3;
  private final float mY1;
  private final float mY2;
  private final float mY3;
  
  public QuadraticBezierMoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1);
    this.mX1 = paramFloat2;
    this.mY1 = paramFloat3;
    this.mX2 = paramFloat4;
    this.mY2 = paramFloat5;
    this.mX3 = paramFloat6;
    this.mY3 = paramFloat7;
    this.mEaseFunction = paramIEaseFunction;
  }
  
  public QuadraticBezierMoveModifier deepCopy()
  {
    return new QuadraticBezierMoveModifier(this.mDuration, this.mX1, this.mY1, this.mX2, this.mY2, this.mX3, this.mY3, this.mEaseFunction);
  }
  
  protected void onManagedInitialize(IEntity paramIEntity) {}
  
  protected void onManagedUpdate(float paramFloat, IEntity paramIEntity)
  {
    float f1 = this.mEaseFunction.getPercentage(getSecondsElapsed(), this.mDuration);
    float f2 = 1.0F - f1;
    float f3 = f1 * f1;
    float f4 = f2 * f2;
    float f5 = f1 * (f2 * 2.0F);
    paramIEntity.setPosition(f4 * this.mX1 + f5 * this.mX2 + f3 * this.mX3, f4 * this.mY1 + f5 * this.mY2 + f3 * this.mY3);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.QuadraticBezierMoveModifier
 * JD-Core Version:    0.7.0.1
 */