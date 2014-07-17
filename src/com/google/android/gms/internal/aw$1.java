package com.google.android.gms.internal;

import android.os.RemoteException;

class aw$1
  implements Runnable
{
  aw$1(aw paramaw, bc parambc) {}
  
  public void run()
  {
    try
    {
      this.mk.mN.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not destroy mediation adapter.", localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aw.1
 * JD-Core Version:    0.7.0.1
 */