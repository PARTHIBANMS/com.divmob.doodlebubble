package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

class o$1
  extends o.d
{
  o$1(o paramo, int paramInt, DriveFile.DownloadProgressListener paramDownloadProgressListener)
  {
    super(paramo, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new OpenContentsRequest(this.DJ.getDriveId(), this.DH), new o.c(this, this.DI));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.o.1
 * JD-Core Version:    0.7.0.1
 */