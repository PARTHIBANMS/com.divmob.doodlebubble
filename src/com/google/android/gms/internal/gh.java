package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

public final class gh
  implements GamesMetadata
{
  public Game getCurrentGame(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fq();
  }
  
  public PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new gh.1(this));
  }
  
  private static abstract class a
    extends Games.a<GamesMetadata.LoadGamesResult>
  {
    public GamesMetadata.LoadGamesResult u(Status paramStatus)
    {
      return new gh.a.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gh
 * JD-Core Version:    0.7.0.1
 */