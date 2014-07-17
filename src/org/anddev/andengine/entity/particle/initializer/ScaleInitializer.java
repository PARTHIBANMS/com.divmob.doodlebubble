package org.anddev.andengine.entity.particle.initializer;

import org.anddev.andengine.entity.particle.Particle;

public class ScaleInitializer
  extends BaseSingleValueInitializer
{
  public ScaleInitializer(float paramFloat)
  {
    this(paramFloat, paramFloat);
  }
  
  public ScaleInitializer(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  protected void onInitializeParticle(Particle paramParticle, float paramFloat)
  {
    paramParticle.setScale(paramFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.initializer.ScaleInitializer
 * JD-Core Version:    0.7.0.1
 */