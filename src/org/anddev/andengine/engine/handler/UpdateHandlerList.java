package org.anddev.andengine.engine.handler;

import org.anddev.andengine.util.SmartList;

public class UpdateHandlerList
  extends SmartList<IUpdateHandler>
  implements IUpdateHandler
{
  private static final long serialVersionUID = -8842562717687229277L;
  
  public UpdateHandlerList() {}
  
  public UpdateHandlerList(int paramInt)
  {
    super(paramInt);
  }
  
  public void onUpdate(float paramFloat)
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return;
      }
      ((IUpdateHandler)get(i)).onUpdate(paramFloat);
    }
  }
  
  public void reset()
  {
    for (int i = -1 + size();; i--)
    {
      if (i < 0) {
        return;
      }
      ((IUpdateHandler)get(i)).reset();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.UpdateHandlerList
 * JD-Core Version:    0.7.0.1
 */