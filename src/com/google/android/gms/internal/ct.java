package com.google.android.gms.internal;

public abstract class ct
{
  private final Runnable kW = new ct.1(this);
  private volatile Thread pI;
  
  public abstract void aB();
  
  public final void cancel()
  {
    onStop();
    if (this.pI != null) {
      this.pI.interrupt();
    }
  }
  
  public abstract void onStop();
  
  public final void start()
  {
    cu.execute(this.kW);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ct
 * JD-Core Version:    0.7.0.1
 */