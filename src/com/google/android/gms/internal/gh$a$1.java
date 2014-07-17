package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

class gh$a$1
  implements GamesMetadata.LoadGamesResult
{
  gh$a$1(gh.a parama, Status paramStatus) {}
  
  public GameBuffer getGames()
  {
    return new GameBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gh.a.1
 * JD-Core Version:    0.7.0.1
 */