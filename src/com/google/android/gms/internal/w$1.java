package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class w$1
  implements Runnable
{
  private final WeakReference<v> kZ = new WeakReference(this.la);
  
  w$1(w paramw, v paramv) {}
  
  public void run()
  {
    w.a(this.lb, false);
    v localv = (v)this.kZ.get();
    if (localv != null) {
      localv.b(w.a(this.lb));
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.w.1
 * JD-Core Version:    0.7.0.1
 */