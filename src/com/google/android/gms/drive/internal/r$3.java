package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.MetadataChangeSet;

class r$3
  extends r.f
{
  r$3(r paramr, MetadataChangeSet paramMetadataChangeSet)
  {
    super(paramr, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new UpdateMetadataRequest(this.DP.CS, this.DK.eS()), new r.d(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.r.3
 * JD-Core Version:    0.7.0.1
 */