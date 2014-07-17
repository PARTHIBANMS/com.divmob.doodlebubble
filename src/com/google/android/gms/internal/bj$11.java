package com.google.android.gms.internal;

import android.os.RemoteException;

class bj$11
  implements Runnable
{
  bj$11(bj parambj) {}
  
  public void run()
  {
    try
    {
      bj.a(this.mU).onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bj.11
 * JD-Core Version:    0.7.0.1
 */