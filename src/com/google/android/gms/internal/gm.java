package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.Players.LoadPlayersResult;

public final class gm
  implements Players
{
  public Player getCurrentPlayer(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fp();
  }
  
  public String getCurrentPlayerId(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fo();
  }
  
  public Intent getPlayerSearchIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fy();
  }
  
  public PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gm.6(this, paramBoolean));
  }
  
  public PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gm.2(this, paramInt, paramBoolean));
  }
  
  public PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new gm.3(this, paramInt));
  }
  
  public PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new gm.5(this, paramInt));
  }
  
  public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new gm.1(this, paramString));
  }
  
  public PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gm.4(this, paramInt, paramBoolean));
  }
  
  private static abstract class a
    extends Games.a<Players.LoadPlayersResult>
  {
    public Players.LoadPlayersResult A(Status paramStatus)
    {
      return new gm.a.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gm
 * JD-Core Version:    0.7.0.1
 */