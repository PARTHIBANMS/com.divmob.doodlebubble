package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

class ay
{
  private static String Vm;
  static Map<String, String> Vn = new HashMap();
  
  static void bq(String paramString)
  {
    try
    {
      Vm = paramString;
      return;
    }
    finally {}
  }
  
  static void c(Context paramContext, String paramString)
  {
    cz.a(paramContext, "gtm_install_referrer", "referrer", paramString);
    e(paramContext, paramString);
  }
  
  /* Error */
  static String d(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: getstatic 23	com/google/android/gms/tagmanager/ay:Vm	Ljava/lang/String;
    //   3: ifnonnull +40 -> 43
    //   6: ldc 2
    //   8: monitorenter
    //   9: getstatic 23	com/google/android/gms/tagmanager/ay:Vm	Ljava/lang/String;
    //   12: ifnonnull +28 -> 40
    //   15: aload_0
    //   16: ldc 27
    //   18: iconst_0
    //   19: invokevirtual 46	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   22: astore_3
    //   23: aload_3
    //   24: ifnull +27 -> 51
    //   27: aload_3
    //   28: ldc 29
    //   30: ldc 48
    //   32: invokeinterface 54 3 0
    //   37: putstatic 23	com/google/android/gms/tagmanager/ay:Vm	Ljava/lang/String;
    //   40: ldc 2
    //   42: monitorexit
    //   43: getstatic 23	com/google/android/gms/tagmanager/ay:Vm	Ljava/lang/String;
    //   46: aload_1
    //   47: invokestatic 57	com/google/android/gms/tagmanager/ay:l	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   50: areturn
    //   51: ldc 48
    //   53: putstatic 23	com/google/android/gms/tagmanager/ay:Vm	Ljava/lang/String;
    //   56: goto -16 -> 40
    //   59: astore_2
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	paramContext	Context
    //   0	65	1	paramString	String
    //   59	5	2	localObject	Object
    //   22	6	3	localSharedPreferences	SharedPreferences
    // Exception table:
    //   from	to	target	type
    //   9	23	59	finally
    //   27	40	59	finally
    //   40	43	59	finally
    //   51	56	59	finally
    //   60	63	59	finally
  }
  
  static String e(Context paramContext, String paramString1, String paramString2)
  {
    String str = (String)Vn.get(paramString1);
    SharedPreferences localSharedPreferences;
    if (str == null)
    {
      localSharedPreferences = paramContext.getSharedPreferences("gtm_click_referrers", 0);
      if (localSharedPreferences == null) {
        break label59;
      }
    }
    label59:
    for (str = localSharedPreferences.getString(paramString1, "");; str = "")
    {
      Vn.put(paramString1, str);
      return l(str, paramString2);
    }
  }
  
  static void e(Context paramContext, String paramString)
  {
    String str = l(paramString, "conv");
    if ((str != null) && (str.length() > 0))
    {
      Vn.put(str, paramString);
      cz.a(paramContext, "gtm_click_referrers", str, paramString);
    }
  }
  
  static String l(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      if (paramString1.length() > 0) {
        return paramString1;
      }
      return null;
    }
    return Uri.parse("http://hostname/?" + paramString1).getQueryParameter(paramString2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.ay
 * JD-Core Version:    0.7.0.1
 */