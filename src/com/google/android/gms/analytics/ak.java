package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class ak
{
  private static final char[] uR = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public static Map<String, String> I(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramString.split("&");
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String[] arrayOfString2 = arrayOfString1[j].split("=");
      if (arrayOfString2.length > 1) {
        localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
      }
      for (;;)
      {
        j++;
        break;
        if ((arrayOfString2.length == 1) && (arrayOfString2[0].length() != 0)) {
          localHashMap.put(arrayOfString2[0], null);
        }
      }
    }
    return localHashMap;
  }
  
  public static String J(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if (paramString.contains("?"))
    {
      String[] arrayOfString2 = paramString.split("[\\?]");
      if (arrayOfString2.length > 1) {
        paramString = arrayOfString2[1];
      }
    }
    StringBuilder localStringBuilder;
    if (paramString.contains("%3D")) {
      try
      {
        String str = URLDecoder.decode(paramString, "UTF-8");
        paramString = str;
        do
        {
          Map localMap = I(paramString);
          String[] arrayOfString1 = { "dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t" };
          localStringBuilder = new StringBuilder();
          for (int i = 0; i < arrayOfString1.length; i++) {
            if (!TextUtils.isEmpty((CharSequence)localMap.get(arrayOfString1[i])))
            {
              if (localStringBuilder.length() > 0) {
                localStringBuilder.append("&");
              }
              localStringBuilder.append(arrayOfString1[i]).append("=").append((String)localMap.get(arrayOfString1[i]));
            }
          }
        } while (paramString.contains("="));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        return null;
      }
    } else {
      return null;
    }
    return localStringBuilder.toString();
  }
  
  public static double a(String paramString, double paramDouble)
  {
    if (paramString == null) {
      return paramDouble;
    }
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return paramDouble;
  }
  
  static String a(Locale paramLocale)
  {
    if (paramLocale == null) {}
    while (TextUtils.isEmpty(paramLocale.getLanguage())) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramLocale.getLanguage().toLowerCase());
    if (!TextUtils.isEmpty(paramLocale.getCountry())) {
      localStringBuilder.append("-").append(paramLocale.getCountry().toLowerCase());
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!paramMap.containsKey(paramString1)) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  public static boolean d(String paramString, boolean paramBoolean)
  {
    if (paramString != null)
    {
      if ((!paramString.equalsIgnoreCase("true")) && (!paramString.equalsIgnoreCase("yes")) && (!paramString.equalsIgnoreCase("1"))) {
        break label35;
      }
      paramBoolean = true;
    }
    label35:
    while ((!paramString.equalsIgnoreCase("false")) && (!paramString.equalsIgnoreCase("no")) && (!paramString.equalsIgnoreCase("0"))) {
      return paramBoolean;
    }
    return false;
  }
  
  static String s(boolean paramBoolean)
  {
    if (paramBoolean) {
      return "1";
    }
    return "0";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.ak
 * JD-Core Version:    0.7.0.1
 */