package com.google.android.gms.appstate;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.ee;
import java.util.List;

final class AppStateManager$1
  implements Api.b<dl>
{
  public dl a(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new dl(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramee.dR(), (String[])paramee.dT().toArray(new String[0]));
  }
  
  public int getPriority()
  {
    return 2147483647;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager.1
 * JD-Core Version:    0.7.0.1
 */