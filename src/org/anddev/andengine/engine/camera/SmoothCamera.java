package org.anddev.andengine.engine.camera;

public class SmoothCamera
  extends ZoomCamera
{
  private float mMaxVelocityX;
  private float mMaxVelocityY;
  private float mMaxZoomFactorChange;
  private float mTargetCenterX;
  private float mTargetCenterY;
  private float mTargetZoomFactor;
  
  public SmoothCamera(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.mMaxVelocityX = paramFloat5;
    this.mMaxVelocityY = paramFloat6;
    this.mMaxZoomFactorChange = paramFloat7;
    this.mTargetCenterX = getCenterX();
    this.mTargetCenterY = getCenterY();
    this.mTargetZoomFactor = 1.0F;
  }
  
  private float limitToMaxVelocityX(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 0.0F) {
      return Math.min(paramFloat1, paramFloat2 * this.mMaxVelocityX);
    }
    return Math.max(paramFloat1, paramFloat2 * -this.mMaxVelocityX);
  }
  
  private float limitToMaxVelocityY(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 0.0F) {
      return Math.min(paramFloat1, paramFloat2 * this.mMaxVelocityY);
    }
    return Math.max(paramFloat1, paramFloat2 * -this.mMaxVelocityY);
  }
  
  private float limitToMaxZoomFactorChange(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 0.0F) {
      return Math.min(paramFloat1, paramFloat2 * this.mMaxZoomFactorChange);
    }
    return Math.max(paramFloat1, paramFloat2 * -this.mMaxZoomFactorChange);
  }
  
  protected void onSmoothZoomFinished() {}
  
  protected void onSmoothZoomStarted() {}
  
  public void onUpdate(float paramFloat)
  {
    super.onUpdate(paramFloat);
    float f1 = getCenterX();
    float f2 = getCenterY();
    float f3 = this.mTargetCenterX;
    float f4 = this.mTargetCenterY;
    if ((f1 != f3) || (f2 != f4))
    {
      float f5 = limitToMaxVelocityX(f3 - f1, paramFloat);
      float f6 = limitToMaxVelocityY(f4 - f2, paramFloat);
      super.setCenter(f1 + f5, f2 + f6);
    }
    float f7 = getZoomFactor();
    float f8 = this.mTargetZoomFactor;
    if (f7 != f8)
    {
      super.setZoomFactor(f7 + limitToMaxZoomFactorChange(f8 - f7, paramFloat));
      if (this.mZoomFactor == this.mTargetZoomFactor) {
        onSmoothZoomFinished();
      }
    }
  }
  
  public void setCenter(float paramFloat1, float paramFloat2)
  {
    this.mTargetCenterX = paramFloat1;
    this.mTargetCenterY = paramFloat2;
  }
  
  public void setCenterDirect(float paramFloat1, float paramFloat2)
  {
    super.setCenter(paramFloat1, paramFloat2);
    this.mTargetCenterX = paramFloat1;
    this.mTargetCenterY = paramFloat2;
  }
  
  public void setMaxVelocity(float paramFloat1, float paramFloat2)
  {
    this.mMaxVelocityX = paramFloat1;
    this.mMaxVelocityY = paramFloat2;
  }
  
  public void setMaxVelocityX(float paramFloat)
  {
    this.mMaxVelocityX = paramFloat;
  }
  
  public void setMaxVelocityY(float paramFloat)
  {
    this.mMaxVelocityY = paramFloat;
  }
  
  public void setMaxZoomFactorChange(float paramFloat)
  {
    this.mMaxZoomFactorChange = paramFloat;
  }
  
  public void setZoomFactor(float paramFloat)
  {
    if (this.mTargetZoomFactor != paramFloat)
    {
      if (this.mTargetZoomFactor == this.mZoomFactor)
      {
        this.mTargetZoomFactor = paramFloat;
        onSmoothZoomStarted();
      }
    }
    else {
      return;
    }
    this.mTargetZoomFactor = paramFloat;
  }
  
  public void setZoomFactorDirect(float paramFloat)
  {
    if (this.mTargetZoomFactor != this.mZoomFactor)
    {
      this.mTargetZoomFactor = paramFloat;
      super.setZoomFactor(paramFloat);
      onSmoothZoomFinished();
      return;
    }
    this.mTargetZoomFactor = paramFloat;
    super.setZoomFactor(paramFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.SmoothCamera
 * JD-Core Version:    0.7.0.1
 */