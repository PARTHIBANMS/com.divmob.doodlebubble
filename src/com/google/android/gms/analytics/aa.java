package com.google.android.gms.analytics;

public class aa
{
  private static GoogleAnalytics tV;
  
  public static boolean cm()
  {
    Logger localLogger = getLogger();
    boolean bool = false;
    if (localLogger != null)
    {
      int i = getLogger().getLogLevel();
      bool = false;
      if (i == 0) {
        bool = true;
      }
    }
    return bool;
  }
  
  private static Logger getLogger()
  {
    if (tV == null) {
      tV = GoogleAnalytics.cf();
    }
    if (tV != null) {
      return tV.getLogger();
    }
    return null;
  }
  
  public static void t(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.error(paramString);
    }
  }
  
  public static void u(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.info(paramString);
    }
  }
  
  public static void v(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.verbose(paramString);
    }
  }
  
  public static void w(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.warn(paramString);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.aa
 * JD-Core Version:    0.7.0.1
 */