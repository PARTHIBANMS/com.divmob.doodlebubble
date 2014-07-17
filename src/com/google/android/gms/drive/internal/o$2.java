package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.Contents;

class o$2
  extends o.b
{
  o$2(o paramo, Contents paramContents)
  {
    super(paramo, null);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    this.Dw.close();
    paramn.eT().a(new CloseContentsRequest(this.Dw, true), new ak(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.o.2
 * JD-Core Version:    0.7.0.1
 */