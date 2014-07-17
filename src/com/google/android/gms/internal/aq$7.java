package com.google.android.gms.internal;

import java.util.Map;

final class aq$7
  implements ar
{
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("tx");
    String str2 = (String)paramMap.get("ty");
    String str3 = (String)paramMap.get("td");
    try
    {
      int i = Integer.parseInt(str1);
      int j = Integer.parseInt(str2);
      int k = Integer.parseInt(str3);
      l locall = paramdd.bc();
      if (locall != null) {
        locall.y().a(i, j, k);
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      da.w("Could not parse touch parameters from gmsg.");
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.7
 * JD-Core Version:    0.7.0.1
 */