package org.anddev.andengine.util.pool;

import org.anddev.andengine.entity.IEntity;

public class EntityDetachRunnablePoolItem
  extends RunnablePoolItem
{
  protected IEntity mEntity;
  
  public void run()
  {
    this.mEntity.detachSelf();
  }
  
  public void setEntity(IEntity paramIEntity)
  {
    this.mEntity = paramIEntity;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.pool.EntityDetachRunnablePoolItem
 * JD-Core Version:    0.7.0.1
 */