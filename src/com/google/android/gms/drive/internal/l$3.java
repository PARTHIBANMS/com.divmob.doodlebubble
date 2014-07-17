package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.Contents;

class l$3
  extends l.j
{
  l$3(l paraml, Contents paramContents) {}
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new CloseContentsRequest(this.Dw, false), new ak(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.l.3
 * JD-Core Version:    0.7.0.1
 */