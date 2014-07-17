package org.anddev.andengine.entity.particle.emitter;

import org.anddev.andengine.engine.handler.IUpdateHandler;

public abstract interface IParticleEmitter
  extends IUpdateHandler
{
  public abstract void getPositionOffset(float[] paramArrayOfFloat);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.emitter.IParticleEmitter
 * JD-Core Version:    0.7.0.1
 */