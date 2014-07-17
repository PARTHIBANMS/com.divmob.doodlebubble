package com.google.android.gms.common.api;

import android.os.Bundle;
import android.os.Handler;
import java.util.concurrent.locks.Lock;

class b$2
  implements GoogleApiClient.ConnectionCallbacks
{
  b$2(b paramb) {}
  
  public void onConnected(Bundle paramBundle)
  {
    b.a(this.zN).lock();
    try
    {
      if (b.b(this.zN) == 1)
      {
        if (paramBundle != null) {
          b.c(this.zN).putAll(paramBundle);
        }
        b.d(this.zN);
      }
      return;
    }
    finally
    {
      b.a(this.zN).unlock();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    b.a(this.zN).lock();
    for (;;)
    {
      try
      {
        b.a(this.zN, paramInt);
        switch (paramInt)
        {
        default: 
          return;
        }
      }
      finally
      {
        b.a(this.zN).unlock();
      }
      this.zN.connect();
      continue;
      boolean bool = b.e(this.zN);
      if (bool)
      {
        b.a(this.zN).unlock();
        return;
      }
      b.b(this.zN, 2);
      this.zN.zG.sendMessageDelayed(this.zN.zG.obtainMessage(1), b.f(this.zN));
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.b.2
 * JD-Core Version:    0.7.0.1
 */