package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.List;

public final class gn
  implements RealTimeMultiplayer
{
  public void create(GoogleApiClient paramGoogleApiClient, RoomConfig paramRoomConfig)
  {
    Games.c(paramGoogleApiClient).a(paramRoomConfig);
  }
  
  public void declineInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).m(paramString, 0);
  }
  
  public void dismissInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).l(paramString, 0);
  }
  
  public Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2)
  {
    return Games.c(paramGoogleApiClient).b(paramInt1, paramInt2, true);
  }
  
  public Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return Games.c(paramGoogleApiClient).b(paramInt1, paramInt2, paramBoolean);
  }
  
  public RealTimeSocket getSocketForParticipant(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return Games.c(paramGoogleApiClient).i(paramString1, paramString2);
  }
  
  public Intent getWaitingRoomIntent(GoogleApiClient paramGoogleApiClient, Room paramRoom, int paramInt)
  {
    return Games.c(paramGoogleApiClient).a(paramRoom, paramInt);
  }
  
  public void join(GoogleApiClient paramGoogleApiClient, RoomConfig paramRoomConfig)
  {
    Games.c(paramGoogleApiClient).b(paramRoomConfig);
  }
  
  public void leave(GoogleApiClient paramGoogleApiClient, RoomUpdateListener paramRoomUpdateListener, String paramString)
  {
    Games.c(paramGoogleApiClient).a(paramRoomUpdateListener, paramString);
  }
  
  public int sendReliableMessage(GoogleApiClient paramGoogleApiClient, RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    return Games.c(paramGoogleApiClient).a(paramReliableMessageSentCallback, paramArrayOfByte, paramString1, paramString2);
  }
  
  public int sendUnreliableMessage(GoogleApiClient paramGoogleApiClient, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    return Games.c(paramGoogleApiClient).a(paramArrayOfByte, paramString1, new String[] { paramString2 });
  }
  
  public int sendUnreliableMessage(GoogleApiClient paramGoogleApiClient, byte[] paramArrayOfByte, String paramString, List<String> paramList)
  {
    String[] arrayOfString = (String[])paramList.toArray(new String[paramList.size()]);
    return Games.c(paramGoogleApiClient).a(paramArrayOfByte, paramString, arrayOfString);
  }
  
  public int sendUnreliableMessageToOthers(GoogleApiClient paramGoogleApiClient, byte[] paramArrayOfByte, String paramString)
  {
    return Games.c(paramGoogleApiClient).d(paramArrayOfByte, paramString);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gn
 * JD-Core Version:    0.7.0.1
 */