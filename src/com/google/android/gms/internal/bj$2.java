package com.google.android.gms.internal;

import android.os.RemoteException;

class bj$2
  implements Runnable
{
  bj$2(bj parambj) {}
  
  public void run()
  {
    try
    {
      bj.a(this.mU).onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not call onAdOpened.", localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bj.2
 * JD-Core Version:    0.7.0.1
 */