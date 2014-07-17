package org.anddev.andengine.engine.handler.physics;

import org.anddev.andengine.engine.handler.BaseEntityUpdateHandler;
import org.anddev.andengine.entity.IEntity;

public class PhysicsHandler
  extends BaseEntityUpdateHandler
{
  protected float mAccelerationX = 0.0F;
  protected float mAccelerationY = 0.0F;
  protected float mAngularVelocity = 0.0F;
  private boolean mEnabled = true;
  protected float mVelocityX = 0.0F;
  protected float mVelocityY = 0.0F;
  
  public PhysicsHandler(IEntity paramIEntity)
  {
    super(paramIEntity);
  }
  
  public void accelerate(float paramFloat1, float paramFloat2)
  {
    this.mAccelerationX = (paramFloat1 + this.mAccelerationX);
    this.mAccelerationY = (paramFloat2 + this.mAccelerationY);
  }
  
  public float getAccelerationX()
  {
    return this.mAccelerationX;
  }
  
  public float getAccelerationY()
  {
    return this.mAccelerationY;
  }
  
  public float getAngularVelocity()
  {
    return this.mAngularVelocity;
  }
  
  public float getVelocityX()
  {
    return this.mVelocityX;
  }
  
  public float getVelocityY()
  {
    return this.mVelocityY;
  }
  
  public boolean isEnabled()
  {
    return this.mEnabled;
  }
  
  protected void onUpdate(float paramFloat, IEntity paramIEntity)
  {
    if (this.mEnabled)
    {
      float f1 = this.mAccelerationX;
      float f2 = this.mAccelerationY;
      if ((f1 != 0.0F) || (f2 != 0.0F))
      {
        this.mVelocityX += f1 * paramFloat;
        this.mVelocityY += f2 * paramFloat;
      }
      float f3 = this.mAngularVelocity;
      if (f3 != 0.0F) {
        paramIEntity.setRotation(paramIEntity.getRotation() + f3 * paramFloat);
      }
      float f4 = this.mVelocityX;
      float f5 = this.mVelocityY;
      if ((f4 != 0.0F) || (f5 != 0.0F)) {
        paramIEntity.setPosition(paramIEntity.getX() + f4 * paramFloat, paramIEntity.getY() + f5 * paramFloat);
      }
    }
  }
  
  public void reset()
  {
    this.mAccelerationX = 0.0F;
    this.mAccelerationY = 0.0F;
    this.mVelocityX = 0.0F;
    this.mVelocityY = 0.0F;
    this.mAngularVelocity = 0.0F;
  }
  
  public void setAcceleration(float paramFloat)
  {
    this.mAccelerationX = paramFloat;
    this.mAccelerationY = paramFloat;
  }
  
  public void setAcceleration(float paramFloat1, float paramFloat2)
  {
    this.mAccelerationX = paramFloat1;
    this.mAccelerationY = paramFloat2;
  }
  
  public void setAccelerationX(float paramFloat)
  {
    this.mAccelerationX = paramFloat;
  }
  
  public void setAccelerationY(float paramFloat)
  {
    this.mAccelerationY = paramFloat;
  }
  
  public void setAngularVelocity(float paramFloat)
  {
    this.mAngularVelocity = paramFloat;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    this.mEnabled = paramBoolean;
  }
  
  public void setVelocity(float paramFloat)
  {
    this.mVelocityX = paramFloat;
    this.mVelocityY = paramFloat;
  }
  
  public void setVelocity(float paramFloat1, float paramFloat2)
  {
    this.mVelocityX = paramFloat1;
    this.mVelocityY = paramFloat2;
  }
  
  public void setVelocityX(float paramFloat)
  {
    this.mVelocityX = paramFloat;
  }
  
  public void setVelocityY(float paramFloat)
  {
    this.mVelocityY = paramFloat;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.physics.PhysicsHandler
 * JD-Core Version:    0.7.0.1
 */