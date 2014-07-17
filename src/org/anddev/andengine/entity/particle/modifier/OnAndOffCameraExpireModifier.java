package org.anddev.andengine.entity.particle.modifier;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.particle.Particle;

public class OnAndOffCameraExpireModifier
  extends OffCameraExpireModifier
{
  private boolean mHasBeenOnCamera = false;
  
  public OnAndOffCameraExpireModifier(Camera paramCamera)
  {
    super(paramCamera);
  }
  
  public void onUpdateParticle(Particle paramParticle)
  {
    if ((!this.mHasBeenOnCamera) && (getCamera().isRectangularShapeVisible(paramParticle))) {
      this.mHasBeenOnCamera = true;
    }
    if (this.mHasBeenOnCamera) {
      super.onUpdateParticle(paramParticle);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.modifier.OnAndOffCameraExpireModifier
 * JD-Core Version:    0.7.0.1
 */