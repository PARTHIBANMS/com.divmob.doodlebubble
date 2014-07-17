package com.google.android.gms.games.achievement;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class AchievementBuffer
  extends DataBuffer<Achievement>
{
  public AchievementBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public Achievement get(int paramInt)
  {
    return new a(this.zU, paramInt);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.achievement.AchievementBuffer
 * JD-Core Version:    0.7.0.1
 */