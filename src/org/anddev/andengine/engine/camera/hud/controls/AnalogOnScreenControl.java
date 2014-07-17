package org.anddev.andengine.engine.camera.hud.controls;

import android.util.FloatMath;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.input.touch.detector.ClickDetector;
import org.anddev.andengine.input.touch.detector.ClickDetector.IClickDetectorListener;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.MathUtils;
import org.anddev.andengine.util.constants.TimeConstants;

public class AnalogOnScreenControl
  extends BaseOnScreenControl
  implements ClickDetector.IClickDetectorListener, TimeConstants
{
  private final ClickDetector mClickDetector = new ClickDetector(this);
  
  public AnalogOnScreenControl(float paramFloat1, float paramFloat2, Camera paramCamera, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat3, long paramLong, IAnalogOnScreenControlListener paramIAnalogOnScreenControlListener)
  {
    super(paramFloat1, paramFloat2, paramCamera, paramTextureRegion1, paramTextureRegion2, paramFloat3, paramIAnalogOnScreenControlListener);
    this.mClickDetector.setTriggerClickMaximumMilliseconds(paramLong);
  }
  
  public AnalogOnScreenControl(float paramFloat1, float paramFloat2, Camera paramCamera, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat3, IAnalogOnScreenControlListener paramIAnalogOnScreenControlListener)
  {
    super(paramFloat1, paramFloat2, paramCamera, paramTextureRegion1, paramTextureRegion2, paramFloat3, paramIAnalogOnScreenControlListener);
    this.mClickDetector.setEnabled(false);
  }
  
  public IAnalogOnScreenControlListener getOnScreenControlListener()
  {
    return (IAnalogOnScreenControlListener)super.getOnScreenControlListener();
  }
  
  public void onClick(ClickDetector paramClickDetector, TouchEvent paramTouchEvent)
  {
    getOnScreenControlListener().onControlClick(this);
  }
  
  protected boolean onHandleControlBaseTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    this.mClickDetector.onSceneTouchEvent(null, paramTouchEvent);
    return super.onHandleControlBaseTouched(paramTouchEvent, paramFloat1, paramFloat2);
  }
  
  protected void onUpdateControlKnob(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 <= 0.25F)
    {
      super.onUpdateControlKnob(paramFloat1, paramFloat2);
      return;
    }
    float f = MathUtils.atan2(paramFloat2, paramFloat1);
    super.onUpdateControlKnob(0.5F * FloatMath.cos(f), 0.5F * FloatMath.sin(f));
  }
  
  public void setOnControlClickEnabled(boolean paramBoolean)
  {
    this.mClickDetector.setEnabled(paramBoolean);
  }
  
  public void setOnControlClickMaximumMilliseconds(long paramLong)
  {
    this.mClickDetector.setTriggerClickMaximumMilliseconds(paramLong);
  }
  
  public static abstract interface IAnalogOnScreenControlListener
    extends BaseOnScreenControl.IOnScreenControlListener
  {
    public abstract void onControlClick(AnalogOnScreenControl paramAnalogOnScreenControl);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.hud.controls.AnalogOnScreenControl
 * JD-Core Version:    0.7.0.1
 */