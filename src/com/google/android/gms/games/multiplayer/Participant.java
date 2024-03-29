package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Player;

public abstract interface Participant
  extends Parcelable, Freezable<Participant>
{
  public static final int STATUS_DECLINED = 3;
  public static final int STATUS_FINISHED = 5;
  public static final int STATUS_INVITED = 1;
  public static final int STATUS_JOINED = 2;
  public static final int STATUS_LEFT = 4;
  public static final int STATUS_NOT_INVITED_YET = 0;
  public static final int STATUS_UNRESPONSIVE = 6;
  
  public abstract String ge();
  
  public abstract int getCapabilities();
  
  public abstract String getDisplayName();
  
  public abstract void getDisplayName(CharArrayBuffer paramCharArrayBuffer);
  
  public abstract Uri getHiResImageUri();
  
  @Deprecated
  public abstract String getHiResImageUrl();
  
  public abstract Uri getIconImageUri();
  
  @Deprecated
  public abstract String getIconImageUrl();
  
  public abstract String getParticipantId();
  
  public abstract Player getPlayer();
  
  public abstract ParticipantResult getResult();
  
  public abstract int getStatus();
  
  public abstract boolean isConnectedToRoom();
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.Participant
 * JD-Core Version:    0.7.0.1
 */