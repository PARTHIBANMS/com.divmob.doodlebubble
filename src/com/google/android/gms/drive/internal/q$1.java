package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;
import com.google.android.gms.drive.MetadataChangeSet;

class q$1
  extends m<DriveFolder.DriveFileResult>
{
  q$1(q paramq, Contents paramContents, MetadataChangeSet paramMetadataChangeSet) {}
  
  protected void a(n paramn)
    throws RemoteException
  {
    this.Dw.close();
    paramn.eT().a(new CreateFileRequest(this.DM.getDriveId(), this.DK.eS(), this.Dw), new q.a(this));
  }
  
  public DriveFolder.DriveFileResult p(Status paramStatus)
  {
    return new q.d(paramStatus, null);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.q.1
 * JD-Core Version:    0.7.0.1
 */