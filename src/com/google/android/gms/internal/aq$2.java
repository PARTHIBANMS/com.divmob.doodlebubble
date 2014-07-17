package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

final class aq$2
  implements ar
{
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    str1 = (String)paramMap.get("u");
    if (str1 == null)
    {
      da.w("URL missing from click GMSG.");
      return;
    }
    localUri1 = Uri.parse(str1);
    try
    {
      l locall = paramdd.bc();
      if ((locall == null) || (!locall.a(localUri1))) {
        break label121;
      }
      Uri localUri3 = locall.a(localUri1, paramdd.getContext());
      localUri2 = localUri3;
    }
    catch (m localm)
    {
      for (;;)
      {
        String str2;
        da.w("Unable to append parameter to URL: " + str1);
        Uri localUri2 = localUri1;
      }
    }
    str2 = localUri2.toString();
    new cy(paramdd.getContext(), paramdd.bd().pU, str2).start();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.2
 * JD-Core Version:    0.7.0.1
 */