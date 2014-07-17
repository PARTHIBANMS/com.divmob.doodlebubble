package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.internal.dq;

class Cast$CastApi$a$7
  extends Cast.b
{
  Cast$CastApi$a$7(Cast.CastApi.a parama)
  {
    super(null);
  }
  
  protected void a(dq paramdq)
    throws RemoteException
  {
    try
    {
      paramdq.e(this);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      x(2001);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.7
 * JD-Core Version:    0.7.0.1
 */