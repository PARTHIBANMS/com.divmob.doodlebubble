package org.anddev.andengine.entity.util;

import org.anddev.andengine.engine.handler.IUpdateHandler;

public class FPSCounter
  implements IUpdateHandler
{
  protected int mFrames;
  protected float mSecondsElapsed;
  
  public float getFPS()
  {
    return this.mFrames / this.mSecondsElapsed;
  }
  
  public void onUpdate(float paramFloat)
  {
    this.mFrames = (1 + this.mFrames);
    this.mSecondsElapsed = (paramFloat + this.mSecondsElapsed);
  }
  
  public void reset()
  {
    this.mFrames = 0;
    this.mSecondsElapsed = 0.0F;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.util.FPSCounter
 * JD-Core Version:    0.7.0.1
 */