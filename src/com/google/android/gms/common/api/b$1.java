package com.google.android.gms.common.api;

import java.util.Set;
import java.util.concurrent.locks.Lock;

class b$1
  implements b.a
{
  b$1(b paramb) {}
  
  public void b(b.c paramc)
  {
    b.a(this.zN).lock();
    try
    {
      this.zN.zK.remove(paramc);
      return;
    }
    finally
    {
      b.a(this.zN).unlock();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.b.1
 * JD-Core Version:    0.7.0.1
 */