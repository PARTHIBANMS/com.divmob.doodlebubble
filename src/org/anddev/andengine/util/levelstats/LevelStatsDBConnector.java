package org.anddev.andengine.util.levelstats;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.anddev.andengine.util.Callback;
import org.anddev.andengine.util.MathUtils;
import org.anddev.andengine.util.SimplePreferences;

public class LevelStatsDBConnector
{
  private static final String PREFERENCES_LEVELSTATSDBCONNECTOR_PLAYERID_ID = "preferences.levelstatsdbconnector.playerid";
  private final int mPlayerID;
  private final String mSecret;
  private final String mSubmitURL;
  
  public LevelStatsDBConnector(Context paramContext, String paramString1, String paramString2)
  {
    this.mSecret = paramString1;
    this.mSubmitURL = paramString2;
    int i = SimplePreferences.getInstance(paramContext).getInt("preferences.levelstatsdbconnector.playerid", -1);
    if (i != -1)
    {
      this.mPlayerID = i;
      return;
    }
    this.mPlayerID = MathUtils.random(1000000000, 2147483647);
    SimplePreferences.getEditorInstance(paramContext).putInt("preferences.levelstatsdbconnector.playerid", this.mPlayerID).commit();
  }
  
  public void submitAsync(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    submitAsync(paramInt1, paramBoolean, paramInt2, null);
  }
  
  public void submitAsync(int paramInt1, boolean paramBoolean, int paramInt2, Callback<Boolean> paramCallback)
  {
    new Thread(new LevelStatsDBConnector.1(this, paramInt1, paramBoolean, paramInt2, paramCallback)).start();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.levelstats.LevelStatsDBConnector
 * JD-Core Version:    0.7.0.1
 */