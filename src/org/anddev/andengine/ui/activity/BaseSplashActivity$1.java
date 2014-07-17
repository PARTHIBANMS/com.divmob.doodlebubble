package org.anddev.andengine.ui.activity;

import android.content.Intent;
import org.anddev.andengine.engine.handler.timer.ITimerCallback;
import org.anddev.andengine.engine.handler.timer.TimerHandler;

class BaseSplashActivity$1
  implements ITimerCallback
{
  BaseSplashActivity$1(BaseSplashActivity paramBaseSplashActivity) {}
  
  public void onTimePassed(TimerHandler paramTimerHandler)
  {
    this.this$0.startActivity(new Intent(this.this$0, this.this$0.getFollowUpActivity()));
    this.this$0.finish();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.activity.BaseSplashActivity.1
 * JD-Core Version:    0.7.0.1
 */