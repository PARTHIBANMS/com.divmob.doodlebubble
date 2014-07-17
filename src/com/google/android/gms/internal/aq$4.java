package com.google.android.gms.internal;

import java.util.Map;

final class aq$4
  implements ar
{
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    bo localbo = paramdd.ba();
    if (localbo == null)
    {
      da.w("A GMSG tried to use a custom close button on something that wasn't an overlay.");
      return;
    }
    localbo.g("1".equals(paramMap.get("custom_close")));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.4
 * JD-Core Version:    0.7.0.1
 */