package com.google.android.gms.internal;

public final class ba
  extends bh.a
{
  private bc.a mA;
  private az mB;
  private final Object mg = new Object();
  
  public void O()
  {
    synchronized (this.mg)
    {
      if (this.mB != null) {
        this.mB.U();
      }
      return;
    }
  }
  
  public void a(az paramaz)
  {
    synchronized (this.mg)
    {
      this.mB = paramaz;
      return;
    }
  }
  
  public void a(bc.a parama)
  {
    synchronized (this.mg)
    {
      this.mA = parama;
      return;
    }
  }
  
  public void onAdClosed()
  {
    synchronized (this.mg)
    {
      if (this.mB != null) {
        this.mB.V();
      }
      return;
    }
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    for (;;)
    {
      synchronized (this.mg)
      {
        if (this.mA != null)
        {
          if (paramInt == 3)
          {
            i = 1;
            this.mA.f(i);
            this.mA = null;
          }
        }
        else {
          return;
        }
      }
      int i = 2;
    }
  }
  
  public void onAdLeftApplication()
  {
    synchronized (this.mg)
    {
      if (this.mB != null) {
        this.mB.W();
      }
      return;
    }
  }
  
  public void onAdLoaded()
  {
    synchronized (this.mg)
    {
      if (this.mA != null)
      {
        this.mA.f(0);
        this.mA = null;
        return;
      }
      if (this.mB != null) {
        this.mB.Y();
      }
      return;
    }
  }
  
  public void onAdOpened()
  {
    synchronized (this.mg)
    {
      if (this.mB != null) {
        this.mB.X();
      }
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ba
 * JD-Core Version:    0.7.0.1
 */