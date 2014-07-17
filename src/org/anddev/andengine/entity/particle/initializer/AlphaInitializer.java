package org.anddev.andengine.entity.particle.initializer;

import org.anddev.andengine.entity.particle.Particle;

public class AlphaInitializer
  extends BaseSingleValueInitializer
{
  public AlphaInitializer(float paramFloat)
  {
    super(paramFloat, paramFloat);
  }
  
  public AlphaInitializer(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  protected void onInitializeParticle(Particle paramParticle, float paramFloat)
  {
    paramParticle.setAlpha(paramFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.initializer.AlphaInitializer
 * JD-Core Version:    0.7.0.1
 */