package org.anddev.andengine.engine.camera.hud.controls;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.MathUtils;

public class DigitalOnScreenControl
  extends BaseOnScreenControl
{
  private static final float ANGLE_DELTA = 22.5F;
  private static final float EXTENT_DIAGONAL = 0.354F;
  private static final float EXTENT_SIDE = 0.5F;
  private boolean mAllowDiagonal;
  
  public DigitalOnScreenControl(float paramFloat1, float paramFloat2, Camera paramCamera, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat3, BaseOnScreenControl.IOnScreenControlListener paramIOnScreenControlListener)
  {
    this(paramFloat1, paramFloat2, paramCamera, paramTextureRegion1, paramTextureRegion2, paramFloat3, false, paramIOnScreenControlListener);
  }
  
  public DigitalOnScreenControl(float paramFloat1, float paramFloat2, Camera paramCamera, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat3, boolean paramBoolean, BaseOnScreenControl.IOnScreenControlListener paramIOnScreenControlListener)
  {
    super(paramFloat1, paramFloat2, paramCamera, paramTextureRegion1, paramTextureRegion2, paramFloat3, paramIOnScreenControlListener);
    this.mAllowDiagonal = paramBoolean;
  }
  
  private boolean testDiagonalAngle(float paramFloat1, float paramFloat2)
  {
    return (paramFloat2 > paramFloat1 - 22.5F) && (paramFloat2 < paramFloat1 + 22.5F);
  }
  
  public boolean isAllowDiagonal()
  {
    return this.mAllowDiagonal;
  }
  
  protected void onUpdateControlKnob(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 == 0.0F) && (paramFloat2 == 0.0F)) {
      super.onUpdateControlKnob(0.0F, 0.0F);
    }
    do
    {
      do
      {
        return;
        if (this.mAllowDiagonal)
        {
          float f = 180.0F + MathUtils.radToDeg(MathUtils.atan2(paramFloat2, paramFloat1));
          if ((testDiagonalAngle(0.0F, f)) || (testDiagonalAngle(360.0F, f)))
          {
            super.onUpdateControlKnob(-0.5F, 0.0F);
            return;
          }
          if (testDiagonalAngle(45.0F, f))
          {
            super.onUpdateControlKnob(-0.354F, -0.354F);
            return;
          }
          if (testDiagonalAngle(90.0F, f))
          {
            super.onUpdateControlKnob(0.0F, -0.5F);
            return;
          }
          if (testDiagonalAngle(135.0F, f))
          {
            super.onUpdateControlKnob(0.354F, -0.354F);
            return;
          }
          if (testDiagonalAngle(180.0F, f))
          {
            super.onUpdateControlKnob(0.5F, 0.0F);
            return;
          }
          if (testDiagonalAngle(225.0F, f))
          {
            super.onUpdateControlKnob(0.354F, 0.354F);
            return;
          }
          if (testDiagonalAngle(270.0F, f))
          {
            super.onUpdateControlKnob(0.0F, 0.5F);
            return;
          }
          if (testDiagonalAngle(315.0F, f))
          {
            super.onUpdateControlKnob(-0.354F, 0.354F);
            return;
          }
          super.onUpdateControlKnob(0.0F, 0.0F);
          return;
        }
        if (Math.abs(paramFloat1) <= Math.abs(paramFloat2)) {
          break;
        }
        if (paramFloat1 > 0.0F)
        {
          super.onUpdateControlKnob(0.5F, 0.0F);
          return;
        }
        if (paramFloat1 < 0.0F)
        {
          super.onUpdateControlKnob(-0.5F, 0.0F);
          return;
        }
      } while (paramFloat1 != 0.0F);
      super.onUpdateControlKnob(0.0F, 0.0F);
      return;
      if (paramFloat2 > 0.0F)
      {
        super.onUpdateControlKnob(0.0F, 0.5F);
        return;
      }
      if (paramFloat2 < 0.0F)
      {
        super.onUpdateControlKnob(0.0F, -0.5F);
        return;
      }
    } while (paramFloat2 != 0.0F);
    super.onUpdateControlKnob(0.0F, 0.0F);
  }
  
  public void setAllowDiagonal(boolean paramBoolean)
  {
    this.mAllowDiagonal = paramBoolean;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.hud.controls.DigitalOnScreenControl
 * JD-Core Version:    0.7.0.1
 */