package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;

class gj$c$1
  implements Leaderboards.LoadScoresResult
{
  gj$c$1(gj.c paramc, Status paramStatus) {}
  
  public Leaderboard getLeaderboard()
  {
    return null;
  }
  
  public LeaderboardScoreBuffer getScores()
  {
    return new LeaderboardScoreBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gj.c.1
 * JD-Core Version:    0.7.0.1
 */