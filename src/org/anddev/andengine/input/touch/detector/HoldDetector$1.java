package org.anddev.andengine.input.touch.detector;

import org.anddev.andengine.engine.handler.timer.ITimerCallback;
import org.anddev.andengine.engine.handler.timer.TimerHandler;

class HoldDetector$1
  implements ITimerCallback
{
  HoldDetector$1(HoldDetector paramHoldDetector) {}
  
  public void onTimePassed(TimerHandler paramTimerHandler)
  {
    this.this$0.fireListener();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.input.touch.detector.HoldDetector.1
 * JD-Core Version:    0.7.0.1
 */