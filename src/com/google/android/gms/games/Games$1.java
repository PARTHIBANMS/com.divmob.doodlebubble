package com.google.android.gms.games;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.fx;

final class Games$1
  implements Api.b<fx>
{
  public fx e(Context paramContext, Looper paramLooper, ee paramee, GoogleApiClient.ApiOptions paramApiOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Games.GamesOptions localGamesOptions1 = new Games.GamesOptions(null);
    if (paramApiOptions != null) {
      er.b(paramApiOptions instanceof Games.GamesOptions, "Must provide valid GamesOptions!");
    }
    for (Games.GamesOptions localGamesOptions2 = (Games.GamesOptions)paramApiOptions;; localGamesOptions2 = localGamesOptions1) {
      return new fx(paramContext, paramLooper, paramee.dV(), paramee.dR(), paramConnectionCallbacks, paramOnConnectionFailedListener, paramee.dU(), paramee.dS(), paramee.dW(), localGamesOptions2.Gc, localGamesOptions2.Gd, localGamesOptions2.Ge, localGamesOptions2.Gf, localGamesOptions2.Gg);
    }
  }
  
  public int getPriority()
  {
    return 1;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.Games.1
 * JD-Core Version:    0.7.0.1
 */