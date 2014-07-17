package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;

class gp$e$1
  implements TurnBasedMultiplayer.LoadMatchesResult
{
  gp$e$1(gp.e parame, Status paramStatus) {}
  
  public LoadMatchesResponse getMatches()
  {
    return new LoadMatchesResponse(new Bundle());
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gp.e.1
 * JD-Core Version:    0.7.0.1
 */