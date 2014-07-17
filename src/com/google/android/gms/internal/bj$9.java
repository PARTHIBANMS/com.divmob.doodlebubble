package com.google.android.gms.internal;

import android.os.RemoteException;

class bj$9
  implements Runnable
{
  bj$9(bj parambj) {}
  
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
 * Qualified Name:     com.google.android.gms.internal.bj.9
 * JD-Core Version:    0.7.0.1
 */