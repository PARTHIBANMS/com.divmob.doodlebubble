package com.google.android.gms.internal;

import java.util.Map;

final class aq$5
  implements ar
{
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("u");
    if (str == null)
    {
      da.w("URL missing from httpTrack GMSG.");
      return;
    }
    new cy(paramdd.getContext(), paramdd.bd().pU, str).start();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.5
 * JD-Core Version:    0.7.0.1
 */