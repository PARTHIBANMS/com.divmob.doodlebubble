package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

final class aq$1
  implements ar
{
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("urls");
    if (str1 == null)
    {
      da.w("URLs missing in canOpenURLs GMSG.");
      return;
    }
    String[] arrayOfString1 = str1.split(",");
    HashMap localHashMap = new HashMap();
    PackageManager localPackageManager = paramdd.getContext().getPackageManager();
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String str2 = arrayOfString1[j];
      String[] arrayOfString2 = str2.split(";", 2);
      String str3 = arrayOfString2[0].trim();
      String str4;
      if (arrayOfString2.length > 1)
      {
        str4 = arrayOfString2[1].trim();
        label105:
        if (localPackageManager.resolveActivity(new Intent(str4, Uri.parse(str3)), 65536) == null) {
          break label158;
        }
      }
      label158:
      for (boolean bool = true;; bool = false)
      {
        localHashMap.put(str2, Boolean.valueOf(bool));
        j++;
        break;
        str4 = "android.intent.action.VIEW";
        break label105;
      }
    }
    paramdd.a("openableURLs", localHashMap);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.1
 * JD-Core Version:    0.7.0.1
 */