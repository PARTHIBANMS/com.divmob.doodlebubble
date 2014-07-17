package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.MetadataChangeSet;

class q$2
  extends q.c
{
  q$2(q paramq, MetadataChangeSet paramMetadataChangeSet)
  {
    super(paramq, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new CreateFolderRequest(this.DM.getDriveId(), this.DK.eS()), new q.b(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.q.2
 * JD-Core Version:    0.7.0.1
 */