package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.internal.dq;

class Cast$CastApi$a$1
  extends Cast.b
{
  Cast$CastApi$a$1(Cast.CastApi.a parama, String paramString1, String paramString2)
  {
    super(null);
  }
  
  protected void a(dq paramdq)
    throws RemoteException
  {
    try
    {
      paramdq.a(this.wp, this.wq, this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      x(2001);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      x(2001);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.1
 * JD-Core Version:    0.7.0.1
 */