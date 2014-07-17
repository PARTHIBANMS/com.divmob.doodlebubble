package com.divmob.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class j
{
  public static boolean a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    return (localConnectivityManager.getActiveNetworkInfo() != null) && (localConnectivityManager.getActiveNetworkInfo().isAvailable()) && (localConnectivityManager.getActiveNetworkInfo().isConnected());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.j
 * JD-Core Version:    0.7.0.1
 */