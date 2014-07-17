package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;

final class Cast$1
  implements Api.b<dq>
{
  public dq c(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    er.b(paramApiOptions, "Setting the API options is required.");
    er.b(paramApiOptions instanceof Cast.CastOptions, "Must provide valid CastOptions!");
    Cast.CastOptions localCastOptions = (Cast.CastOptions)paramApiOptions;
    return new dq(paramContext, paramLooper, localCastOptions.wv, Cast.CastOptions.a(localCastOptions), localCastOptions.ww, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public int getPriority()
  {
    return 2147483647;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.1
 * JD-Core Version:    0.7.0.1
 */