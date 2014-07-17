package org.anddev.andengine.engine.handler.timer;

import org.anddev.andengine.engine.handler.IUpdateHandler;

public class TimerHandler
  implements IUpdateHandler
{
  private boolean mAutoReset;
  protected final ITimerCallback mTimerCallback;
  private boolean mTimerCallbackTriggered;
  private float mTimerSeconds;
  private float mTimerSecondsElapsed;
  
  public TimerHandler(float paramFloat, ITimerCallback paramITimerCallback)
  {
    this(paramFloat, false, paramITimerCallback);
  }
  
  public TimerHandler(float paramFloat, boolean paramBoolean, ITimerCallback paramITimerCallback)
  {
    this.mTimerSeconds = paramFloat;
    this.mAutoReset = paramBoolean;
    this.mTimerCallback = paramITimerCallback;
  }
  
  public float getTimerSeconds()
  {
    return this.mTimerSeconds;
  }
  
  public float getTimerSecondsElapsed()
  {
    return this.mTimerSecondsElapsed;
  }
  
  public boolean isAutoReset()
  {
    return this.mAutoReset;
  }
  
  public boolean isTimerCallbackTriggered()
  {
    return this.mTimerCallbackTriggered;
  }
  
  public void onUpdate(float paramFloat)
  {
    if (this.mAutoReset)
    {
      this.mTimerSecondsElapsed = (paramFloat + this.mTimerSecondsElapsed);
      if (this.mTimerSecondsElapsed >= this.mTimerSeconds) {}
    }
    do
    {
      do
      {
        return;
        this.mTimerSecondsElapsed -= this.mTimerSeconds;
        this.mTimerCallback.onTimePassed(this);
        break;
      } while (this.mTimerCallbackTriggered);
      this.mTimerSecondsElapsed = (paramFloat + this.mTimerSecondsElapsed);
    } while (this.mTimerSecondsElapsed < this.mTimerSeconds);
    this.mTimerCallbackTriggered = true;
    this.mTimerCallback.onTimePassed(this);
  }
  
  public void reset()
  {
    this.mTimerCallbackTriggered = false;
    this.mTimerSecondsElapsed = 0.0F;
  }
  
  public void setAutoReset(boolean paramBoolean)
  {
    this.mAutoReset = paramBoolean;
  }
  
  public void setTimerCallbackTriggered(boolean paramBoolean)
  {
    this.mTimerCallbackTriggered = paramBoolean;
  }
  
  public void setTimerSeconds(float paramFloat)
  {
    this.mTimerSeconds = paramFloat;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.timer.TimerHandler
 * JD-Core Version:    0.7.0.1
 */