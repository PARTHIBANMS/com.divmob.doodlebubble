package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

class a$1
  implements d<T>
{
  a$1(a parama) {}
  
  public void a(T paramT)
  {
    a.a(this.Ft, paramT);
    Iterator localIterator = a.a(this.Ft).iterator();
    while (localIterator.hasNext()) {
      ((a.a)localIterator.next()).b(a.b(this.Ft));
    }
    a.a(this.Ft).clear();
    a.a(this.Ft, null);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.a.1
 * JD-Core Version:    0.7.0.1
 */