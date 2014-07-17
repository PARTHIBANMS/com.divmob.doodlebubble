package com.google.android.gms.internal;

import android.os.Handler;

public final class w
{
  private final Runnable kW;
  private z kX;
  private boolean kY = false;
  
  public w(v paramv)
  {
    this.kW = new w.1(this, paramv);
  }
  
  public void a(z paramz, long paramLong)
  {
    if (this.kY)
    {
      da.w("An ad refresh is already scheduled.");
      return;
    }
    da.u("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    this.kX = paramz;
    this.kY = true;
    cz.pT.postDelayed(this.kW, paramLong);
  }
  
  public void cancel()
  {
    cz.pT.removeCallbacks(this.kW);
  }
  
  public void d(z paramz)
  {
    a(paramz, 60000L);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.w
 * JD-Core Version:    0.7.0.1
 */