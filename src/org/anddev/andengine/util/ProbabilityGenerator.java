package org.anddev.andengine.util;

import java.util.ArrayList;

public class ProbabilityGenerator<T>
{
  private final ArrayList<Entry<T>> mEntries = new ArrayList();
  private float mProbabilitySum;
  
  public void add(float paramFloat, T... paramVarArgs)
  {
    this.mProbabilitySum = (paramFloat + this.mProbabilitySum);
    this.mEntries.add(new Entry(paramFloat, paramVarArgs));
  }
  
  public void clear()
  {
    this.mProbabilitySum = 0.0F;
    this.mEntries.clear();
  }
  
  public T next()
  {
    float f1 = MathUtils.random(0.0F, this.mProbabilitySum);
    ArrayList localArrayList = this.mEntries;
    int i = -1 + localArrayList.size();
    float f2 = f1;
    for (int j = i;; j--)
    {
      if (j < 0) {
        return ((Entry)localArrayList.get(-1 + localArrayList.size())).getReturnValue();
      }
      Entry localEntry = (Entry)localArrayList.get(j);
      f2 -= localEntry.mFactor;
      if (f2 <= 0.0F) {
        return localEntry.getReturnValue();
      }
    }
  }
  
  private static class Entry<T>
  {
    public final T[] mData;
    public final float mFactor;
    
    public Entry(float paramFloat, T[] paramArrayOfT)
    {
      this.mFactor = paramFloat;
      this.mData = paramArrayOfT;
    }
    
    public T getReturnValue()
    {
      if (this.mData.length == 1) {
        return this.mData[0];
      }
      return ArrayUtils.random(this.mData);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ProbabilityGenerator
 * JD-Core Version:    0.7.0.1
 */