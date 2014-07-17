package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class CubicBezierMoveModifier
  extends DurationEntityModifier
{
  private final IEaseFunction mEaseFunction;
  private final float mX1;
  private final float mX2;
  private final float mX3;
  private final float mX4;
  private final float mY1;
  private final float mY2;
  private final float mY3;
  private final float mY4;
  
  public CubicBezierMoveModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1);
    this.mX1 = paramFloat2;
    this.mY1 = paramFloat3;
    this.mX2 = paramFloat4;
    this.mY2 = paramFloat5;
    this.mX3 = paramFloat6;
    this.mY3 = paramFloat7;
    this.mX4 = paramFloat8;
    this.mY4 = paramFloat9;
    this.mEaseFunction = paramIEaseFunction;
  }
  
  public CubicBezierMoveModifier deepCopy()
  {
    return new CubicBezierMoveModifier(this.mDuration, this.mX1, this.mY1, this.mX2, this.mY2, this.mX3, this.mY3, this.mX4, this.mY4, this.mEaseFunction);
  }
  
  protected void onManagedInitialize(IEntity paramIEntity) {}
  
  protected void onManagedUpdate(float paramFloat, IEntity paramIEntity)
  {
    float f1 = this.mEaseFunction.getPercentage(getSecondsElapsed(), this.mDuration);
    float f2 = 1.0F - f1;
    float f3 = f1 * f1;
    float f4 = f2 * f2;
    float f5 = f4 * f2;
    float f6 = f3 * f1;
    float f7 = f1 * (f4 * 3.0F);
    float f8 = f3 * (f2 * 3.0F);
    paramIEntity.setPosition(f5 * this.mX1 + f7 * this.mX2 + f8 * this.mX3 + f6 * this.mX4, f5 * this.mY1 + f7 * this.mY2 + f8 * this.mY3 + f6 * this.mY4);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.CubicBezierMoveModifier
 * JD-Core Version:    0.7.0.1
 */