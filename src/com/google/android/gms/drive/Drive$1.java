package com.google.android.gms.drive;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.drive.internal.n;
import com.google.android.gms.internal.ee;
import java.util.List;

final class Drive$1
  implements Api.b<n>
{
  public n d(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    List localList = paramee.dT();
    return new n(paramContext, paramLooper, paramee, paramConnectionCallbacks, paramOnConnectionFailedListener, (String[])localList.toArray(new String[localList.size()]));
  }
  
  public int getPriority()
  {
    return 2147483647;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.Drive.1
 * JD-Core Version:    0.7.0.1
 */