package com.divmob.maegame.g;

import android.util.Log;

public class b
{
  private static final boolean a = true;
  
  public static void a(String paramString)
  {
    Log.i("Thong bao: ", paramString);
  }
  
  public static void a(int[] paramArrayOfInt)
  {
    String str = "Array: ";
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfInt.length)
      {
        Log.i("Thong bao: ", str);
        return;
      }
      str = str + paramArrayOfInt[i] + ", ";
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.b
 * JD-Core Version:    0.7.0.1
 */