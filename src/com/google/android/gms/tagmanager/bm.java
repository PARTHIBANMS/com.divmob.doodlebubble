package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class bm
{
  int iA()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public bl ji()
  {
    if (iA() < 8) {
      return new av();
    }
    return new aw();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.bm
 * JD-Core Version:    0.7.0.1
 */