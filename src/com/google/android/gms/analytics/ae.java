package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

class ae
  implements m
{
  private static Object qI = new Object();
  private static ae uk;
  private final Context mContext;
  
  protected ae(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public static ae cs()
  {
    synchronized (qI)
    {
      ae localae = uk;
      return localae;
    }
  }
  
  public static void n(Context paramContext)
  {
    synchronized (qI)
    {
      if (uk == null) {
        uk = new ae(paramContext);
      }
      return;
    }
  }
  
  protected String ct()
  {
    DisplayMetrics localDisplayMetrics = this.mContext.getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels + "x" + localDisplayMetrics.heightPixels;
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.equals("&sr")) {
      return null;
    }
    return ct();
  }
  
  public boolean x(String paramString)
  {
    return "&sr".equals(paramString);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.ae
 * JD-Core Version:    0.7.0.1
 */