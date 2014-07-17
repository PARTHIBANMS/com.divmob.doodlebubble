package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

public final class gi
  implements Invitations
{
  public Intent getInvitationInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fu();
  }
  
  public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient)
  {
    return loadInvitations(paramGoogleApiClient, 0);
  }
  
  public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new gi.1(this, paramInt));
  }
  
  public void registerInvitationListener(GoogleApiClient paramGoogleApiClient, OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnInvitationReceivedListener);
  }
  
  public void unregisterInvitationListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).fv();
  }
  
  private static abstract class a
    extends Games.a<Invitations.LoadInvitationsResult>
  {
    public Invitations.LoadInvitationsResult v(Status paramStatus)
    {
      return new gi.a.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gi
 * JD-Core Version:    0.7.0.1
 */