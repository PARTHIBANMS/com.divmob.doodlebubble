package com.google.android.gms.internal;

public final class ck
{
  private final Object mg = new Object();
  private int nX = -2;
  private dd ng;
  public final ar oA = new ck.2(this);
  private String ox;
  private String oy;
  public final ar oz = new ck.1(this);
  
  public ck(String paramString)
  {
    this.ox = paramString;
  }
  
  public String aI()
  {
    synchronized (this.mg)
    {
      while (this.oy == null)
      {
        int i = this.nX;
        if (i == -2) {
          try
          {
            this.mg.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            da.w("Ad request service was interrupted.");
            return null;
          }
        }
      }
      String str = this.oy;
      return str;
    }
  }
  
  public void b(dd paramdd)
  {
    synchronized (this.mg)
    {
      this.ng = paramdd;
      return;
    }
  }
  
  public int getErrorCode()
  {
    synchronized (this.mg)
    {
      int i = this.nX;
      return i;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ck
 * JD-Core Version:    0.7.0.1
 */