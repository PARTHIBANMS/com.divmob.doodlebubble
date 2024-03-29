package org.anddev.andengine.entity.particle.initializer;

import java.util.Random;
import org.anddev.andengine.entity.particle.Particle;
import org.anddev.andengine.util.MathUtils;

public abstract class BaseTripleValueInitializer
  extends BaseDoubleValueInitializer
{
  protected float mMaxValueC;
  protected float mMinValueC;
  
  public BaseTripleValueInitializer(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.mMinValueC = paramFloat5;
    this.mMaxValueC = paramFloat6;
  }
  
  private final float getRandomValueC()
  {
    if (this.mMinValueC == this.mMaxValueC) {
      return this.mMaxValueC;
    }
    return MathUtils.RANDOM.nextFloat() * (this.mMaxValueC - this.mMinValueC) + this.mMinValueC;
  }
  
  protected final void onInitializeParticle(Particle paramParticle, float paramFloat1, float paramFloat2)
  {
    onInitializeParticle(paramParticle, paramFloat1, paramFloat2, getRandomValueC());
  }
  
  protected abstract void onInitializeParticle(Particle paramParticle, float paramFloat1, float paramFloat2, float paramFloat3);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.initializer.BaseTripleValueInitializer
 * JD-Core Version:    0.7.0.1
 */