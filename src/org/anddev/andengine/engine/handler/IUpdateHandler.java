package org.anddev.andengine.engine.handler;

import org.anddev.andengine.util.IMatcher;

public abstract interface IUpdateHandler
{
  public abstract void onUpdate(float paramFloat);
  
  public abstract void reset();
  
  public static abstract interface IUpdateHandlerMatcher
    extends IMatcher<IUpdateHandler>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.IUpdateHandler
 * JD-Core Version:    0.7.0.1
 */