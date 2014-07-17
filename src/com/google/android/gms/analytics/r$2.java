package com.google.android.gms.analytics;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class r$2
  implements Handler.Callback
{
  r$2(r paramr) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (r.bG().equals(paramMessage.obj)))
    {
      u.bR().r(true);
      this.rv.dispatchLocalHits();
      u.bR().r(false);
      if ((r.b(this.rv) > 0) && (!r.c(this.rv))) {
        r.d(this.rv).sendMessageDelayed(r.d(this.rv).obtainMessage(1, r.bG()), 1000 * r.b(this.rv));
      }
    }
    return true;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.r.2
 * JD-Core Version:    0.7.0.1
 */