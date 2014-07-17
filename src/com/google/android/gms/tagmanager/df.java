package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;

class df
{
  private GoogleAnalytics XE;
  private Context mContext;
  private Tracker re;
  
  df(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  private void bG(String paramString)
  {
    try
    {
      if (this.XE == null)
      {
        this.XE = GoogleAnalytics.getInstance(this.mContext);
        this.XE.setLogger(new a());
        this.re = this.XE.newTracker(paramString);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Tracker bF(String paramString)
  {
    bG(paramString);
    return this.re;
  }
  
  static class a
    implements Logger
  {
    private static int bX(int paramInt)
    {
      switch (paramInt)
      {
      case 6: 
      default: 
        return 3;
      case 5: 
        return 2;
      case 3: 
      case 4: 
        return 1;
      }
      return 0;
    }
    
    public void error(Exception paramException)
    {
      bh.c("", paramException);
    }
    
    public void error(String paramString)
    {
      bh.t(paramString);
    }
    
    public int getLogLevel()
    {
      return bX(bh.getLogLevel());
    }
    
    public void info(String paramString)
    {
      bh.u(paramString);
    }
    
    public void setLogLevel(int paramInt)
    {
      bh.w("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
    }
    
    public void verbose(String paramString)
    {
      bh.v(paramString);
    }
    
    public void warn(String paramString)
    {
      bh.w(paramString);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.df
 * JD-Core Version:    0.7.0.1
 */