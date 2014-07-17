package com.google.android.gms.cast;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.dq;

class Cast$CastApi$a$9
  extends Cast.b
{
  Cast$CastApi$a$9(Cast.CastApi.a parama, String paramString)
  {
    super(null);
  }
  
  protected void a(dq paramdq)
    throws RemoteException
  {
    if (TextUtils.isEmpty(this.wu))
    {
      c(2001, "IllegalArgument: sessionId cannot be null or empty");
      return;
    }
    try
    {
      paramdq.a(this.wu, this);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      x(2001);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.9
 * JD-Core Version:    0.7.0.1
 */