package com.google.android.gms.drive.internal;

import android.os.RemoteException;

class r$2
  extends r.c
{
  r$2(r paramr)
  {
    super(paramr, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new ListParentsRequest(this.DP.CS), new r.b(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.r.2
 * JD-Core Version:    0.7.0.1
 */