package org.anddev.andengine.entity.particle.modifier;

import org.anddev.andengine.entity.particle.Particle;
import org.anddev.andengine.entity.particle.initializer.IParticleInitializer;

public abstract interface IParticleModifier
  extends IParticleInitializer
{
  public abstract void onUpdateParticle(Particle paramParticle);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.modifier.IParticleModifier
 * JD-Core Version:    0.7.0.1
 */