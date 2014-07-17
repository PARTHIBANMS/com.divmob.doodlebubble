package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players.LoadPlayersResult;

class gm$a$1
  implements Players.LoadPlayersResult
{
  gm$a$1(gm.a parama, Status paramStatus) {}
  
  public PlayerBuffer getPlayers()
  {
    return new PlayerBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gm.a.1
 * JD-Core Version:    0.7.0.1
 */