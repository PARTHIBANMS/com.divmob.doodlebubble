package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;

class gj$a$1
  implements Leaderboards.LeaderboardMetadataResult
{
  gj$a$1(gj.a parama, Status paramStatus) {}
  
  public LeaderboardBuffer getLeaderboards()
  {
    return new LeaderboardBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gj.a.1
 * JD-Core Version:    0.7.0.1
 */