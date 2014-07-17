package org.anddev.andengine.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.GregorianCalendar;
import org.anddev.andengine.util.constants.Constants;

public class BetaUtils
  implements Constants
{
  private static final String PREFERENCES_BETAUTILS_ID = "preferences.betautils.lastuse";
  
  public static boolean finishWhenExpired(Activity paramActivity, GregorianCalendar paramGregorianCalendar, int paramInt1, int paramInt2)
  {
    return finishWhenExpired(paramActivity, paramGregorianCalendar, paramInt1, paramInt2, null, null);
  }
  
  public static boolean finishWhenExpired(Activity paramActivity, GregorianCalendar paramGregorianCalendar, int paramInt1, int paramInt2, Intent paramIntent1, Intent paramIntent2)
  {
    SharedPreferences localSharedPreferences = SimplePreferences.getInstance(paramActivity);
    long l = Math.max(System.currentTimeMillis(), localSharedPreferences.getLong("preferences.betautils.lastuse", -1L));
    localSharedPreferences.edit().putLong("preferences.betautils.lastuse", l).commit();
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTimeInMillis(l);
    if (localGregorianCalendar.after(paramGregorianCalendar))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity).setTitle(paramInt1).setIcon(17301543).setMessage(paramInt2);
      localBuilder.setPositiveButton(17039370, new BetaUtils.1(paramIntent1, paramActivity));
      localBuilder.setNegativeButton(17039360, new BetaUtils.2(paramIntent2, paramActivity)).create().show();
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.BetaUtils
 * JD-Core Version:    0.7.0.1
 */