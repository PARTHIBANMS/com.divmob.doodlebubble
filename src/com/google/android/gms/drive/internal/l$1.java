package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.drive.query.Query;

class l$1
  extends l.i
{
  l$1(l paraml, Query paramQuery)
  {
    super(paraml);
  }
  
  protected void a(n paramn)
    throws RemoteException
  {
    paramn.eT().a(new QueryRequest(this.Du), new l.h(this));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.l.1
 * JD-Core Version:    0.7.0.1
 */