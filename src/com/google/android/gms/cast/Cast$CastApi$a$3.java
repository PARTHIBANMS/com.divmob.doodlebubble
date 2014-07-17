package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.internal.dq;

class Cast$CastApi$a$3
  extends Cast.c
{
  Cast$CastApi$a$3(Cast.CastApi.a parama, String paramString, boolean paramBoolean)
  {
    super(null);
  }
  
  protected void a(dq paramdq)
    throws RemoteException
  {
    try
    {
      paramdq.a(this.ws, this.wt, this);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      x(2001);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.3
 * JD-Core Version:    0.7.0.1
 */