package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;

public final class gl
  implements Notifications
{
  public void clear(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    Games.c(paramGoogleApiClient).aU(paramInt);
  }
  
  public void clearAll(GoogleApiClient paramGoogleApiClient)
  {
    clear(paramGoogleApiClient, 7);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gl
 * JD-Core Version:    0.7.0.1
 */