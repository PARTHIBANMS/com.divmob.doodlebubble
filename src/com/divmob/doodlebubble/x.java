package com.divmob.doodlebubble;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class x
{
  private static final String a = "worlds";
  private SharedPreferences b;
  
  public x(Context paramContext)
  {
    this.b = paramContext.getSharedPreferences("worlds", 0);
  }
  
  public int a(int paramInt)
  {
    return this.b.getInt("world_" + paramInt, 0);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i = a(paramInt1);
    if ((i >= -1 + com.divmob.common.a.a.c[paramInt1]) || (paramInt2 < i)) {
      return;
    }
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putInt("world_" + paramInt1, i + 1);
    localEditor.commit();
  }
  
  public boolean a()
  {
    return this.b.getBoolean("firstplay", true);
  }
  
  public void b()
  {
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putBoolean("firstplay", false);
    localEditor.commit();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.x
 * JD-Core Version:    0.7.0.1
 */