package com.divmob.doodlebubble.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Arrays;

public class a
{
  private static int a = 15;
  private static int b = 3;
  private SharedPreferences c;
  private int[] d;
  private int[] e;
  
  public a(Context paramContext)
  {
    this.c = paramContext.getSharedPreferences("Highscore", 0);
    this.d = new int[a];
    this.e = new int[a];
    for (int i = 0;; i++)
    {
      if (i >= a) {
        return;
      }
      this.d[i] = this.c.getInt("diff" + i, i / (a / b));
      this.e[i] = this.c.getInt("score" + i, 0);
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = -1;
    int k = 0;
    if (k >= this.d.length)
    {
      if (j < 0) {
        return false;
      }
    }
    else
    {
      if ((this.d[k] == paramInt1) && (paramInt2 > this.e[k]))
      {
        if (j < 0) {
          break label79;
        }
        if (this.e[j] <= this.e[k]) {}
      }
      label79:
      for (j = k;; j = k)
      {
        k++;
        break;
      }
    }
    this.e[j] = paramInt2;
    SharedPreferences.Editor localEditor = this.c.edit();
    for (;;)
    {
      if (i >= a)
      {
        localEditor.commit();
        return true;
      }
      localEditor.putInt("name" + i, this.d[i]);
      localEditor.putInt("score" + i, this.e[i]);
      i++;
    }
  }
  
  public int[] a(int paramInt)
  {
    int i = 0;
    int[] arrayOfInt = new int[a / b];
    int j = 0;
    for (;;)
    {
      if (i >= this.d.length)
      {
        Arrays.sort(arrayOfInt);
        return arrayOfInt;
      }
      if (this.d[i] == paramInt)
      {
        arrayOfInt[j] = this.e[i];
        j++;
      }
      i++;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.d.a
 * JD-Core Version:    0.7.0.1
 */