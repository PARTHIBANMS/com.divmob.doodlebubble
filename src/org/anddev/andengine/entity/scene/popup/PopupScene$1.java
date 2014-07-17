package org.anddev.andengine.entity.scene.popup;

import org.anddev.andengine.engine.handler.timer.ITimerCallback;
import org.anddev.andengine.engine.handler.timer.TimerHandler;
import org.anddev.andengine.entity.scene.Scene;

class PopupScene$1
  implements ITimerCallback
{
  PopupScene$1(PopupScene paramPopupScene, Scene paramScene, Runnable paramRunnable) {}
  
  public void onTimePassed(TimerHandler paramTimerHandler)
  {
    this.this$0.unregisterUpdateHandler(paramTimerHandler);
    this.val$pParentScene.clearChildScene();
    if (this.val$pRunnable != null) {
      this.val$pRunnable.run();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.popup.PopupScene.1
 * JD-Core Version:    0.7.0.1
 */