package org.anddev.andengine.entity.util;

import org.anddev.andengine.engine.handler.IUpdateHandler;

public class FrameCounter
  implements IUpdateHandler
{
  private int mFrames;
  
  public int getFrames()
  {
    return this.mFrames;
  }
  
  public void onUpdate(float paramFloat)
  {
    this.mFrames = (1 + this.mFrames);
  }
  
  public void reset()
  {
    this.mFrames = 0;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.util.FrameCounter
 * JD-Core Version:    0.7.0.1
 */