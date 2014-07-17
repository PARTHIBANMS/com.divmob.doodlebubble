package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;

public final class gj
  implements Leaderboards
{
  public Intent getAllLeaderboardsIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fr();
  }
  
  public Intent getLeaderboardIntent(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return Games.c(paramGoogleApiClient).au(paramString);
  }
  
  public PendingResult<Leaderboards.LoadPlayerScoreResult> loadCurrentPlayerLeaderboardScore(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2)
  {
    return paramGoogleApiClient.a(new gj.3(this, paramString, paramInt1, paramInt2));
  }
  
  public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gj.2(this, paramString, paramBoolean));
  }
  
  public PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gj.1(this, paramBoolean));
  }
  
  public PendingResult<Leaderboards.LoadScoresResult> loadMoreScores(GoogleApiClient paramGoogleApiClient, LeaderboardScoreBuffer paramLeaderboardScoreBuffer, int paramInt1, int paramInt2)
  {
    return paramGoogleApiClient.a(new gj.6(this, paramLeaderboardScoreBuffer, paramInt1, paramInt2));
  }
  
  public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return loadPlayerCenteredScores(paramGoogleApiClient, paramString, paramInt1, paramInt2, paramInt3, false);
  }
  
  public PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gj.5(this, paramString, paramInt1, paramInt2, paramInt3, paramBoolean));
  }
  
  public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return loadTopScores(paramGoogleApiClient, paramString, paramInt1, paramInt2, paramInt3, false);
  }
  
  public PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gj.4(this, paramString, paramInt1, paramInt2, paramInt3, paramBoolean));
  }
  
  public void submitScore(GoogleApiClient paramGoogleApiClient, String paramString, long paramLong)
  {
    submitScore(paramGoogleApiClient, paramString, paramLong, null);
  }
  
  public void submitScore(GoogleApiClient paramGoogleApiClient, String paramString1, long paramLong, String paramString2)
  {
    Games.c(paramGoogleApiClient).a(null, paramString1, paramLong, paramString2);
  }
  
  public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient paramGoogleApiClient, String paramString, long paramLong)
  {
    return submitScoreImmediate(paramGoogleApiClient, paramString, paramLong, null);
  }
  
  public PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient paramGoogleApiClient, String paramString1, long paramLong, String paramString2)
  {
    return paramGoogleApiClient.b(new gj.7(this, paramString1, paramLong, paramString2));
  }
  
  private static abstract class a
    extends Games.a<Leaderboards.LeaderboardMetadataResult>
  {
    public Leaderboards.LeaderboardMetadataResult w(Status paramStatus)
    {
      return new gj.a.1(this, paramStatus);
    }
  }
  
  private static abstract class b
    extends Games.a<Leaderboards.LoadPlayerScoreResult>
  {
    public Leaderboards.LoadPlayerScoreResult x(Status paramStatus)
    {
      return new gj.b.1(this, paramStatus);
    }
  }
  
  private static abstract class c
    extends Games.a<Leaderboards.LoadScoresResult>
  {
    public Leaderboards.LoadScoresResult y(Status paramStatus)
    {
      return new gj.c.1(this, paramStatus);
    }
  }
  
  protected static abstract class d
    extends Games.a<Leaderboards.SubmitScoreResult>
  {
    public Leaderboards.SubmitScoreResult z(Status paramStatus)
    {
      return new gj.d.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gj
 * JD-Core Version:    0.7.0.1
 */