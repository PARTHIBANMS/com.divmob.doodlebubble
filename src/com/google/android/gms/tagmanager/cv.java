package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class cv
  extends aj
{
  private static final String ID = a.ad.toString();
  
  public cv()
  {
    super(ID, new String[0]);
  }
  
  public boolean iy()
  {
    return true;
  }
  
  public d.a u(Map<String, d.a> paramMap)
  {
    return di.r(Integer.valueOf(Build.VERSION.SDK_INT));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.cv
 * JD-Core Version:    0.7.0.1
 */