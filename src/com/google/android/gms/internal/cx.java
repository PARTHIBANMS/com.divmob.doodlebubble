package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;

public final class cx
{
  public static void a(Context paramContext, WebSettings paramWebSettings)
  {
    cw.a(paramContext, paramWebSettings);
    paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
  }
  
  public static String getDefaultUserAgent(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cx
 * JD-Core Version:    0.7.0.1
 */