package org.anddev.andengine.input.touch.controller;

import org.anddev.andengine.util.pool.RunnablePoolUpdateHandler;

class BaseTouchController$1
  extends RunnablePoolUpdateHandler<BaseTouchController.TouchEventRunnablePoolItem>
{
  BaseTouchController$1(BaseTouchController paramBaseTouchController) {}
  
  protected BaseTouchController.TouchEventRunnablePoolItem onAllocatePoolItem()
  {
    return new BaseTouchController.TouchEventRunnablePoolItem(this.this$0);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.input.touch.controller.BaseTouchController.1
 * JD-Core Version:    0.7.0.1
 */