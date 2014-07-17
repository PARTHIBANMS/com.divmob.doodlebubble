package com.google.android.gms.panorama;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ih;

final class Panorama$1
  implements Api.b<ih>
{
  public ih g(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new ih(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public int getPriority()
  {
    return 2147483647;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.panorama.Panorama.1
 * JD-Core Version:    0.7.0.1
 */