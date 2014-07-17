package org.anddev.andengine.engine.camera.hud.controls;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.camera.hud.HUD;
import org.anddev.andengine.engine.handler.timer.TimerHandler;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.Scene.IOnSceneTouchListener;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.MathUtils;

public abstract class BaseOnScreenControl
  extends HUD
  implements Scene.IOnSceneTouchListener
{
  private static final int INVALID_POINTER_ID = -1;
  private int mActivePointerID = -1;
  private final Sprite mControlBase;
  private final Sprite mControlKnob;
  private float mControlValueX;
  private float mControlValueY;
  private final IOnScreenControlListener mOnScreenControlListener;
  
  public BaseOnScreenControl(float paramFloat1, float paramFloat2, Camera paramCamera, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat3, IOnScreenControlListener paramIOnScreenControlListener)
  {
    setCamera(paramCamera);
    this.mOnScreenControlListener = paramIOnScreenControlListener;
    this.mControlBase = new BaseOnScreenControl.1(this, paramFloat1, paramFloat2, paramTextureRegion1);
    this.mControlKnob = new Sprite(0.0F, 0.0F, paramTextureRegion2);
    onHandleControlKnobReleased();
    setOnSceneTouchListener(this);
    registerTouchArea(this.mControlBase);
    registerUpdateHandler(new TimerHandler(paramFloat3, true, new BaseOnScreenControl.2(this)));
    attachChild(this.mControlBase);
    attachChild(this.mControlKnob);
    setTouchAreaBindingEnabled(true);
  }
  
  private void updateControlKnob(float paramFloat1, float paramFloat2)
  {
    Sprite localSprite = this.mControlBase;
    onUpdateControlKnob(MathUtils.bringToBounds(0.0F, localSprite.getWidth(), paramFloat1) / localSprite.getWidth() - 0.5F, MathUtils.bringToBounds(0.0F, localSprite.getHeight(), paramFloat2) / localSprite.getHeight() - 0.5F);
  }
  
  public Sprite getControlBase()
  {
    return this.mControlBase;
  }
  
  public Sprite getControlKnob()
  {
    return this.mControlKnob;
  }
  
  public IOnScreenControlListener getOnScreenControlListener()
  {
    return this.mOnScreenControlListener;
  }
  
  protected void onHandleControlBaseLeft()
  {
    onUpdateControlKnob(0.0F, 0.0F);
  }
  
  protected boolean onHandleControlBaseTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    int i = paramTouchEvent.getPointerID();
    switch (paramTouchEvent.getAction())
    {
    case 2: 
    default: 
      if (this.mActivePointerID == i) {
        updateControlKnob(paramFloat1, paramFloat2);
      }
      break;
    }
    do
    {
      do
      {
        return true;
      } while (this.mActivePointerID != -1);
      this.mActivePointerID = i;
      updateControlKnob(paramFloat1, paramFloat2);
      return true;
    } while (this.mActivePointerID != i);
    this.mActivePointerID = -1;
    onHandleControlKnobReleased();
    return true;
  }
  
  protected void onHandleControlKnobReleased()
  {
    onUpdateControlKnob(0.0F, 0.0F);
  }
  
  public boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent)
  {
    if (paramTouchEvent.getPointerID() == this.mActivePointerID)
    {
      onHandleControlBaseLeft();
      switch (paramTouchEvent.getAction())
      {
      }
    }
    for (;;)
    {
      return false;
      this.mActivePointerID = -1;
    }
  }
  
  protected void onUpdateControlKnob(float paramFloat1, float paramFloat2)
  {
    Sprite localSprite1 = this.mControlBase;
    Sprite localSprite2 = this.mControlKnob;
    this.mControlValueX = (2.0F * paramFloat1);
    this.mControlValueY = (2.0F * paramFloat2);
    float[] arrayOfFloat = localSprite1.getSceneCenterCoordinates();
    localSprite2.setPosition(arrayOfFloat[0] - 0.5F * localSprite2.getWidth() + paramFloat1 * localSprite1.getWidthScaled(), arrayOfFloat[1] - 0.5F * localSprite2.getHeight() + paramFloat2 * localSprite1.getHeightScaled());
  }
  
  public void refreshControlKnobPosition()
  {
    onUpdateControlKnob(0.5F * this.mControlValueX, 0.5F * this.mControlValueY);
  }
  
  public static abstract interface IOnScreenControlListener
  {
    public abstract void onControlChange(BaseOnScreenControl paramBaseOnScreenControl, float paramFloat1, float paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.hud.controls.BaseOnScreenControl
 * JD-Core Version:    0.7.0.1
 */