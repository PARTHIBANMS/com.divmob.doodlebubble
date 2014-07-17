package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.leaderboard.c;
import com.google.android.gms.games.leaderboard.d;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantUtils;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class fx
  extends eh<gb>
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private boolean GA = false;
  private boolean GB = false;
  private int GC;
  private final Binder GD;
  private final long GE;
  private final boolean GF;
  private final int GG;
  private final boolean GH;
  private final String Gv;
  private final Map<String, RealTimeSocket> Gw;
  private PlayerEntity Gx;
  private GameEntity Gy;
  private final gd Gz;
  private final String vi;
  
  public fx(Context paramContext, Looper paramLooper, String paramString1, String paramString2, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String[] paramArrayOfString, int paramInt1, View paramView, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, int paramInt3)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramArrayOfString);
    this.Gv = paramString1;
    this.vi = ((String)er.f(paramString2));
    this.GD = new Binder();
    this.Gw = new HashMap();
    this.Gz = gd.a(this, paramInt1);
    e(paramView);
    this.GB = paramBoolean2;
    this.GC = paramInt2;
    this.GE = hashCode();
    this.GF = paramBoolean1;
    this.GH = paramBoolean3;
    this.GG = paramInt3;
    registerConnectionCallbacks(this);
    registerConnectionFailedListener(this);
  }
  
  private Room G(DataHolder paramDataHolder)
  {
    com.google.android.gms.games.multiplayer.realtime.a locala = new com.google.android.gms.games.multiplayer.realtime.a(paramDataHolder);
    try
    {
      int i = locala.getCount();
      Room localRoom = null;
      if (i > 0) {
        localRoom = (Room)((Room)locala.get(0)).freeze();
      }
      return localRoom;
    }
    finally
    {
      locala.close();
    }
  }
  
  /* Error */
  private RealTimeSocket aw(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 138	com/google/android/gms/internal/fx:eb	()Landroid/os/IInterface;
    //   4: checkcast 140	com/google/android/gms/internal/gb
    //   7: aload_1
    //   8: invokeinterface 144 2 0
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +36 -> 51
    //   18: ldc 146
    //   20: ldc 148
    //   22: invokestatic 153	com/google/android/gms/internal/fz:f	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: new 155	com/google/android/gms/internal/gc
    //   28: dup
    //   29: aload_3
    //   30: invokespecial 158	com/google/android/gms/internal/gc:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   33: astore 4
    //   35: aload_0
    //   36: getfield 66	com/google/android/gms/internal/fx:Gw	Ljava/util/Map;
    //   39: aload_1
    //   40: aload 4
    //   42: invokeinterface 164 3 0
    //   47: pop
    //   48: aload 4
    //   50: areturn
    //   51: ldc 146
    //   53: ldc 166
    //   55: invokestatic 153	com/google/android/gms/internal/fz:f	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: aload_0
    //   59: invokevirtual 138	com/google/android/gms/internal/fx:eb	()Landroid/os/IInterface;
    //   62: checkcast 140	com/google/android/gms/internal/gb
    //   65: aload_1
    //   66: invokeinterface 170 2 0
    //   71: astore 6
    //   73: aload 6
    //   75: ifnonnull +5 -> 80
    //   78: aconst_null
    //   79: areturn
    //   80: new 172	android/net/LocalSocket
    //   83: dup
    //   84: invokespecial 173	android/net/LocalSocket:<init>	()V
    //   87: astore 7
    //   89: aload 7
    //   91: new 175	android/net/LocalSocketAddress
    //   94: dup
    //   95: aload 6
    //   97: invokespecial 178	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;)V
    //   100: invokevirtual 182	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   103: new 184	com/google/android/gms/internal/ge
    //   106: dup
    //   107: aload 7
    //   109: aload_1
    //   110: invokespecial 187	com/google/android/gms/internal/ge:<init>	(Landroid/net/LocalSocket;Ljava/lang/String;)V
    //   113: astore 9
    //   115: aload_0
    //   116: getfield 66	com/google/android/gms/internal/fx:Gw	Ljava/util/Map;
    //   119: aload_1
    //   120: aload 9
    //   122: invokeinterface 164 3 0
    //   127: pop
    //   128: aload 9
    //   130: areturn
    //   131: astore_2
    //   132: ldc 146
    //   134: ldc 189
    //   136: invokestatic 192	com/google/android/gms/internal/fz:h	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: aconst_null
    //   140: areturn
    //   141: astore 8
    //   143: ldc 146
    //   145: new 194	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 195	java/lang/StringBuilder:<init>	()V
    //   152: ldc 197
    //   154: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload 8
    //   159: invokevirtual 205	java/io/IOException:getMessage	()Ljava/lang/String;
    //   162: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 192	com/google/android/gms/internal/fz:h	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: aconst_null
    //   172: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	fx
    //   0	173	1	paramString	String
    //   131	1	2	localRemoteException	RemoteException
    //   13	17	3	localParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   33	16	4	localgc	gc
    //   71	25	6	str	String
    //   87	21	7	localLocalSocket	android.net.LocalSocket
    //   141	17	8	localIOException	IOException
    //   113	16	9	localge	ge
    // Exception table:
    //   from	to	target	type
    //   0	14	131	android/os/RemoteException
    //   18	48	131	android/os/RemoteException
    //   51	73	131	android/os/RemoteException
    //   80	89	131	android/os/RemoteException
    //   89	103	131	android/os/RemoteException
    //   103	128	131	android/os/RemoteException
    //   143	171	131	android/os/RemoteException
    //   89	103	141	java/io/IOException
  }
  
  private void fG()
  {
    Iterator localIterator = this.Gw.values().iterator();
    while (localIterator.hasNext())
    {
      RealTimeSocket localRealTimeSocket = (RealTimeSocket)localIterator.next();
      try
      {
        localRealTimeSocket.close();
      }
      catch (IOException localIOException)
      {
        fz.a("GamesClientImpl", "IOException:", localIOException);
      }
    }
    this.Gw.clear();
  }
  
  private void fm()
  {
    this.Gx = null;
  }
  
  protected gb H(IBinder paramIBinder)
  {
    return gb.a.J(paramIBinder);
  }
  
  public int a(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      int i = ((gb)eb()).a(new an(paramReliableMessageSentCallback), paramArrayOfByte, paramString1, paramString2);
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public int a(byte[] paramArrayOfByte, String paramString, String[] paramArrayOfString)
  {
    er.b(paramArrayOfString, "Participant IDs must not be null");
    try
    {
      int i = ((gb)eb()).b(paramArrayOfByte, paramString, paramArrayOfString);
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public Intent a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      Intent localIntent = ((gb)eb()).a(paramInt1, paramInt2, paramBoolean);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, Bitmap paramBitmap, String paramString)
  {
    try
    {
      Intent localIntent = ((gb)eb()).a(paramInt1, paramArrayOfByte, paramInt2, paramString);
      er.b(paramBitmap, "Must provide a non null icon");
      localIntent.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", paramBitmap);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent a(Room paramRoom, int paramInt)
  {
    try
    {
      Intent localIntent = ((gb)eb()).a((RoomEntity)paramRoom.freeze(), paramInt);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if ((paramInt == 0) && (paramBundle != null)) {
      this.GA = paramBundle.getBoolean("show_welcome_popup");
    }
    super.a(paramInt, paramIBinder, paramBundle);
  }
  
  public void a(IBinder paramIBinder, Bundle paramBundle)
  {
    if (isConnected()) {}
    try
    {
      ((gb)eb()).a(paramIBinder, paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Requests.LoadRequestsResult> paramc, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      ((gb)eb()).a(new ar(paramc), paramInt1, paramInt2, paramInt3);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Players.LoadPlayersResult> paramc, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((gb)eb()).a(new ak(paramc), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<TurnBasedMultiplayer.LoadMatchesResult> paramc, int paramInt, int[] paramArrayOfInt)
  {
    try
    {
      ((gb)eb()).a(new bq(paramc), paramInt, paramArrayOfInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Leaderboards.LoadScoresResult> paramc, LeaderboardScoreBuffer paramLeaderboardScoreBuffer, int paramInt1, int paramInt2)
  {
    try
    {
      ((gb)eb()).a(new r(paramc), paramLeaderboardScoreBuffer.fX().fY(), paramInt1, paramInt2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<TurnBasedMultiplayer.InitiateMatchResult> paramc, TurnBasedMatchConfig paramTurnBasedMatchConfig)
  {
    try
    {
      ((gb)eb()).a(new bi(paramc), paramTurnBasedMatchConfig.getVariant(), paramTurnBasedMatchConfig.getMinPlayers(), paramTurnBasedMatchConfig.getInvitedPlayerIds(), paramTurnBasedMatchConfig.getAutoMatchCriteria());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Players.LoadPlayersResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).a(new ak(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Achievements.UpdateAchievementResult> paramc, String paramString, int paramInt)
  {
    if (paramc == null) {}
    for (Object localObject = null;; localObject = new d(paramc)) {
      try
      {
        ((gb)eb()).a((ga)localObject, paramString, paramInt, this.Gz.fP(), this.Gz.fO());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        fz.g("GamesClientImpl", "service died");
      }
    }
  }
  
  public void a(a.c<Leaderboards.LoadScoresResult> paramc, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).a(new r(paramc), paramString, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Players.LoadPlayersResult> paramc, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramString.equals("playedWith")) {
      throw new IllegalArgumentException("Invalid player collection: " + paramString);
    }
    try
    {
      ((gb)eb()).d(new ak(paramc), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Leaderboards.SubmitScoreResult> paramc, String paramString1, long paramLong, String paramString2)
  {
    if (paramc == null) {}
    for (Object localObject = null;; localObject = new bd(paramc)) {
      try
      {
        ((gb)eb()).a((ga)localObject, paramString1, paramLong, paramString2);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        fz.g("GamesClientImpl", "service died");
      }
    }
  }
  
  public void a(a.c<TurnBasedMultiplayer.LeaveMatchResult> paramc, String paramString1, String paramString2)
  {
    try
    {
      ((gb)eb()).c(new bk(paramc), paramString1, paramString2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Leaderboards.LoadPlayerScoreResult> paramc, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      ((gb)eb()).a(new ai(paramc), paramString1, paramString2, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Leaderboards.LeaderboardMetadataResult> paramc, String paramString, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).c(new t(paramc), paramString, paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<TurnBasedMultiplayer.UpdateMatchResult> paramc, String paramString1, byte[] paramArrayOfByte, String paramString2, ParticipantResult[] paramArrayOfParticipantResult)
  {
    try
    {
      ((gb)eb()).a(new bo(paramc), paramString1, paramArrayOfByte, paramString2, paramArrayOfParticipantResult);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<TurnBasedMultiplayer.UpdateMatchResult> paramc, String paramString, byte[] paramArrayOfByte, ParticipantResult[] paramArrayOfParticipantResult)
  {
    try
    {
      ((gb)eb()).a(new bo(paramc), paramString, paramArrayOfByte, paramArrayOfParticipantResult);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Players.LoadPlayersResult> paramc, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).c(new ak(paramc), paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(a.c<Requests.UpdateRequestsResult> paramc, String[] paramArrayOfString)
  {
    try
    {
      ((gb)eb()).a(new at(paramc), paramArrayOfString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    try
    {
      l locall = new l(paramOnInvitationReceivedListener);
      ((gb)eb()).a(locall, this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(RoomConfig paramRoomConfig)
  {
    try
    {
      ax localax = new ax(paramRoomConfig.getRoomUpdateListener(), paramRoomConfig.getRoomStatusUpdateListener(), paramRoomConfig.getMessageReceivedListener());
      ((gb)eb()).a(localax, this.GD, paramRoomConfig.getVariant(), paramRoomConfig.getInvitedPlayerIds(), paramRoomConfig.getAutoMatchCriteria(), paramRoomConfig.isSocketEnabled(), this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(RoomUpdateListener paramRoomUpdateListener, String paramString)
  {
    try
    {
      ((gb)eb()).c(new ax(paramRoomUpdateListener), paramString);
      fG();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    try
    {
      x localx = new x(paramOnTurnBasedMatchUpdateReceivedListener);
      ((gb)eb()).b(localx, this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void a(OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    try
    {
      ao localao = new ao(paramOnRequestReceivedListener);
      ((gb)eb()).c(localao, this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  protected void a(en paramen, eh.e parame)
    throws RemoteException
  {
    String str = getContext().getResources().getConfiguration().locale.toString();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.GF);
    localBundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.GB);
    localBundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.GC);
    localBundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.GH);
    localBundle.putInt("com.google.android.gms.games.key.sdkVariant", this.GG);
    paramen.a(parame, 4323000, getContext().getPackageName(), this.vi, ea(), this.Gv, this.Gz.fP(), str, localBundle);
  }
  
  protected String aF()
  {
    return "com.google.android.gms.games.service.START";
  }
  
  protected String aG()
  {
    return "com.google.android.gms.games.internal.IGamesService";
  }
  
  public void aT(int paramInt)
  {
    this.Gz.setGravity(paramInt);
  }
  
  public void aU(int paramInt)
  {
    try
    {
      ((gb)eb()).aU(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public Intent au(String paramString)
  {
    try
    {
      Intent localIntent = ((gb)eb()).au(paramString);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public void av(String paramString)
  {
    try
    {
      ((gb)eb()).aC(paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public Intent b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      Intent localIntent = ((gb)eb()).b(paramInt1, paramInt2, paramBoolean);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public void b(a.c<Status> paramc)
  {
    try
    {
      ((gb)eb()).a(new bb(paramc));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void b(a.c<Achievements.UpdateAchievementResult> paramc, String paramString)
  {
    if (paramc == null) {}
    for (Object localObject = null;; localObject = locald)
    {
      try
      {
        ((gb)eb()).a((ga)localObject, paramString, this.Gz.fP(), this.Gz.fO());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        d locald;
        fz.g("GamesClientImpl", "service died");
      }
      locald = new d(paramc);
    }
  }
  
  public void b(a.c<Achievements.UpdateAchievementResult> paramc, String paramString, int paramInt)
  {
    if (paramc == null) {}
    for (Object localObject = null;; localObject = new d(paramc)) {
      try
      {
        ((gb)eb()).b((ga)localObject, paramString, paramInt, this.Gz.fP(), this.Gz.fO());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        fz.g("GamesClientImpl", "service died");
      }
    }
  }
  
  public void b(a.c<Leaderboards.LoadScoresResult> paramc, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).b(new r(paramc), paramString, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void b(a.c<Leaderboards.LeaderboardMetadataResult> paramc, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).b(new t(paramc), paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void b(a.c<Requests.UpdateRequestsResult> paramc, String[] paramArrayOfString)
  {
    try
    {
      ((gb)eb()).b(new at(paramc), paramArrayOfString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void b(RoomConfig paramRoomConfig)
  {
    try
    {
      ax localax = new ax(paramRoomConfig.getRoomUpdateListener(), paramRoomConfig.getRoomStatusUpdateListener(), paramRoomConfig.getMessageReceivedListener());
      ((gb)eb()).a(localax, this.GD, paramRoomConfig.getInvitationId(), paramRoomConfig.isSocketEnabled(), this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  protected void b(String... paramVarArgs)
  {
    int i = 0;
    int j = 0;
    boolean bool1 = false;
    if (i < paramVarArgs.length)
    {
      String str = paramVarArgs[i];
      if (str.equals("https://www.googleapis.com/auth/games")) {
        bool1 = true;
      }
      for (;;)
      {
        i++;
        break;
        if (str.equals("https://www.googleapis.com/auth/games.firstparty")) {
          j = 1;
        }
      }
    }
    if (j != 0)
    {
      if (!bool1) {}
      for (boolean bool2 = true;; bool2 = false)
      {
        er.a(bool2, String.format("Cannot have both %s and %s!", new Object[] { "https://www.googleapis.com/auth/games", "https://www.googleapis.com/auth/games.firstparty" }));
        return;
      }
    }
    er.a(bool1, String.format("Games APIs requires %s to function.", new Object[] { "https://www.googleapis.com/auth/games" }));
  }
  
  public void c(a.c<Invitations.LoadInvitationsResult> paramc, int paramInt)
  {
    try
    {
      ((gb)eb()).a(new o(paramc), paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void c(a.c<Achievements.UpdateAchievementResult> paramc, String paramString)
  {
    if (paramc == null) {}
    for (Object localObject = null;; localObject = locald)
    {
      try
      {
        ((gb)eb()).b((ga)localObject, paramString, this.Gz.fP(), this.Gz.fO());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        d locald;
        fz.g("GamesClientImpl", "service died");
      }
      locald = new d(paramc);
    }
  }
  
  public void c(a.c<Achievements.LoadAchievementsResult> paramc, boolean paramBoolean)
  {
    try
    {
      ((gb)eb()).a(new f(paramc), paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public Bundle cY()
  {
    try
    {
      Bundle localBundle = ((gb)eb()).cY();
      if (localBundle != null) {
        localBundle.setClassLoader(fx.class.getClassLoader());
      }
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public void connect()
  {
    fm();
    super.connect();
  }
  
  public int d(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      int i = ((gb)eb()).b(paramArrayOfByte, paramString, null);
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public void d(a.c<TurnBasedMultiplayer.InitiateMatchResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).l(new bi(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void disconnect()
  {
    this.GA = false;
    if (isConnected()) {}
    try
    {
      gb localgb = (gb)eb();
      localgb.fH();
      localgb.n(this.GE);
      fG();
      super.disconnect();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        fz.g("GamesClientImpl", "Failed to notify client disconnect.");
      }
    }
  }
  
  public void e(View paramView)
  {
    this.Gz.f(paramView);
  }
  
  public void e(a.c<TurnBasedMultiplayer.InitiateMatchResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).m(new bi(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void f(a.c<TurnBasedMultiplayer.LeaveMatchResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).o(new bk(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public int fA()
  {
    try
    {
      int i = ((gb)eb()).fA();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return 4368;
  }
  
  public String fB()
  {
    try
    {
      String str = ((gb)eb()).fB();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public int fC()
  {
    try
    {
      int i = ((gb)eb()).fC();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return 2;
  }
  
  public Intent fD()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fD();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public int fE()
  {
    try
    {
      int i = ((gb)eb()).fE();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return 2;
  }
  
  public int fF()
  {
    try
    {
      int i = ((gb)eb()).fF();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return 2;
  }
  
  public void fH()
  {
    if (isConnected()) {}
    try
    {
      ((gb)eb()).fH();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public String fn()
  {
    try
    {
      String str = ((gb)eb()).fn();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public String fo()
  {
    try
    {
      String str = ((gb)eb()).fo();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  /* Error */
  public com.google.android.gms.games.Player fp()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 731	com/google/android/gms/internal/fx:bm	()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 242	com/google/android/gms/internal/fx:Gx	Lcom/google/android/gms/games/PlayerEntity;
    //   10: astore_2
    //   11: aload_2
    //   12: ifnonnull +51 -> 63
    //   15: new 733	com/google/android/gms/games/PlayerBuffer
    //   18: dup
    //   19: aload_0
    //   20: invokevirtual 138	com/google/android/gms/internal/fx:eb	()Landroid/os/IInterface;
    //   23: checkcast 140	com/google/android/gms/internal/gb
    //   26: invokeinterface 737 1 0
    //   31: invokespecial 738	com/google/android/gms/games/PlayerBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   34: astore_3
    //   35: aload_3
    //   36: invokevirtual 739	com/google/android/gms/games/PlayerBuffer:getCount	()I
    //   39: ifle +20 -> 59
    //   42: aload_0
    //   43: aload_3
    //   44: iconst_0
    //   45: invokevirtual 742	com/google/android/gms/games/PlayerBuffer:get	(I)Lcom/google/android/gms/games/Player;
    //   48: invokeinterface 745 1 0
    //   53: checkcast 747	com/google/android/gms/games/PlayerEntity
    //   56: putfield 242	com/google/android/gms/internal/fx:Gx	Lcom/google/android/gms/games/PlayerEntity;
    //   59: aload_3
    //   60: invokevirtual 748	com/google/android/gms/games/PlayerBuffer:close	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 242	com/google/android/gms/internal/fx:Gx	Lcom/google/android/gms/games/PlayerEntity;
    //   69: areturn
    //   70: astore 4
    //   72: aload_3
    //   73: invokevirtual 748	com/google/android/gms/games/PlayerBuffer:close	()V
    //   76: aload 4
    //   78: athrow
    //   79: astore 5
    //   81: ldc 146
    //   83: ldc_w 259
    //   86: invokestatic 262	com/google/android/gms/internal/fz:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: goto -26 -> 63
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	fx
    //   92	4	1	localObject1	Object
    //   10	2	2	localPlayerEntity	PlayerEntity
    //   34	39	3	localPlayerBuffer	PlayerBuffer
    //   70	7	4	localObject2	Object
    //   79	1	5	localRemoteException	RemoteException
    // Exception table:
    //   from	to	target	type
    //   35	59	70	finally
    //   15	35	79	android/os/RemoteException
    //   59	63	79	android/os/RemoteException
    //   72	79	79	android/os/RemoteException
    //   6	11	92	finally
    //   15	35	92	finally
    //   59	63	92	finally
    //   63	65	92	finally
    //   72	79	92	finally
    //   81	89	92	finally
    //   93	95	92	finally
  }
  
  /* Error */
  public com.google.android.gms.games.Game fq()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 731	com/google/android/gms/internal/fx:bm	()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 752	com/google/android/gms/internal/fx:Gy	Lcom/google/android/gms/games/GameEntity;
    //   10: astore_2
    //   11: aload_2
    //   12: ifnonnull +51 -> 63
    //   15: new 754	com/google/android/gms/games/GameBuffer
    //   18: dup
    //   19: aload_0
    //   20: invokevirtual 138	com/google/android/gms/internal/fx:eb	()Landroid/os/IInterface;
    //   23: checkcast 140	com/google/android/gms/internal/gb
    //   26: invokeinterface 757 1 0
    //   31: invokespecial 758	com/google/android/gms/games/GameBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   34: astore_3
    //   35: aload_3
    //   36: invokevirtual 759	com/google/android/gms/games/GameBuffer:getCount	()I
    //   39: ifle +20 -> 59
    //   42: aload_0
    //   43: aload_3
    //   44: iconst_0
    //   45: invokevirtual 762	com/google/android/gms/games/GameBuffer:get	(I)Lcom/google/android/gms/games/Game;
    //   48: invokeinterface 765 1 0
    //   53: checkcast 767	com/google/android/gms/games/GameEntity
    //   56: putfield 752	com/google/android/gms/internal/fx:Gy	Lcom/google/android/gms/games/GameEntity;
    //   59: aload_3
    //   60: invokevirtual 768	com/google/android/gms/games/GameBuffer:close	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 752	com/google/android/gms/internal/fx:Gy	Lcom/google/android/gms/games/GameEntity;
    //   69: areturn
    //   70: astore 4
    //   72: aload_3
    //   73: invokevirtual 768	com/google/android/gms/games/GameBuffer:close	()V
    //   76: aload 4
    //   78: athrow
    //   79: astore 5
    //   81: ldc 146
    //   83: ldc_w 259
    //   86: invokestatic 262	com/google/android/gms/internal/fz:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: goto -26 -> 63
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	fx
    //   92	4	1	localObject1	Object
    //   10	2	2	localGameEntity	GameEntity
    //   34	39	3	localGameBuffer	GameBuffer
    //   70	7	4	localObject2	Object
    //   79	1	5	localRemoteException	RemoteException
    // Exception table:
    //   from	to	target	type
    //   35	59	70	finally
    //   15	35	79	android/os/RemoteException
    //   59	63	79	android/os/RemoteException
    //   72	79	79	android/os/RemoteException
    //   6	11	92	finally
    //   15	35	92	finally
    //   59	63	92	finally
    //   63	65	92	finally
    //   72	79	92	finally
    //   81	89	92	finally
    //   93	95	92	finally
  }
  
  public Intent fr()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fr();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent fs()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fs();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent ft()
  {
    try
    {
      Intent localIntent = ((gb)eb()).ft();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent fu()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fu();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public void fv()
  {
    try
    {
      ((gb)eb()).o(this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void fw()
  {
    try
    {
      ((gb)eb()).p(this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void fx()
  {
    try
    {
      ((gb)eb()).q(this.GE);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public Intent fy()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fy();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public Intent fz()
  {
    try
    {
      Intent localIntent = ((gb)eb()).fz();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public void g(a.c<GamesMetadata.LoadGamesResult> paramc)
  {
    try
    {
      ((gb)eb()).d(new j(paramc));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void g(a.c<TurnBasedMultiplayer.CancelMatchResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).n(new bg(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void h(a.c<TurnBasedMultiplayer.LoadMatchResult> paramc, String paramString)
  {
    try
    {
      ((gb)eb()).p(new bm(paramc), paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public RealTimeSocket i(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (!ParticipantUtils.aE(paramString2))) {
      throw new IllegalArgumentException("Bad participant ID");
    }
    RealTimeSocket localRealTimeSocket = (RealTimeSocket)this.Gw.get(paramString2);
    if ((localRealTimeSocket == null) || (localRealTimeSocket.isClosed())) {
      localRealTimeSocket = aw(paramString2);
    }
    return localRealTimeSocket;
  }
  
  public void l(String paramString, int paramInt)
  {
    try
    {
      ((gb)eb()).l(paramString, paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void m(String paramString, int paramInt)
  {
    try
    {
      ((gb)eb()).m(paramString, paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      fz.g("GamesClientImpl", "service died");
    }
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (this.GA)
    {
      this.Gz.fN();
      this.GA = false;
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    this.GA = false;
  }
  
  public void onConnectionSuspended(int paramInt) {}
  
  abstract class a
    extends fx.c
  {
    private final ArrayList<String> GI = new ArrayList();
    
    a(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
      int i = 0;
      int j = paramArrayOfString.length;
      while (i < j)
      {
        this.GI.add(paramArrayOfString[i]);
        i++;
      }
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
    {
      a(paramRoomStatusUpdateListener, paramRoom, this.GI);
    }
    
    protected abstract void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList);
  }
  
  final class aa
    extends eh<gb>.b<RoomStatusUpdateListener>
  {
    private final String GZ;
    
    aa(RoomStatusUpdateListener paramRoomStatusUpdateListener, String paramString)
    {
      super(paramRoomStatusUpdateListener);
      this.GZ = paramString;
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener)
    {
      if (paramRoomStatusUpdateListener != null) {
        paramRoomStatusUpdateListener.onP2PConnected(this.GZ);
      }
    }
    
    protected void cP() {}
  }
  
  final class ab
    extends eh<gb>.b<RoomStatusUpdateListener>
  {
    private final String GZ;
    
    ab(RoomStatusUpdateListener paramRoomStatusUpdateListener, String paramString)
    {
      super(paramRoomStatusUpdateListener);
      this.GZ = paramString;
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener)
    {
      if (paramRoomStatusUpdateListener != null) {
        paramRoomStatusUpdateListener.onP2PDisconnected(this.GZ);
      }
    }
    
    protected void cP() {}
  }
  
  final class ac
    extends fx.a
  {
    ac(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeersConnected(paramRoom, paramArrayList);
    }
  }
  
  final class ad
    extends fx.a
  {
    ad(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeerDeclined(paramRoom, paramArrayList);
    }
  }
  
  final class ae
    extends fx.a
  {
    ae(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeersDisconnected(paramRoom, paramArrayList);
    }
  }
  
  final class af
    extends fx.a
  {
    af(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeerInvitedToRoom(paramRoom, paramArrayList);
    }
  }
  
  final class ag
    extends fx.a
  {
    ag(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeerJoined(paramRoom, paramArrayList);
    }
  }
  
  final class ah
    extends fx.a
  {
    ah(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
    {
      paramRoomStatusUpdateListener.onPeerLeft(paramRoom, paramArrayList);
    }
  }
  
  final class ai
    extends fw
  {
    private final a.c<Leaderboards.LoadPlayerScoreResult> vj;
    
    ai()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void C(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.aj(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class aj
    extends eh<gb>.d<a.c<Leaderboards.LoadPlayerScoreResult>>
    implements Leaderboards.LoadPlayerScoreResult
  {
    private final d Ha;
    private final Status vl;
    
    /* Error */
    aj(DataHolder paramDataHolder)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 17	com/google/android/gms/internal/fx$aj:GJ	Lcom/google/android/gms/internal/fx;
      //   5: aload_0
      //   6: aload_1
      //   7: aload_2
      //   8: aload_3
      //   9: invokespecial 20	com/google/android/gms/internal/eh$d:<init>	(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
      //   12: aload_0
      //   13: new 22	com/google/android/gms/common/api/Status
      //   16: dup
      //   17: aload_3
      //   18: invokevirtual 28	com/google/android/gms/common/data/DataHolder:getStatusCode	()I
      //   21: invokespecial 31	com/google/android/gms/common/api/Status:<init>	(I)V
      //   24: putfield 33	com/google/android/gms/internal/fx$aj:vl	Lcom/google/android/gms/common/api/Status;
      //   27: new 35	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer
      //   30: dup
      //   31: aload_3
      //   32: invokespecial 38	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
      //   35: astore 4
      //   37: aload 4
      //   39: invokevirtual 41	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:getCount	()I
      //   42: ifle +27 -> 69
      //   45: aload_0
      //   46: aload 4
      //   48: iconst_0
      //   49: invokevirtual 45	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:get	(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
      //   52: invokeinterface 51 1 0
      //   57: checkcast 53	com/google/android/gms/games/leaderboard/d
      //   60: putfield 55	com/google/android/gms/internal/fx$aj:Ha	Lcom/google/android/gms/games/leaderboard/d;
      //   63: aload 4
      //   65: invokevirtual 59	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:close	()V
      //   68: return
      //   69: aload_0
      //   70: aconst_null
      //   71: putfield 55	com/google/android/gms/internal/fx$aj:Ha	Lcom/google/android/gms/games/leaderboard/d;
      //   74: goto -11 -> 63
      //   77: astore 5
      //   79: aload 4
      //   81: invokevirtual 59	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:close	()V
      //   84: aload 5
      //   86: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	87	0	this	aj
      //   0	87	1	this$1	fx
      //   0	87	2	paramDataHolder	DataHolder
      //   8	24	3	localDataHolder	DataHolder
      //   35	45	4	localLeaderboardScoreBuffer	LeaderboardScoreBuffer
      //   77	8	5	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   37	63	77	finally
      //   69	74	77	finally
    }
    
    protected void a(a.c<Leaderboards.LoadPlayerScoreResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public LeaderboardScore getScore()
    {
      return this.Ha;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
  }
  
  final class ak
    extends fw
  {
    private final a.c<Players.LoadPlayersResult> vj;
    
    ak()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void e(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.al(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class al
    extends fx.av<a.c<Players.LoadPlayersResult>>
    implements Players.LoadPlayersResult
  {
    private final PlayerBuffer Hb;
    
    al(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.Hb = new PlayerBuffer(localDataHolder);
    }
    
    protected void a(a.c<Players.LoadPlayersResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public PlayerBuffer getPlayers()
    {
      return this.Hb;
    }
  }
  
  final class am
    extends eh<gb>.b<RealTimeMultiplayer.ReliableMessageSentCallback>
  {
    private final String Hc;
    private final int Hd;
    private final int yJ;
    
    am(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback, int paramInt1, int paramInt2, String paramString)
    {
      super(paramReliableMessageSentCallback);
      this.yJ = paramInt1;
      this.Hd = paramInt2;
      this.Hc = paramString;
    }
    
    public void a(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback)
    {
      if (paramReliableMessageSentCallback != null) {
        paramReliableMessageSentCallback.onRealTimeMessageSent(this.yJ, this.Hd, this.Hc);
      }
    }
    
    protected void cP() {}
  }
  
  final class an
    extends fw
  {
    final RealTimeMultiplayer.ReliableMessageSentCallback He;
    
    public an(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback)
    {
      this.He = paramReliableMessageSentCallback;
    }
    
    public void b(int paramInt1, int paramInt2, String paramString)
    {
      fx.this.a(new fx.am(fx.this, this.He, paramInt1, paramInt2, paramString));
    }
  }
  
  final class ao
    extends fw
  {
    private final OnRequestReceivedListener Hf;
    
    ao(OnRequestReceivedListener paramOnRequestReceivedListener)
    {
      this.Hf = paramOnRequestReceivedListener;
    }
    
    public void m(DataHolder paramDataHolder)
    {
      GameRequestBuffer localGameRequestBuffer = new GameRequestBuffer(paramDataHolder);
      try
      {
        int i = localGameRequestBuffer.getCount();
        GameRequest localGameRequest = null;
        if (i > 0) {
          localGameRequest = (GameRequest)((GameRequest)localGameRequestBuffer.get(0)).freeze();
        }
        localGameRequestBuffer.close();
        if (localGameRequest != null) {
          fx.this.a(new fx.ap(fx.this, this.Hf, localGameRequest));
        }
        return;
      }
      finally
      {
        localGameRequestBuffer.close();
      }
    }
    
    public void onRequestRemoved(String paramString)
    {
      fx.this.a(new fx.aq(fx.this, this.Hf, paramString));
    }
  }
  
  final class ap
    extends eh<gb>.b<OnRequestReceivedListener>
  {
    private final GameRequest Hg;
    
    ap(OnRequestReceivedListener paramOnRequestReceivedListener, GameRequest paramGameRequest)
    {
      super(paramOnRequestReceivedListener);
      this.Hg = paramGameRequest;
    }
    
    protected void b(OnRequestReceivedListener paramOnRequestReceivedListener)
    {
      paramOnRequestReceivedListener.onRequestReceived(this.Hg);
    }
    
    protected void cP() {}
  }
  
  final class aq
    extends eh<gb>.b<OnRequestReceivedListener>
  {
    private final String Hh;
    
    aq(OnRequestReceivedListener paramOnRequestReceivedListener, String paramString)
    {
      super(paramOnRequestReceivedListener);
      this.Hh = paramString;
    }
    
    protected void b(OnRequestReceivedListener paramOnRequestReceivedListener)
    {
      paramOnRequestReceivedListener.onRequestRemoved(this.Hh);
    }
    
    protected void cP() {}
  }
  
  final class ar
    extends fw
  {
    private final a.c<Requests.LoadRequestsResult> Hi;
    
    public ar()
    {
      Object localObject;
      this.Hi = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void b(int paramInt, Bundle paramBundle)
    {
      paramBundle.setClassLoader(getClass().getClassLoader());
      Status localStatus = new Status(paramInt);
      fx.this.a(new fx.as(fx.this, this.Hi, localStatus, paramBundle));
    }
  }
  
  final class as
    extends eh<gb>.b<a.c<Requests.LoadRequestsResult>>
    implements Requests.LoadRequestsResult
  {
    private final Bundle Hj;
    private final Status vl;
    
    as(Status paramStatus, Bundle paramBundle)
    {
      super(paramStatus);
      this.vl = paramBundle;
      Object localObject;
      this.Hj = localObject;
    }
    
    protected void c(a.c<Requests.LoadRequestsResult> paramc)
    {
      paramc.b(this);
    }
    
    protected void cP()
    {
      release();
    }
    
    public GameRequestBuffer getRequests(int paramInt)
    {
      String str = gs.aW(paramInt);
      if (!this.Hj.containsKey(str)) {
        return null;
      }
      return new GameRequestBuffer((DataHolder)this.Hj.get(str));
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
    
    public void release()
    {
      Iterator localIterator = this.Hj.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        DataHolder localDataHolder = (DataHolder)this.Hj.getParcelable(str);
        if (localDataHolder != null) {
          localDataHolder.close();
        }
      }
    }
  }
  
  final class at
    extends fw
  {
    private final a.c<Requests.UpdateRequestsResult> Hk;
    
    public at()
    {
      Object localObject;
      this.Hk = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void D(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.au(fx.this, this.Hk, paramDataHolder));
    }
  }
  
  final class au
    extends fx.av<a.c<Requests.UpdateRequestsResult>>
    implements Requests.UpdateRequestsResult
  {
    private final hb Hl;
    
    au(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.Hl = hb.H(localDataHolder);
    }
    
    protected void a(a.c<Requests.UpdateRequestsResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public Set<String> getRequestIds()
    {
      return this.Hl.getRequestIds();
    }
    
    public int getRequestOutcome(String paramString)
    {
      return this.Hl.getRequestOutcome(paramString);
    }
  }
  
  abstract class av<R extends a.c<?>>
    extends eh<gb>.d<R>
    implements Releasable, Result
  {
    final Status vl;
    final DataHolder zU;
    
    public av(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.vl = new Status(localDataHolder.getStatusCode());
      this.zU = localDataHolder;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
    
    public void release()
    {
      if (this.zU != null) {
        this.zU.close();
      }
    }
  }
  
  final class aw
    extends fx.c
  {
    aw(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
    {
      paramRoomStatusUpdateListener.onRoomAutoMatching(paramRoom);
    }
  }
  
  final class ax
    extends fw
  {
    private final RoomUpdateListener Hm;
    private final RoomStatusUpdateListener Hn;
    private final RealTimeMessageReceivedListener Ho;
    
    public ax(RoomUpdateListener paramRoomUpdateListener)
    {
      this.Hm = ((RoomUpdateListener)er.b(paramRoomUpdateListener, "Callbacks must not be null"));
      this.Hn = null;
      this.Ho = null;
    }
    
    public ax(RoomUpdateListener paramRoomUpdateListener, RoomStatusUpdateListener paramRoomStatusUpdateListener, RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener)
    {
      this.Hm = ((RoomUpdateListener)er.b(paramRoomUpdateListener, "Callbacks must not be null"));
      this.Hn = paramRoomStatusUpdateListener;
      this.Ho = paramRealTimeMessageReceivedListener;
    }
    
    public void a(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.af(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void b(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.ag(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void c(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.ah(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void d(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.ad(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void e(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.ac(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void f(DataHolder paramDataHolder, String[] paramArrayOfString)
    {
      fx.this.a(new fx.ae(fx.this, this.Hn, paramDataHolder, paramArrayOfString));
    }
    
    public void onLeftRoom(int paramInt, String paramString)
    {
      fx.this.a(new fx.v(fx.this, this.Hm, paramInt, paramString));
    }
    
    public void onP2PConnected(String paramString)
    {
      fx.this.a(new fx.aa(fx.this, this.Hn, paramString));
    }
    
    public void onP2PDisconnected(String paramString)
    {
      fx.this.a(new fx.ab(fx.this, this.Hn, paramString));
    }
    
    public void onRealTimeMessageReceived(RealTimeMessage paramRealTimeMessage)
    {
      fx.this.a(new fx.z(fx.this, this.Ho, paramRealTimeMessage));
    }
    
    public void s(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.ba(fx.this, this.Hm, paramDataHolder));
    }
    
    public void t(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.q(fx.this, this.Hm, paramDataHolder));
    }
    
    public void u(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.az(fx.this, this.Hn, paramDataHolder));
    }
    
    public void v(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.aw(fx.this, this.Hn, paramDataHolder));
    }
    
    public void w(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.ay(fx.this, this.Hm, paramDataHolder));
    }
    
    public void x(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.h(fx.this, this.Hn, paramDataHolder));
    }
    
    public void y(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.i(fx.this, this.Hn, paramDataHolder));
    }
  }
  
  final class ay
    extends fx.b
  {
    ay(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomUpdateListener, paramDataHolder);
    }
    
    public void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt)
    {
      paramRoomUpdateListener.onRoomConnected(paramInt, paramRoom);
    }
  }
  
  final class az
    extends fx.c
  {
    az(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
    {
      paramRoomStatusUpdateListener.onRoomConnecting(paramRoom);
    }
  }
  
  abstract class b
    extends eh<gb>.d<RoomUpdateListener>
  {
    b(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomUpdateListener, paramDataHolder);
    }
    
    protected void a(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
    {
      a(paramRoomUpdateListener, fx.a(fx.this, paramDataHolder), paramDataHolder.getStatusCode());
    }
    
    protected abstract void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt);
  }
  
  final class ba
    extends fx.b
  {
    public ba(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomUpdateListener, paramDataHolder);
    }
    
    public void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt)
    {
      paramRoomUpdateListener.onRoomCreated(paramInt, paramRoom);
    }
  }
  
  final class bb
    extends fw
  {
    private final a.c<Status> vj;
    
    public bb()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void cM()
    {
      Status localStatus = new Status(0);
      fx.this.a(new fx.bc(fx.this, this.vj, localStatus));
    }
  }
  
  final class bc
    extends eh<gb>.b<a.c<Status>>
  {
    private final Status vl;
    
    public bc(Status paramStatus)
    {
      super(paramStatus);
      Object localObject;
      this.vl = localObject;
    }
    
    public void c(a.c<Status> paramc)
    {
      paramc.b(this.vl);
    }
    
    protected void cP() {}
  }
  
  final class bd
    extends fw
  {
    private final a.c<Leaderboards.SubmitScoreResult> vj;
    
    public bd()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void d(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.be(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class be
    extends fx.av<a.c<Leaderboards.SubmitScoreResult>>
    implements Leaderboards.SubmitScoreResult
  {
    private final ScoreSubmissionData Hp;
    
    public be(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      try
      {
        this.Hp = new ScoreSubmissionData(localDataHolder);
        return;
      }
      finally
      {
        localDataHolder.close();
      }
    }
    
    public void a(a.c<Leaderboards.SubmitScoreResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public ScoreSubmissionData getScoreData()
    {
      return this.Hp;
    }
  }
  
  abstract class bf<T extends a.c<?>>
    extends fx.av<T>
  {
    final TurnBasedMatch GX;
    
    /* Error */
    bf(DataHolder paramDataHolder)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 13	com/google/android/gms/internal/fx$bf:GJ	Lcom/google/android/gms/internal/fx;
      //   5: aload_0
      //   6: aload_1
      //   7: aload_2
      //   8: aload_3
      //   9: invokespecial 15	com/google/android/gms/internal/fx$av:<init>	(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
      //   12: new 17	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer
      //   15: dup
      //   16: aload_3
      //   17: invokespecial 20	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
      //   20: astore 4
      //   22: aload 4
      //   24: invokevirtual 24	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer:getCount	()I
      //   27: ifle +30 -> 57
      //   30: aload_0
      //   31: aload 4
      //   33: iconst_0
      //   34: invokevirtual 28	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer:get	(I)Ljava/lang/Object;
      //   37: checkcast 30	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch
      //   40: invokeinterface 34 1 0
      //   45: checkcast 30	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch
      //   48: putfield 36	com/google/android/gms/internal/fx$bf:GX	Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
      //   51: aload 4
      //   53: invokevirtual 40	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer:close	()V
      //   56: return
      //   57: aload_0
      //   58: aconst_null
      //   59: putfield 36	com/google/android/gms/internal/fx$bf:GX	Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
      //   62: goto -11 -> 51
      //   65: astore 5
      //   67: aload 4
      //   69: invokevirtual 40	com/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer:close	()V
      //   72: aload 5
      //   74: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	75	0	this	bf
      //   0	75	1	this$1	fx
      //   0	75	2	paramDataHolder	DataHolder
      //   8	9	3	localDataHolder	DataHolder
      //   20	48	4	localTurnBasedMatchBuffer	TurnBasedMatchBuffer
      //   65	8	5	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   22	51	65	finally
      //   57	62	65	finally
    }
    
    protected void a(T paramT, DataHolder paramDataHolder)
    {
      h(paramT);
    }
    
    public TurnBasedMatch getMatch()
    {
      return this.GX;
    }
    
    abstract void h(T paramT);
  }
  
  final class bg
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.CancelMatchResult> Hq;
    
    public bg()
    {
      Object localObject;
      this.Hq = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void f(int paramInt, String paramString)
    {
      Status localStatus = new Status(paramInt);
      fx.this.a(new fx.bh(fx.this, this.Hq, localStatus, paramString));
    }
  }
  
  final class bh
    extends eh<gb>.b<a.c<TurnBasedMultiplayer.CancelMatchResult>>
    implements TurnBasedMultiplayer.CancelMatchResult
  {
    private final String Hr;
    private final Status vl;
    
    bh(Status paramStatus, String paramString)
    {
      super(paramStatus);
      this.vl = paramString;
      Object localObject;
      this.Hr = localObject;
    }
    
    public void c(a.c<TurnBasedMultiplayer.CancelMatchResult> paramc)
    {
      paramc.b(this);
    }
    
    protected void cP() {}
    
    public String getMatchId()
    {
      return this.Hr;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
  }
  
  final class bi
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.InitiateMatchResult> Hs;
    
    public bi()
    {
      Object localObject;
      this.Hs = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void o(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.bj(fx.this, this.Hs, paramDataHolder));
    }
  }
  
  final class bj
    extends fx.bf<a.c<TurnBasedMultiplayer.InitiateMatchResult>>
    implements TurnBasedMultiplayer.InitiateMatchResult
  {
    bj(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
    }
    
    protected void h(a.c<TurnBasedMultiplayer.InitiateMatchResult> paramc)
    {
      paramc.b(this);
    }
  }
  
  final class bk
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.LeaveMatchResult> Ht;
    
    public bk()
    {
      Object localObject;
      this.Ht = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void q(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.bl(fx.this, this.Ht, paramDataHolder));
    }
  }
  
  final class bl
    extends fx.bf<a.c<TurnBasedMultiplayer.LeaveMatchResult>>
    implements TurnBasedMultiplayer.LeaveMatchResult
  {
    bl(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
    }
    
    protected void h(a.c<TurnBasedMultiplayer.LeaveMatchResult> paramc)
    {
      paramc.b(this);
    }
  }
  
  final class bm
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.LoadMatchResult> Hu;
    
    public bm()
    {
      Object localObject;
      this.Hu = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void n(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.bn(fx.this, this.Hu, paramDataHolder));
    }
  }
  
  final class bn
    extends fx.bf<a.c<TurnBasedMultiplayer.LoadMatchResult>>
    implements TurnBasedMultiplayer.LoadMatchResult
  {
    bn(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
    }
    
    protected void h(a.c<TurnBasedMultiplayer.LoadMatchResult> paramc)
    {
      paramc.b(this);
    }
  }
  
  final class bo
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.UpdateMatchResult> Hv;
    
    public bo()
    {
      Object localObject;
      this.Hv = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void p(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.bp(fx.this, this.Hv, paramDataHolder));
    }
  }
  
  final class bp
    extends fx.bf<a.c<TurnBasedMultiplayer.UpdateMatchResult>>
    implements TurnBasedMultiplayer.UpdateMatchResult
  {
    bp(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
    }
    
    protected void h(a.c<TurnBasedMultiplayer.UpdateMatchResult> paramc)
    {
      paramc.b(this);
    }
  }
  
  final class bq
    extends fw
  {
    private final a.c<TurnBasedMultiplayer.LoadMatchesResult> Hw;
    
    public bq()
    {
      Object localObject;
      this.Hw = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void a(int paramInt, Bundle paramBundle)
    {
      paramBundle.setClassLoader(getClass().getClassLoader());
      Status localStatus = new Status(paramInt);
      fx.this.a(new fx.br(fx.this, this.Hw, localStatus, paramBundle));
    }
  }
  
  final class br
    extends eh<gb>.b<a.c<TurnBasedMultiplayer.LoadMatchesResult>>
    implements TurnBasedMultiplayer.LoadMatchesResult
  {
    private final LoadMatchesResponse Hx;
    private final Status vl;
    
    br(Status paramStatus, Bundle paramBundle)
    {
      super(paramStatus);
      this.vl = paramBundle;
      Bundle localBundle;
      this.Hx = new LoadMatchesResponse(localBundle);
    }
    
    protected void c(a.c<TurnBasedMultiplayer.LoadMatchesResult> paramc)
    {
      paramc.b(this);
    }
    
    protected void cP() {}
    
    public LoadMatchesResponse getMatches()
    {
      return this.Hx;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
    
    public void release()
    {
      this.Hx.close();
    }
  }
  
  abstract class c
    extends eh<gb>.d<RoomStatusUpdateListener>
  {
    c(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
    }
    
    protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      a(paramRoomStatusUpdateListener, fx.a(fx.this, paramDataHolder));
    }
    
    protected abstract void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom);
  }
  
  final class d
    extends fw
  {
    private final a.c<Achievements.UpdateAchievementResult> vj;
    
    d()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void e(int paramInt, String paramString)
    {
      fx.this.a(new fx.e(fx.this, this.vj, paramInt, paramString));
    }
  }
  
  final class e
    extends eh<gb>.b<a.c<Achievements.UpdateAchievementResult>>
    implements Achievements.UpdateAchievementResult
  {
    private final String GK;
    private final Status vl;
    
    e(int paramInt, String paramString)
    {
      super(paramInt);
      this.vl = new Status(paramString);
      Object localObject;
      this.GK = localObject;
    }
    
    protected void c(a.c<Achievements.UpdateAchievementResult> paramc)
    {
      paramc.b(this);
    }
    
    protected void cP() {}
    
    public String getAchievementId()
    {
      return this.GK;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
  }
  
  final class f
    extends fw
  {
    private final a.c<Achievements.LoadAchievementsResult> vj;
    
    f()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void b(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.g(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class g
    extends fx.av<a.c<Achievements.LoadAchievementsResult>>
    implements Achievements.LoadAchievementsResult
  {
    private final AchievementBuffer GL;
    
    g(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.GL = new AchievementBuffer(localDataHolder);
    }
    
    protected void a(a.c<Achievements.LoadAchievementsResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public AchievementBuffer getAchievements()
    {
      return this.GL;
    }
  }
  
  final class h
    extends fx.c
  {
    h(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
    {
      paramRoomStatusUpdateListener.onConnectedToRoom(paramRoom);
    }
  }
  
  final class i
    extends fx.c
  {
    i(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomStatusUpdateListener, paramDataHolder);
    }
    
    public void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
    {
      paramRoomStatusUpdateListener.onDisconnectedFromRoom(paramRoom);
    }
  }
  
  final class j
    extends fw
  {
    private final a.c<GamesMetadata.LoadGamesResult> vj;
    
    j()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void g(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.k(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class k
    extends fx.av<a.c<GamesMetadata.LoadGamesResult>>
    implements GamesMetadata.LoadGamesResult
  {
    private final GameBuffer GM;
    
    k(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.GM = new GameBuffer(localDataHolder);
    }
    
    protected void a(a.c<GamesMetadata.LoadGamesResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public GameBuffer getGames()
    {
      return this.GM;
    }
  }
  
  final class l
    extends fw
  {
    private final OnInvitationReceivedListener GN;
    
    l(OnInvitationReceivedListener paramOnInvitationReceivedListener)
    {
      this.GN = paramOnInvitationReceivedListener;
    }
    
    public void l(DataHolder paramDataHolder)
    {
      InvitationBuffer localInvitationBuffer = new InvitationBuffer(paramDataHolder);
      try
      {
        int i = localInvitationBuffer.getCount();
        Invitation localInvitation = null;
        if (i > 0) {
          localInvitation = (Invitation)((Invitation)localInvitationBuffer.get(0)).freeze();
        }
        localInvitationBuffer.close();
        if (localInvitation != null) {
          fx.this.a(new fx.m(fx.this, this.GN, localInvitation));
        }
        return;
      }
      finally
      {
        localInvitationBuffer.close();
      }
    }
    
    public void onInvitationRemoved(String paramString)
    {
      fx.this.a(new fx.n(fx.this, this.GN, paramString));
    }
  }
  
  final class m
    extends eh<gb>.b<OnInvitationReceivedListener>
  {
    private final Invitation GO;
    
    m(OnInvitationReceivedListener paramOnInvitationReceivedListener, Invitation paramInvitation)
    {
      super(paramOnInvitationReceivedListener);
      this.GO = paramInvitation;
    }
    
    protected void b(OnInvitationReceivedListener paramOnInvitationReceivedListener)
    {
      paramOnInvitationReceivedListener.onInvitationReceived(this.GO);
    }
    
    protected void cP() {}
  }
  
  final class n
    extends eh<gb>.b<OnInvitationReceivedListener>
  {
    private final String GP;
    
    n(OnInvitationReceivedListener paramOnInvitationReceivedListener, String paramString)
    {
      super(paramOnInvitationReceivedListener);
      this.GP = paramString;
    }
    
    protected void b(OnInvitationReceivedListener paramOnInvitationReceivedListener)
    {
      paramOnInvitationReceivedListener.onInvitationRemoved(this.GP);
    }
    
    protected void cP() {}
  }
  
  final class o
    extends fw
  {
    private final a.c<Invitations.LoadInvitationsResult> vj;
    
    o()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void k(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.p(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class p
    extends fx.av<a.c<Invitations.LoadInvitationsResult>>
    implements Invitations.LoadInvitationsResult
  {
    private final InvitationBuffer GQ;
    
    p(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.GQ = new InvitationBuffer(localDataHolder);
    }
    
    protected void a(a.c<Invitations.LoadInvitationsResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public InvitationBuffer getInvitations()
    {
      return this.GQ;
    }
  }
  
  final class q
    extends fx.b
  {
    public q(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
    {
      super(paramRoomUpdateListener, paramDataHolder);
    }
    
    public void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt)
    {
      paramRoomUpdateListener.onJoinedRoom(paramInt, paramRoom);
    }
  }
  
  final class r
    extends fw
  {
    private final a.c<Leaderboards.LoadScoresResult> vj;
    
    r()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void a(DataHolder paramDataHolder1, DataHolder paramDataHolder2)
    {
      fx.this.a(new fx.s(fx.this, this.vj, paramDataHolder1, paramDataHolder2));
    }
  }
  
  final class s
    extends fx.av<a.c<Leaderboards.LoadScoresResult>>
    implements Leaderboards.LoadScoresResult
  {
    private final com.google.android.gms.games.leaderboard.a GR;
    private final LeaderboardScoreBuffer GS;
    
    /* Error */
    s(DataHolder paramDataHolder1, DataHolder paramDataHolder2)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 17	com/google/android/gms/internal/fx$s:GJ	Lcom/google/android/gms/internal/fx;
      //   5: aload_0
      //   6: aload_1
      //   7: aload_2
      //   8: aload 4
      //   10: invokespecial 20	com/google/android/gms/internal/fx$av:<init>	(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
      //   13: new 22	com/google/android/gms/games/leaderboard/LeaderboardBuffer
      //   16: dup
      //   17: aload_3
      //   18: invokespecial 25	com/google/android/gms/games/leaderboard/LeaderboardBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
      //   21: astore 5
      //   23: aload 5
      //   25: invokevirtual 29	com/google/android/gms/games/leaderboard/LeaderboardBuffer:getCount	()I
      //   28: ifle +43 -> 71
      //   31: aload_0
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 33	com/google/android/gms/games/leaderboard/LeaderboardBuffer:get	(I)Ljava/lang/Object;
      //   38: checkcast 35	com/google/android/gms/games/leaderboard/Leaderboard
      //   41: invokeinterface 39 1 0
      //   46: checkcast 41	com/google/android/gms/games/leaderboard/a
      //   49: putfield 43	com/google/android/gms/internal/fx$s:GR	Lcom/google/android/gms/games/leaderboard/a;
      //   52: aload 5
      //   54: invokevirtual 47	com/google/android/gms/games/leaderboard/LeaderboardBuffer:close	()V
      //   57: aload_0
      //   58: new 49	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer
      //   61: dup
      //   62: aload 4
      //   64: invokespecial 50	com/google/android/gms/games/leaderboard/LeaderboardScoreBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
      //   67: putfield 52	com/google/android/gms/internal/fx$s:GS	Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
      //   70: return
      //   71: aload_0
      //   72: aconst_null
      //   73: putfield 43	com/google/android/gms/internal/fx$s:GR	Lcom/google/android/gms/games/leaderboard/a;
      //   76: goto -24 -> 52
      //   79: astore 6
      //   81: aload 5
      //   83: invokevirtual 47	com/google/android/gms/games/leaderboard/LeaderboardBuffer:close	()V
      //   86: aload 6
      //   88: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	89	0	this	s
      //   0	89	1	this$1	fx
      //   0	89	2	paramDataHolder1	DataHolder
      //   0	89	3	paramDataHolder2	DataHolder
      //   8	55	4	localDataHolder	DataHolder
      //   21	61	5	localLeaderboardBuffer	LeaderboardBuffer
      //   79	8	6	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   23	52	79	finally
      //   71	76	79	finally
    }
    
    protected void a(a.c<Leaderboards.LoadScoresResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public Leaderboard getLeaderboard()
    {
      return this.GR;
    }
    
    public LeaderboardScoreBuffer getScores()
    {
      return this.GS;
    }
  }
  
  final class t
    extends fw
  {
    private final a.c<Leaderboards.LeaderboardMetadataResult> vj;
    
    t()
    {
      Object localObject;
      this.vj = ((a.c)er.b(localObject, "Holder must not be null"));
    }
    
    public void c(DataHolder paramDataHolder)
    {
      fx.this.a(new fx.u(fx.this, this.vj, paramDataHolder));
    }
  }
  
  final class u
    extends fx.av<a.c<Leaderboards.LeaderboardMetadataResult>>
    implements Leaderboards.LeaderboardMetadataResult
  {
    private final LeaderboardBuffer GT;
    
    u(DataHolder paramDataHolder)
    {
      super(paramDataHolder, localDataHolder);
      this.GT = new LeaderboardBuffer(localDataHolder);
    }
    
    protected void a(a.c<Leaderboards.LeaderboardMetadataResult> paramc, DataHolder paramDataHolder)
    {
      paramc.b(this);
    }
    
    public LeaderboardBuffer getLeaderboards()
    {
      return this.GT;
    }
  }
  
  final class v
    extends eh<gb>.b<RoomUpdateListener>
  {
    private final String GU;
    private final int yJ;
    
    v(RoomUpdateListener paramRoomUpdateListener, int paramInt, String paramString)
    {
      super(paramRoomUpdateListener);
      this.yJ = paramInt;
      this.GU = paramString;
    }
    
    public void a(RoomUpdateListener paramRoomUpdateListener)
    {
      paramRoomUpdateListener.onLeftRoom(this.yJ, this.GU);
    }
    
    protected void cP() {}
  }
  
  final class w
    extends eh<gb>.b<OnTurnBasedMatchUpdateReceivedListener>
  {
    private final String GV;
    
    w(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener, String paramString)
    {
      super(paramOnTurnBasedMatchUpdateReceivedListener);
      this.GV = paramString;
    }
    
    protected void b(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
    {
      paramOnTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(this.GV);
    }
    
    protected void cP() {}
  }
  
  final class x
    extends fw
  {
    private final OnTurnBasedMatchUpdateReceivedListener GW;
    
    x(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
    {
      this.GW = paramOnTurnBasedMatchUpdateReceivedListener;
    }
    
    public void onTurnBasedMatchRemoved(String paramString)
    {
      fx.this.a(new fx.w(fx.this, this.GW, paramString));
    }
    
    public void r(DataHolder paramDataHolder)
    {
      TurnBasedMatchBuffer localTurnBasedMatchBuffer = new TurnBasedMatchBuffer(paramDataHolder);
      try
      {
        int i = localTurnBasedMatchBuffer.getCount();
        TurnBasedMatch localTurnBasedMatch = null;
        if (i > 0) {
          localTurnBasedMatch = (TurnBasedMatch)((TurnBasedMatch)localTurnBasedMatchBuffer.get(0)).freeze();
        }
        localTurnBasedMatchBuffer.close();
        if (localTurnBasedMatch != null) {
          fx.this.a(new fx.y(fx.this, this.GW, localTurnBasedMatch));
        }
        return;
      }
      finally
      {
        localTurnBasedMatchBuffer.close();
      }
    }
  }
  
  final class y
    extends eh<gb>.b<OnTurnBasedMatchUpdateReceivedListener>
  {
    private final TurnBasedMatch GX;
    
    y(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener, TurnBasedMatch paramTurnBasedMatch)
    {
      super(paramOnTurnBasedMatchUpdateReceivedListener);
      this.GX = paramTurnBasedMatch;
    }
    
    protected void b(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
    {
      paramOnTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(this.GX);
    }
    
    protected void cP() {}
  }
  
  final class z
    extends eh<gb>.b<RealTimeMessageReceivedListener>
  {
    private final RealTimeMessage GY;
    
    z(RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener, RealTimeMessage paramRealTimeMessage)
    {
      super(paramRealTimeMessageReceivedListener);
      this.GY = paramRealTimeMessage;
    }
    
    public void a(RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener)
    {
      if (paramRealTimeMessageReceivedListener != null) {
        paramRealTimeMessageReceivedListener.onRealTimeMessageReceived(this.GY);
      }
    }
    
    protected void cP() {}
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fx
 * JD-Core Version:    0.7.0.1
 */