package com.google.android.gms.internal;

import android.os.RemoteException;

class bj$4
  implements Runnable
{
  bj$4(bj parambj) {}
  
  public void run()
  {
    try
    {
      bj.a(this.mU).onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not call onAdClosed.", localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bj.4
 * JD-Core Version:    0.7.0.1
 */