package org.anddev.andengine.entity.particle.initializer;

import org.anddev.andengine.entity.particle.Particle;

public class ColorInitializer
  extends BaseTripleValueInitializer
{
  public ColorInitializer(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramFloat1, paramFloat1, paramFloat2, paramFloat2, paramFloat3, paramFloat3);
  }
  
  public ColorInitializer(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
  }
  
  protected void onInitializeParticle(Particle paramParticle, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramParticle.setColor(paramFloat1, paramFloat2, paramFloat3);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.initializer.ColorInitializer
 * JD-Core Version:    0.7.0.1
 */