package org.anddev.andengine.engine.handler;

import org.anddev.andengine.entity.IEntity;

public abstract class BaseEntityUpdateHandler
  implements IUpdateHandler
{
  private final IEntity mEntity;
  
  public BaseEntityUpdateHandler(IEntity paramIEntity)
  {
    this.mEntity = paramIEntity;
  }
  
  public final void onUpdate(float paramFloat)
  {
    onUpdate(paramFloat, this.mEntity);
  }
  
  protected abstract void onUpdate(float paramFloat, IEntity paramIEntity);
  
  public void reset() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.BaseEntityUpdateHandler
 * JD-Core Version:    0.7.0.1
 */