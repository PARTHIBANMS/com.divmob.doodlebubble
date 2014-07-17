package com.google.android.gms.internal;

import java.util.Map;

class ck$2
  implements ar
{
  ck$2(ck paramck) {}
  
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    synchronized (ck.a(this.oB))
    {
      String str = (String)paramMap.get("url");
      if (str == null)
      {
        da.w("URL missing in loadAdUrl GMSG.");
        return;
      }
      if (str.contains("%40mediation_adapters%40"))
      {
        str = str.replaceAll("%40mediation_adapters%40", cs.b(paramdd.getContext(), (String)paramMap.get("check_adapters"), ck.b(this.oB)));
        da.v("Ad request URL modified to " + str);
      }
      ck.a(this.oB, str);
      ck.a(this.oB).notify();
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ck.2
 * JD-Core Version:    0.7.0.1
 */