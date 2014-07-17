package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import java.util.Map;

class dq$1$3
  implements Runnable
{
  dq$1$3(dq.1 param1, String paramString1, String paramString2) {}
  
  public void run()
  {
    synchronized (dq.e(this.xY.xW))
    {
      Cast.MessageReceivedCallback localMessageReceivedCallback = (Cast.MessageReceivedCallback)dq.e(this.xY.xW).get(this.wp);
      if (localMessageReceivedCallback != null)
      {
        localMessageReceivedCallback.onMessageReceived(dq.f(this.xY.xW), this.wp, this.ya);
        return;
      }
    }
    du localdu = dq.dc();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.wp;
    localdu.b("Discarded message for unknown namespace '%s'", arrayOfObject);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dq.1.3
 * JD-Core Version:    0.7.0.1
 */