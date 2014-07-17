package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;

class bj$5
  implements Runnable
{
  bj$5(bj parambj, AdRequest.ErrorCode paramErrorCode) {}
  
  public void run()
  {
    try
    {
      bj.a(this.mU).onAdFailedToLoad(bk.a(this.mV));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bj.5
 * JD-Core Version:    0.7.0.1
 */