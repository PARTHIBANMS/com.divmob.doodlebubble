package org.anddev.andengine.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import org.anddev.andengine.util.constants.Constants;

public class SimplePreferences
  implements Constants
{
  private static SharedPreferences.Editor EDITORINSTANCE;
  private static SharedPreferences INSTANCE;
  
  public static int getAccessCount(Context paramContext, String paramString)
  {
    return getInstance(paramContext).getInt(paramString, 0);
  }
  
  public static SharedPreferences.Editor getEditorInstance(Context paramContext)
  {
    if (EDITORINSTANCE == null) {
      EDITORINSTANCE = getInstance(paramContext).edit();
    }
    return EDITORINSTANCE;
  }
  
  public static SharedPreferences getInstance(Context paramContext)
  {
    if (INSTANCE == null) {
      INSTANCE = PreferenceManager.getDefaultSharedPreferences(paramContext);
    }
    return INSTANCE;
  }
  
  public static int incrementAccessCount(Context paramContext, String paramString)
  {
    return incrementAccessCount(paramContext, paramString, 1);
  }
  
  public static int incrementAccessCount(Context paramContext, String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = getInstance(paramContext);
    int i = paramInt + localSharedPreferences.getInt(paramString, 0);
    localSharedPreferences.edit().putInt(paramString, i).commit();
    return i;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.SimplePreferences
 * JD-Core Version:    0.7.0.1
 */