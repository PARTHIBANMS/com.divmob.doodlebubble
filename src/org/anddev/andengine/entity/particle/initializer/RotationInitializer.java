package org.anddev.andengine.entity.particle.initializer;

import org.anddev.andengine.entity.particle.Particle;

public class RotationInitializer
  extends BaseSingleValueInitializer
{
  public RotationInitializer(float paramFloat)
  {
    this(paramFloat, paramFloat);
  }
  
  public RotationInitializer(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  public float getMaxRotation()
  {
    return this.mMaxValue;
  }
  
  public float getMinRotation()
  {
    return this.mMinValue;
  }
  
  public void onInitializeParticle(Particle paramParticle, float paramFloat)
  {
    paramParticle.setRotation(paramFloat);
  }
  
  public void setRotation(float paramFloat)
  {
    this.mMinValue = paramFloat;
    this.mMaxValue = paramFloat;
  }
  
  public void setRotation(float paramFloat1, float paramFloat2)
  {
    this.mMinValue = paramFloat1;
    this.mMaxValue = paramFloat2;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.initializer.RotationInitializer
 * JD-Core Version:    0.7.0.1
 */