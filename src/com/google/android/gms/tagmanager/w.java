package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class w
  extends dg
{
  private static final String ID = a.aq.toString();
  private static final String UN = b.bO.toString();
  private static final String VALUE = b.eH.toString();
  private final DataLayer TN;
  
  public w(DataLayer paramDataLayer)
  {
    super(str, arrayOfString);
    this.TN = paramDataLayer;
  }
  
  private void a(d.a parama)
  {
    if ((parama == null) || (parama == di.ko())) {}
    String str;
    do
    {
      return;
      str = di.j(parama);
    } while (str == di.kt());
    this.TN.bg(str);
  }
  
  private void b(d.a parama)
  {
    if ((parama == null) || (parama == di.ko())) {}
    for (;;)
    {
      return;
      Object localObject1 = di.o(parama);
      if ((localObject1 instanceof List))
      {
        Iterator localIterator = ((List)localObject1).iterator();
        while (localIterator.hasNext())
        {
          Object localObject2 = localIterator.next();
          if ((localObject2 instanceof Map))
          {
            Map localMap = (Map)localObject2;
            this.TN.push(localMap);
          }
        }
      }
    }
  }
  
  public void w(Map<String, d.a> paramMap)
  {
    b((d.a)paramMap.get(VALUE));
    a((d.a)paramMap.get(UN));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.w
 * JD-Core Version:    0.7.0.1
 */