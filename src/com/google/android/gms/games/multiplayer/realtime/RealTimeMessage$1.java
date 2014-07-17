package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RealTimeMessage$1
  implements Parcelable.Creator<RealTimeMessage>
{
  public RealTimeMessage ap(Parcel paramParcel)
  {
    return new RealTimeMessage(paramParcel, null);
  }
  
  public RealTimeMessage[] bc(int paramInt)
  {
    return new RealTimeMessage[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RealTimeMessage.1
 * JD-Core Version:    0.7.0.1
 */