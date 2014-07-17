package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

class gj$d$1
  implements Leaderboards.SubmitScoreResult
{
  gj$d$1(gj.d paramd, Status paramStatus) {}
  
  public ScoreSubmissionData getScoreData()
  {
    return new ScoreSubmissionData(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gj.d.1
 * JD-Core Version:    0.7.0.1
 */