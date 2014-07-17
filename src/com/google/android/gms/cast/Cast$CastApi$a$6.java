package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.internal.dq;

class Cast$CastApi$a$6
  extends Cast.c
{
  Cast$CastApi$a$6(Cast.CastApi.a parama)
  {
    super(null);
  }
  
  protected void a(dq paramdq)
    throws RemoteException
  {
    try
    {
      paramdq.b(null, null, this);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      x(2001);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.6
 * JD-Core Version:    0.7.0.1
 */