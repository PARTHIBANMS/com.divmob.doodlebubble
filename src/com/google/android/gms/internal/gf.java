package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

public final class gf
  implements Achievements
{
  public Intent getAchievementsIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fs();
  }
  
  public void increment(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    paramGoogleApiClient.b(new gf.6(this, paramString, paramString, paramInt));
  }
  
  public PendingResult<Achievements.UpdateAchievementResult> incrementImmediate(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    return paramGoogleApiClient.b(new gf.7(this, paramString, paramString, paramInt));
  }
  
  public PendingResult<Achievements.LoadAchievementsResult> load(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new gf.1(this, paramBoolean));
  }
  
  public void reveal(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    paramGoogleApiClient.b(new gf.2(this, paramString, paramString));
  }
  
  public PendingResult<Achievements.UpdateAchievementResult> revealImmediate(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gf.3(this, paramString, paramString));
  }
  
  public void setSteps(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    paramGoogleApiClient.b(new gf.8(this, paramString, paramString, paramInt));
  }
  
  public PendingResult<Achievements.UpdateAchievementResult> setStepsImmediate(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    return paramGoogleApiClient.b(new gf.9(this, paramString, paramString, paramInt));
  }
  
  public void unlock(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    paramGoogleApiClient.b(new gf.4(this, paramString, paramString));
  }
  
  public PendingResult<Achievements.UpdateAchievementResult> unlockImmediate(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new gf.5(this, paramString, paramString));
  }
  
  private static abstract class a
    extends Games.a<Achievements.LoadAchievementsResult>
  {
    public Achievements.LoadAchievementsResult s(Status paramStatus)
    {
      return new gf.a.1(this, paramStatus);
    }
  }
  
  private static abstract class b
    extends Games.a<Achievements.UpdateAchievementResult>
  {
    private final String uS;
    
    public b(String paramString)
    {
      this.uS = paramString;
    }
    
    public Achievements.UpdateAchievementResult t(Status paramStatus)
    {
      return new gf.b.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gf
 * JD-Core Version:    0.7.0.1
 */