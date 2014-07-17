package org.anddev.andengine.util;

import org.anddev.andengine.util.pool.GenericPool;

public class TransformationPool
{
  private static final GenericPool<Transformation> POOL = new TransformationPool.1();
  
  public static Transformation obtain()
  {
    return (Transformation)POOL.obtainPoolItem();
  }
  
  public static void recycle(Transformation paramTransformation)
  {
    paramTransformation.setToIdentity();
    POOL.recyclePoolItem(paramTransformation);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.TransformationPool
 * JD-Core Version:    0.7.0.1
 */