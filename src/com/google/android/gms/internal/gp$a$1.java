package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;

class gp$a$1
  implements TurnBasedMultiplayer.CancelMatchResult
{
  gp$a$1(gp.a parama, Status paramStatus) {}
  
  public String getMatchId()
  {
    return gp.a.a(this.Iy);
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gp.a.1
 * JD-Core Version:    0.7.0.1
 */