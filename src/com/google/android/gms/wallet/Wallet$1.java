package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.jg;

final class Wallet$1
  implements Api.b<jg>
{
  public int getPriority()
  {
    return 2147483647;
  }
  
  public jg i(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    er.b(paramContext instanceof Activity, "An Activity must be used for Wallet APIs");
    Activity localActivity = (Activity)paramContext;
    boolean bool;
    if ((paramApiOptions == null) || ((paramApiOptions instanceof Wallet.WalletOptions)))
    {
      bool = true;
      er.b(bool, "WalletOptions must be used for Wallet APIs");
      if (paramApiOptions == null) {
        break label85;
      }
    }
    label85:
    for (Wallet.WalletOptions localWalletOptions = (Wallet.WalletOptions)paramApiOptions;; localWalletOptions = new Wallet.WalletOptions(null))
    {
      return new jg(localActivity, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, localWalletOptions.environment, paramee.getAccountName(), localWalletOptions.theme);
      bool = false;
      break;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.wallet.Wallet.1
 * JD-Core Version:    0.7.0.1
 */