package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class b$4
  implements GoogleApiClient.OnConnectionFailedListener
{
  b$4(b paramb, Api.b paramb1) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    b.a(this.zN).lock();
    try
    {
      if ((b.h(this.zN) == null) || (this.zO.getPriority() < b.i(this.zN)))
      {
        b.a(this.zN, paramConnectionResult);
        b.c(this.zN, this.zO.getPriority());
      }
      b.d(this.zN);
      return;
    }
    finally
    {
      b.a(this.zN).unlock();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.b.4
 * JD-Core Version:    0.7.0.1
 */