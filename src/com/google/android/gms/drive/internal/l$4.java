package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.DriveId;

class l$4
  extends l.d
{
  l$4(l paraml, String paramString)
  {
    super(paraml);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new GetMetadataRequest(DriveId.aq(this.Dx)), new l.b(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.l.4
 * JD-Core Version:    0.7.0.1
 */