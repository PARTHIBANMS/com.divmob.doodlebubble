package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

class g
  implements m
{
  private static Object qI = new Object();
  private static g qV;
  protected String qR;
  protected String qS;
  protected String qT;
  protected String qU;
  
  protected g() {}
  
  private g(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    this.qT = paramContext.getPackageName();
    this.qU = localPackageManager.getInstallerPackageName(this.qT);
    str1 = this.qT;
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      str2 = null;
      if (localPackageInfo != null)
      {
        str1 = localPackageManager.getApplicationLabel(localPackageInfo.applicationInfo).toString();
        str2 = localPackageInfo.versionName;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        aa.t("Error retrieving package info: appName set to " + str1);
        String str2 = null;
      }
    }
    this.qR = str1;
    this.qS = str2;
  }
  
  public static g bt()
  {
    return qV;
  }
  
  public static void n(Context paramContext)
  {
    synchronized (qI)
    {
      if (qV == null) {
        qV = new g(paramContext);
      }
      return;
    }
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return this.qR;
      }
      if (paramString.equals("&av")) {
        return this.qS;
      }
      if (paramString.equals("&aid")) {
        return this.qT;
      }
    } while (!paramString.equals("&aiid"));
    return this.qU;
  }
  
  public boolean x(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.g
 * JD-Core Version:    0.7.0.1
 */