package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

public class TurnBasedMatchEntityCreator
  implements Parcelable.Creator<TurnBasedMatchEntity>
{
  public static final int CONTENT_DESCRIPTION;
  
  static void a(TurnBasedMatchEntity paramTurnBasedMatchEntity, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.a(paramParcel, 1, paramTurnBasedMatchEntity.getGame(), paramInt, false);
    b.a(paramParcel, 2, paramTurnBasedMatchEntity.getMatchId(), false);
    b.a(paramParcel, 3, paramTurnBasedMatchEntity.getCreatorId(), false);
    b.a(paramParcel, 4, paramTurnBasedMatchEntity.getCreationTimestamp());
    b.a(paramParcel, 5, paramTurnBasedMatchEntity.getLastUpdaterId(), false);
    b.a(paramParcel, 6, paramTurnBasedMatchEntity.getLastUpdatedTimestamp());
    b.a(paramParcel, 7, paramTurnBasedMatchEntity.getPendingParticipantId(), false);
    b.c(paramParcel, 8, paramTurnBasedMatchEntity.getStatus());
    b.c(paramParcel, 10, paramTurnBasedMatchEntity.getVariant());
    b.c(paramParcel, 11, paramTurnBasedMatchEntity.getVersion());
    b.a(paramParcel, 12, paramTurnBasedMatchEntity.getData(), false);
    b.b(paramParcel, 13, paramTurnBasedMatchEntity.getParticipants(), false);
    b.a(paramParcel, 14, paramTurnBasedMatchEntity.getRematchId(), false);
    b.a(paramParcel, 15, paramTurnBasedMatchEntity.getPreviousMatchData(), false);
    b.a(paramParcel, 17, paramTurnBasedMatchEntity.getAutoMatchCriteria(), false);
    b.c(paramParcel, 16, paramTurnBasedMatchEntity.getMatchNumber());
    b.c(paramParcel, 1000, paramTurnBasedMatchEntity.getVersionCode());
    b.a(paramParcel, 19, paramTurnBasedMatchEntity.isLocallyModified());
    b.c(paramParcel, 18, paramTurnBasedMatchEntity.getTurnStatus());
    b.a(paramParcel, 21, paramTurnBasedMatchEntity.getDescriptionParticipantId(), false);
    b.a(paramParcel, 20, paramTurnBasedMatchEntity.getDescription(), false);
    b.D(paramParcel, i);
  }
  
  public TurnBasedMatchEntity createFromParcel(Parcel paramParcel)
  {
    int i = a.o(paramParcel);
    int j = 0;
    GameEntity localGameEntity = null;
    String str1 = null;
    String str2 = null;
    long l1 = 0L;
    String str3 = null;
    long l2 = 0L;
    String str4 = null;
    int k = 0;
    int m = 0;
    int n = 0;
    byte[] arrayOfByte1 = null;
    ArrayList localArrayList = null;
    String str5 = null;
    byte[] arrayOfByte2 = null;
    int i1 = 0;
    Bundle localBundle = null;
    int i2 = 0;
    boolean bool = false;
    String str6 = null;
    String str7 = null;
    while (paramParcel.dataPosition() < i)
    {
      int i3 = a.n(paramParcel);
      switch (a.S(i3))
      {
      default: 
        a.b(paramParcel, i3);
        break;
      case 1: 
        localGameEntity = (GameEntity)a.a(paramParcel, i3, GameEntity.CREATOR);
        break;
      case 2: 
        str1 = a.m(paramParcel, i3);
        break;
      case 3: 
        str2 = a.m(paramParcel, i3);
        break;
      case 4: 
        l1 = a.h(paramParcel, i3);
        break;
      case 5: 
        str3 = a.m(paramParcel, i3);
        break;
      case 6: 
        l2 = a.h(paramParcel, i3);
        break;
      case 7: 
        str4 = a.m(paramParcel, i3);
        break;
      case 8: 
        k = a.g(paramParcel, i3);
        break;
      case 10: 
        m = a.g(paramParcel, i3);
        break;
      case 11: 
        n = a.g(paramParcel, i3);
        break;
      case 12: 
        arrayOfByte1 = a.p(paramParcel, i3);
        break;
      case 13: 
        localArrayList = a.c(paramParcel, i3, ParticipantEntity.CREATOR);
        break;
      case 14: 
        str5 = a.m(paramParcel, i3);
        break;
      case 15: 
        arrayOfByte2 = a.p(paramParcel, i3);
        break;
      case 17: 
        localBundle = a.o(paramParcel, i3);
        break;
      case 16: 
        i1 = a.g(paramParcel, i3);
        break;
      case 1000: 
        j = a.g(paramParcel, i3);
        break;
      case 19: 
        bool = a.c(paramParcel, i3);
        break;
      case 18: 
        i2 = a.g(paramParcel, i3);
        break;
      case 21: 
        str7 = a.m(paramParcel, i3);
        break;
      case 20: 
        str6 = a.m(paramParcel, i3);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new TurnBasedMatchEntity(j, localGameEntity, str1, str2, l1, str3, l2, str4, k, m, n, arrayOfByte1, localArrayList, str5, arrayOfByte2, i1, localBundle, i2, bool, str6, str7);
  }
  
  public TurnBasedMatchEntity[] newArray(int paramInt)
  {
    return new TurnBasedMatchEntity[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntityCreator
 * JD-Core Version:    0.7.0.1
 */