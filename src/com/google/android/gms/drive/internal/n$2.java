package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.DriveId;

class n$2
  extends l.j
{
  n$2(n paramn, DriveId paramDriveId, int paramInt, s params) {}
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new RemoveEventListenerRequest(this.DD, this.DE), this.DF, null, new ak(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.n.2
 * JD-Core Version:    0.7.0.1
 */