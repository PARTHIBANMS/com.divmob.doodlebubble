package com.google.android.gms.internal;

import java.util.Map;

class ck$1
  implements ar
{
  ck$1(ck paramck) {}
  
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    synchronized (ck.a(this.oB))
    {
      String str1 = (String)paramMap.get("type");
      String str2 = (String)paramMap.get("errors");
      da.w("Invalid " + str1 + " request error: " + str2);
      ck.a(this.oB, 1);
      ck.a(this.oB).notify();
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ck.1
 * JD-Core Version:    0.7.0.1
 */