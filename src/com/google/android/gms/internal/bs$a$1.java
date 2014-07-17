package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class bs$a$1
  implements Runnable
{
  private final WeakReference<bs> nH = new WeakReference(this.nI);
  
  bs$a$1(bs.a parama, bs parambs) {}
  
  public void run()
  {
    bs localbs = (bs)this.nH.get();
    if ((!bs.a.a(this.nJ)) && (localbs != null))
    {
      localbs.az();
      this.nJ.aA();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bs.a.1
 * JD-Core Version:    0.7.0.1
 */