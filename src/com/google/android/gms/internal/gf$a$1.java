package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;

class gf$a$1
  implements Achievements.LoadAchievementsResult
{
  gf$a$1(gf.a parama, Status paramStatus) {}
  
  public AchievementBuffer getAchievements()
  {
    return new AchievementBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gf.a.1
 * JD-Core Version:    0.7.0.1
 */