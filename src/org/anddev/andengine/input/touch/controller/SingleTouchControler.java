package org.anddev.andengine.input.touch.controller;

import android.view.MotionEvent;

public class SingleTouchControler
  extends BaseTouchController
{
  public boolean onHandleMotionEvent(MotionEvent paramMotionEvent)
  {
    return fireTouchEvent(paramMotionEvent.getX(), paramMotionEvent.getY(), paramMotionEvent.getAction(), 0, paramMotionEvent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.input.touch.controller.SingleTouchControler
 * JD-Core Version:    0.7.0.1
 */