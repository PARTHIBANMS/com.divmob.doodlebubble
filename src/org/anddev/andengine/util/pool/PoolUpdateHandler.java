package org.anddev.andengine.util.pool;

import java.util.ArrayList;
import org.anddev.andengine.engine.handler.IUpdateHandler;

public abstract class PoolUpdateHandler<T extends PoolItem>
  implements IUpdateHandler
{
  private final Pool<T> mPool;
  private final ArrayList<T> mScheduledPoolItems = new ArrayList();
  
  public PoolUpdateHandler()
  {
    this.mPool = new PoolUpdateHandler.1(this);
  }
  
  public PoolUpdateHandler(int paramInt)
  {
    this.mPool = new PoolUpdateHandler.2(this, paramInt);
  }
  
  public PoolUpdateHandler(int paramInt1, int paramInt2)
  {
    this.mPool = new PoolUpdateHandler.3(this, paramInt1, paramInt2);
  }
  
  public T obtainPoolItem()
  {
    return (PoolItem)this.mPool.obtainPoolItem();
  }
  
  protected abstract T onAllocatePoolItem();
  
  protected abstract void onHandlePoolItem(T paramT);
  
  public void onUpdate(float paramFloat)
  {
    synchronized (this.mScheduledPoolItems)
    {
      int i = ???.size();
      Pool localPool;
      int j;
      if (i > 0)
      {
        localPool = this.mPool;
        j = 0;
        if (j >= i) {
          ???.clear();
        }
      }
      else
      {
        return;
      }
      PoolItem localPoolItem = (PoolItem)???.get(j);
      onHandlePoolItem(localPoolItem);
      localPool.recyclePoolItem(localPoolItem);
      j++;
    }
  }
  
  public void postPoolItem(T paramT)
  {
    ArrayList localArrayList = this.mScheduledPoolItems;
    if (paramT == null) {
      try
      {
        throw new IllegalArgumentException("PoolItem already recycled!");
      }
      finally {}
    }
    if (!this.mPool.ownsPoolItem(paramT)) {
      throw new IllegalArgumentException("PoolItem from another pool!");
    }
    this.mScheduledPoolItems.add(paramT);
  }
  
  public void reset()
  {
    synchronized (this.mScheduledPoolItems)
    {
      int i = ???.size();
      Pool localPool = this.mPool;
      int j = i - 1;
      if (j < 0)
      {
        ???.clear();
        return;
      }
      localPool.recyclePoolItem((PoolItem)???.get(j));
      j--;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.pool.PoolUpdateHandler
 * JD-Core Version:    0.7.0.1
 */