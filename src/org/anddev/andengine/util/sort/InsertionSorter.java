package org.anddev.andengine.util.sort;

import java.util.Comparator;
import java.util.List;

public class InsertionSorter<T>
  extends Sorter<T>
{
  public void sort(List<T> paramList, int paramInt1, int paramInt2, Comparator<T> paramComparator)
  {
    int i = paramInt1 + 1;
    if (i >= paramInt2) {
      return;
    }
    Object localObject1 = paramList.get(i);
    Object localObject2 = paramList.get(i - 1);
    Object localObject3;
    if (paramComparator.compare(localObject1, localObject2) < 0) {
      localObject3 = localObject2;
    }
    int k;
    for (int j = i;; j = k)
    {
      k = j - 1;
      paramList.set(j, localObject3);
      Object localObject4;
      if (k > paramInt1)
      {
        localObject4 = paramList.get(k - 1);
        if (paramComparator.compare(localObject1, localObject4) < 0) {}
      }
      else
      {
        paramList.set(k, localObject1);
        i++;
        break;
      }
      localObject3 = localObject4;
    }
  }
  
  public void sort(T[] paramArrayOfT, int paramInt1, int paramInt2, Comparator<T> paramComparator)
  {
    int i = paramInt1 + 1;
    if (i >= paramInt2) {
      return;
    }
    T ? = paramArrayOfT[i];
    T ? = paramArrayOfT[(i - 1)];
    Object localObject;
    if (paramComparator.compare(?, ?) < 0) {
      localObject = ?;
    }
    int k;
    for (int j = i;; j = k)
    {
      k = j - 1;
      paramArrayOfT[j] = localObject;
      T ?;
      if (k > paramInt1)
      {
        ? = paramArrayOfT[(k - 1)];
        if (paramComparator.compare(?, ?) < 0) {}
      }
      else
      {
        paramArrayOfT[k] = ?;
        i++;
        break;
      }
      localObject = ?;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.sort.InsertionSorter
 * JD-Core Version:    0.7.0.1
 */