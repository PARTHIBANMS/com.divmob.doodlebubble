package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import java.util.List;

public final class gp
  implements TurnBasedMultiplayer
{
  public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> acceptInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gp.4(this, paramString));
  }
  
  public PendingResult<TurnBasedMultiplayer.CancelMatchResult> cancelMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gp.9(this, paramString, paramString));
  }
  
  public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> createMatch(GoogleApiClient paramGoogleApiClient, TurnBasedMatchConfig paramTurnBasedMatchConfig)
  {
    return paramGoogleApiClient.b(new gp.1(this, paramTurnBasedMatchConfig));
  }
  
  public void declineInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).m(paramString, 1);
  }
  
  public void dismissInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).l(paramString, 1);
  }
  
  public void dismissMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).av(paramString);
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return finishMatch(paramGoogleApiClient, paramString, null, (ParticipantResult[])null);
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString, byte[] paramArrayOfByte, List<ParticipantResult> paramList)
  {
    if (paramList == null) {}
    for (ParticipantResult[] arrayOfParticipantResult = null;; arrayOfParticipantResult = (ParticipantResult[])paramList.toArray(new ParticipantResult[paramList.size()])) {
      return finishMatch(paramGoogleApiClient, paramString, paramArrayOfByte, arrayOfParticipantResult);
    }
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString, byte[] paramArrayOfByte, ParticipantResult... paramVarArgs)
  {
    return paramGoogleApiClient.b(new gp.6(this, paramString, paramArrayOfByte, paramVarArgs));
  }
  
  public Intent getInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).ft();
  }
  
  public int getMaxMatchDataSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fC();
  }
  
  public Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramInt2, true);
  }
  
  public Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramInt2, paramBoolean);
  }
  
  public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gp.7(this, paramString));
  }
  
  public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatchDuringTurn(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return paramGoogleApiClient.b(new gp.8(this, paramString1, paramString2));
  }
  
  public PendingResult<TurnBasedMultiplayer.LoadMatchResult> loadMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new gp.2(this, paramString));
  }
  
  public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient paramGoogleApiClient, int paramInt, int[] paramArrayOfInt)
  {
    return paramGoogleApiClient.a(new gp.10(this, paramInt, paramArrayOfInt));
  }
  
  public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient paramGoogleApiClient, int[] paramArrayOfInt)
  {
    return loadMatchesByStatus(paramGoogleApiClient, 0, paramArrayOfInt);
  }
  
  public void registerMatchUpdateListener(GoogleApiClient paramGoogleApiClient, OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnTurnBasedMatchUpdateReceivedListener);
  }
  
  public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> rematch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gp.3(this, paramString));
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    return takeTurn(paramGoogleApiClient, paramString1, paramArrayOfByte, paramString2, (ParticipantResult[])null);
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2, List<ParticipantResult> paramList)
  {
    if (paramList == null) {}
    for (ParticipantResult[] arrayOfParticipantResult = null;; arrayOfParticipantResult = (ParticipantResult[])paramList.toArray(new ParticipantResult[paramList.size()])) {
      return takeTurn(paramGoogleApiClient, paramString1, paramArrayOfByte, paramString2, arrayOfParticipantResult);
    }
  }
  
  public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2, ParticipantResult... paramVarArgs)
  {
    return paramGoogleApiClient.b(new gp.5(this, paramString1, paramArrayOfByte, paramString2, paramVarArgs));
  }
  
  public void unregisterMatchUpdateListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).fw();
  }
  
  private static abstract class a
    extends Games.a<TurnBasedMultiplayer.CancelMatchResult>
  {
    private final String uS;
    
    public a(String paramString)
    {
      this.uS = paramString;
    }
    
    public TurnBasedMultiplayer.CancelMatchResult D(Status paramStatus)
    {
      return new gp.a.1(this, paramStatus);
    }
  }
  
  private static abstract class b
    extends Games.a<TurnBasedMultiplayer.InitiateMatchResult>
  {
    public TurnBasedMultiplayer.InitiateMatchResult E(Status paramStatus)
    {
      return new gp.b.1(this, paramStatus);
    }
  }
  
  private static abstract class c
    extends Games.a<TurnBasedMultiplayer.LeaveMatchResult>
  {
    public TurnBasedMultiplayer.LeaveMatchResult F(Status paramStatus)
    {
      return new gp.c.1(this, paramStatus);
    }
  }
  
  private static abstract class d
    extends Games.a<TurnBasedMultiplayer.LoadMatchResult>
  {
    public TurnBasedMultiplayer.LoadMatchResult G(Status paramStatus)
    {
      return new gp.d.1(this, paramStatus);
    }
  }
  
  private static abstract class e
    extends Games.a<TurnBasedMultiplayer.LoadMatchesResult>
  {
    public TurnBasedMultiplayer.LoadMatchesResult H(Status paramStatus)
    {
      return new gp.e.1(this, paramStatus);
    }
  }
  
  private static abstract class f
    extends Games.a<TurnBasedMultiplayer.UpdateMatchResult>
  {
    public TurnBasedMultiplayer.UpdateMatchResult I(Status paramStatus)
    {
      return new gp.f.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gp
 * JD-Core Version:    0.7.0.1
 */