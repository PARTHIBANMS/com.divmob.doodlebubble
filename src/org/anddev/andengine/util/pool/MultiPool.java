package org.anddev.andengine.util.pool;

import android.util.SparseArray;

public class MultiPool<T>
{
  private final SparseArray<GenericPool<T>> mPools = new SparseArray();
  
  public T obtainPoolItem(int paramInt)
  {
    GenericPool localGenericPool = (GenericPool)this.mPools.get(paramInt);
    if (localGenericPool == null) {
      return null;
    }
    return localGenericPool.obtainPoolItem();
  }
  
  public void recyclePoolItem(int paramInt, T paramT)
  {
    GenericPool localGenericPool = (GenericPool)this.mPools.get(paramInt);
    if (localGenericPool != null) {
      localGenericPool.recyclePoolItem(paramT);
    }
  }
  
  public void registerPool(int paramInt, GenericPool<T> paramGenericPool)
  {
    this.mPools.put(paramInt, paramGenericPool);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.pool.MultiPool
 * JD-Core Version:    0.7.0.1
 */