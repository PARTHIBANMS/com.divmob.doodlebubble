package org.anddev.andengine.util.pool;

public abstract class RunnablePoolUpdateHandler<T extends RunnablePoolItem>
  extends PoolUpdateHandler<T>
{
  public RunnablePoolUpdateHandler() {}
  
  public RunnablePoolUpdateHandler(int paramInt)
  {
    super(paramInt);
  }
  
  protected abstract T onAllocatePoolItem();
  
  protected void onHandlePoolItem(T paramT)
  {
    paramT.run();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.pool.RunnablePoolUpdateHandler
 * JD-Core Version:    0.7.0.1
 */