package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.MetadataChangeSet;

class o$3
  extends o.a
{
  o$3(o paramo, Contents paramContents, MetadataChangeSet paramMetadataChangeSet)
  {
    super(paramo, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    this.Dw.close();
    paramn.eT().a(new CloseContentsAndUpdateMetadataRequest(this.DJ.CS, this.DK.eS(), this.Dw), new ak(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.o.3
 * JD-Core Version:    0.7.0.1
 */