package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

public final class ad
  extends ai.a
{
  private final AppEventListener lq;
  
  public ad(AppEventListener paramAppEventListener)
  {
    this.lq = paramAppEventListener;
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    this.lq.onAppEvent(paramString1, paramString2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ad
 * JD-Core Version:    0.7.0.1
 */