package org.anddev.andengine.entity.particle;

import org.anddev.andengine.engine.handler.physics.PhysicsHandler;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.vertex.RectangleVertexBuffer;

public class Particle
  extends Sprite
{
  boolean mDead = false;
  private float mDeathTime = -1.0F;
  private float mLifeTime = 0.0F;
  private final PhysicsHandler mPhysicsHandler = new PhysicsHandler(this);
  
  public Particle(float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTextureRegion);
  }
  
  public Particle(float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion, RectangleVertexBuffer paramRectangleVertexBuffer)
  {
    super(paramFloat1, paramFloat2, paramTextureRegion, paramRectangleVertexBuffer);
  }
  
  public float getDeathTime()
  {
    return this.mDeathTime;
  }
  
  public float getLifeTime()
  {
    return this.mLifeTime;
  }
  
  public PhysicsHandler getPhysicsHandler()
  {
    return this.mPhysicsHandler;
  }
  
  public boolean isDead()
  {
    return this.mDead;
  }
  
  protected void onManagedUpdate(float paramFloat)
  {
    if (!this.mDead)
    {
      this.mLifeTime = (paramFloat + this.mLifeTime);
      this.mPhysicsHandler.onUpdate(paramFloat);
      super.onManagedUpdate(paramFloat);
      float f = this.mDeathTime;
      if ((f != -1.0F) && (this.mLifeTime > f)) {
        setDead(true);
      }
    }
  }
  
  public void reset()
  {
    super.reset();
    this.mPhysicsHandler.reset();
    this.mDead = false;
    this.mDeathTime = -1.0F;
    this.mLifeTime = 0.0F;
  }
  
  public void setDead(boolean paramBoolean)
  {
    this.mDead = paramBoolean;
  }
  
  public void setDeathTime(float paramFloat)
  {
    this.mDeathTime = paramFloat;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.Particle
 * JD-Core Version:    0.7.0.1
 */