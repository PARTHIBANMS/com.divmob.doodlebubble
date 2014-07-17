package org.anddev.andengine.entity;

import java.util.Comparator;
import java.util.List;
import org.anddev.andengine.util.sort.InsertionSorter;

public class ZIndexSorter
  extends InsertionSorter<IEntity>
{
  private static ZIndexSorter INSTANCE;
  private final Comparator<IEntity> mZIndexComparator = new ZIndexSorter.1(this);
  
  public static ZIndexSorter getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new ZIndexSorter();
    }
    return INSTANCE;
  }
  
  public void sort(List<IEntity> paramList)
  {
    sort(paramList, this.mZIndexComparator);
  }
  
  public void sort(List<IEntity> paramList, int paramInt1, int paramInt2)
  {
    sort(paramList, paramInt1, paramInt2, this.mZIndexComparator);
  }
  
  public void sort(IEntity[] paramArrayOfIEntity)
  {
    sort(paramArrayOfIEntity, this.mZIndexComparator);
  }
  
  public void sort(IEntity[] paramArrayOfIEntity, int paramInt1, int paramInt2)
  {
    sort(paramArrayOfIEntity, paramInt1, paramInt2, this.mZIndexComparator);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.ZIndexSorter
 * JD-Core Version:    0.7.0.1
 */