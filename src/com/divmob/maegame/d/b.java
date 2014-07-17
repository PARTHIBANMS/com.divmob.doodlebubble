package com.divmob.maegame.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class b
{
  private static final String a = "sndoptions";
  private static final String b = "sound";
  private static final String c = "music";
  private SharedPreferences d;
  
  public b(Context paramContext)
  {
    this.d = paramContext.getSharedPreferences("sndoptions", 0);
  }
  
  public boolean a()
  {
    return this.d.getBoolean("sound", true);
  }
  
  public boolean a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d.edit();
    localEditor.putBoolean("sound", paramBoolean);
    localEditor.commit();
    return true;
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    SharedPreferences.Editor localEditor = this.d.edit();
    localEditor.putBoolean("sound", paramBoolean1);
    localEditor.putBoolean("music", paramBoolean2);
    localEditor.commit();
    return true;
  }
  
  public boolean b()
  {
    return this.d.getBoolean("music", false);
  }
  
  public boolean b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d.edit();
    localEditor.putBoolean("music", paramBoolean);
    localEditor.commit();
    return true;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.d.b
 * JD-Core Version:    0.7.0.1
 */