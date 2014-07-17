package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class DataLayer$2
  implements DataLayer.c.a
{
  DataLayer$2(DataLayer paramDataLayer) {}
  
  public void b(List<DataLayer.a> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      DataLayer.a locala = (DataLayer.a)localIterator.next();
      DataLayer.a(this.Uz, this.Uz.b(locala.UA, locala.UB));
    }
    DataLayer.a(this.Uz).countDown();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.2
 * JD-Core Version:    0.7.0.1
 */