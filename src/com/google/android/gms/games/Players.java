package com.google.android.gms.games;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Players
{
  public static final String EXTRA_PLAYER_SEARCH_RESULTS = "player_search_results";
  
  public abstract Player getCurrentPlayer(GoogleApiClient paramGoogleApiClient);
  
  public abstract String getCurrentPlayerId(GoogleApiClient paramGoogleApiClient);
  
  public abstract Intent getPlayerSearchIntent(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<LoadPlayersResult> loadConnectedPlayers(GoogleApiClient paramGoogleApiClient, boolean paramBoolean);
  
  public abstract PendingResult<LoadPlayersResult> loadInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean);
  
  public abstract PendingResult<LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt);
  
  public abstract PendingResult<LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt);
  
  public abstract PendingResult<LoadPlayersResult> loadPlayer(GoogleApiClient paramGoogleApiClient, String paramString);
  
  public abstract PendingResult<LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean);
  
  public static abstract interface LoadPlayersResult
    extends Releasable, Result
  {
    public abstract PlayerBuffer getPlayers();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.Players
 * JD-Core Version:    0.7.0.1
 */