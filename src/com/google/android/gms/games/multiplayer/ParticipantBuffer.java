package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataBuffer;

public final class ParticipantBuffer
  extends DataBuffer<Participant>
{
  public Participant get(int paramInt)
  {
    return new d(this.zU, paramInt);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantBuffer
 * JD-Core Version:    0.7.0.1
 */