package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class c
  extends aj
{
  private static final String ID = com.google.android.gms.internal.a.G.toString();
  private final a TC;
  
  public c(Context paramContext)
  {
    this(a.E(paramContext));
  }
  
  c(a parama)
  {
    super(ID, new String[0]);
    this.TC = parama;
  }
  
  public boolean iy()
  {
    return false;
  }
  
  public d.a u(Map<String, d.a> paramMap)
  {
    return di.r(Boolean.valueOf(this.TC.isLimitAdTrackingEnabled()));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.c
 * JD-Core Version:    0.7.0.1
 */