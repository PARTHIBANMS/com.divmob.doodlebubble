package com.google.android.gms.drive.internal;

import android.os.RemoteException;

class r$1
  extends r.a
{
  r$1(r paramr)
  {
    super(paramr, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new GetMetadataRequest(this.DP.CS), new r.d(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.r.1
 * JD-Core Version:    0.7.0.1
 */