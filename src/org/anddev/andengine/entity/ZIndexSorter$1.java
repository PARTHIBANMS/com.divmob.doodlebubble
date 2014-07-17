package org.anddev.andengine.entity;

import java.util.Comparator;

class ZIndexSorter$1
  implements Comparator<IEntity>
{
  ZIndexSorter$1(ZIndexSorter paramZIndexSorter) {}
  
  public int compare(IEntity paramIEntity1, IEntity paramIEntity2)
  {
    return paramIEntity1.getZIndex() - paramIEntity2.getZIndex();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.ZIndexSorter.1
 * JD-Core Version:    0.7.0.1
 */