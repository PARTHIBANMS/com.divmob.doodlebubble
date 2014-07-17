package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import java.util.Set;

final class Plus$1
  implements Api.b<e>
{
  public int getPriority()
  {
    return 2;
  }
  
  public e h(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Plus.PlusOptions localPlusOptions1 = new Plus.PlusOptions(null);
    if (paramApiOptions != null) {
      er.b(paramApiOptions instanceof Plus.PlusOptions, "Must provide valid PlusOptions!");
    }
    for (Plus.PlusOptions localPlusOptions2 = (Plus.PlusOptions)paramApiOptions;; localPlusOptions2 = localPlusOptions1)
    {
      e locale = new e(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new h(paramee.dR(), paramee.dU(), (String[])localPlusOptions2.QM.toArray(new String[0]), new String[0], paramContext.getPackageName(), paramContext.getPackageName(), null, new PlusCommonExtras()));
      return locale;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.Plus.1
 * JD-Core Version:    0.7.0.1
 */