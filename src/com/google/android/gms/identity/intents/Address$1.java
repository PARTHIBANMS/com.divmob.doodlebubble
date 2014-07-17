package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.hc;

final class Address$1
  implements Api.b<hc>
{
  public hc f(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    er.b(paramContext instanceof Activity, "An Activity must be used for Address APIs");
    Address.AddressOptions localAddressOptions1 = new Address.AddressOptions();
    if (paramApiOptions != null) {
      er.b(paramApiOptions instanceof Address.AddressOptions, "Must use AddressOptions with Address API");
    }
    for (Address.AddressOptions localAddressOptions2 = (Address.AddressOptions)paramApiOptions;; localAddressOptions2 = localAddressOptions1) {
      return new hc((Activity)paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramee.getAccountName(), localAddressOptions2.theme);
    }
  }
  
  public int getPriority()
  {
    return 2147483647;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.identity.intents.Address.1
 * JD-Core Version:    0.7.0.1
 */