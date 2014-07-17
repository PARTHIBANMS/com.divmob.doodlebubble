package org.anddev.andengine.engine.camera.hud.controls;

import org.anddev.andengine.engine.handler.timer.ITimerCallback;
import org.anddev.andengine.engine.handler.timer.TimerHandler;

class BaseOnScreenControl$2
  implements ITimerCallback
{
  BaseOnScreenControl$2(BaseOnScreenControl paramBaseOnScreenControl) {}
  
  public void onTimePassed(TimerHandler paramTimerHandler)
  {
    BaseOnScreenControl.access$0(this.this$0).onControlChange(this.this$0, BaseOnScreenControl.access$1(this.this$0), BaseOnScreenControl.access$2(this.this$0));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.hud.controls.BaseOnScreenControl.2
 * JD-Core Version:    0.7.0.1
 */