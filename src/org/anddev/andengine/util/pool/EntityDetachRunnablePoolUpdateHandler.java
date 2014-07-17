package org.anddev.andengine.util.pool;

public class EntityDetachRunnablePoolUpdateHandler
  extends RunnablePoolUpdateHandler<EntityDetachRunnablePoolItem>
{
  protected EntityDetachRunnablePoolItem onAllocatePoolItem()
  {
    return new EntityDetachRunnablePoolItem();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.pool.EntityDetachRunnablePoolUpdateHandler
 * JD-Core Version:    0.7.0.1
 */