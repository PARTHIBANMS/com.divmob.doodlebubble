package org.anddev.andengine.entity.particle.emitter;

public class PointParticleEmitter
  extends BaseParticleEmitter
{
  public PointParticleEmitter(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  public void getPositionOffset(float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = this.mCenterX;
    paramArrayOfFloat[1] = this.mCenterY;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.emitter.PointParticleEmitter
 * JD-Core Version:    0.7.0.1
 */