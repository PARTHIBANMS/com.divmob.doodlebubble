package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;

class cy
  extends cx
{
  private static cy Xp;
  private static final Object ri = new Object();
  private Context Xf;
  private at Xg;
  private volatile ar Xh;
  private int Xi = 1800000;
  private boolean Xj = true;
  private boolean Xk = false;
  private boolean Xl = true;
  private au Xm = new cy.1(this);
  private bn Xn;
  private boolean Xo = false;
  private boolean connected = true;
  private Handler handler;
  
  private void bC()
  {
    this.Xn = new bn(this);
    this.Xn.o(this.Xf);
  }
  
  private void bD()
  {
    this.handler = new Handler(this.Xf.getMainLooper(), new cy.2(this));
    if (this.Xi > 0) {
      this.handler.sendMessageDelayed(this.handler.obtainMessage(1, ri), this.Xi);
    }
  }
  
  public static cy kh()
  {
    if (Xp == null) {
      Xp = new cy();
    }
    return Xp;
  }
  
  /* Error */
  void a(Context paramContext, ar paramar)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/google/android/gms/tagmanager/cy:Xf	Landroid/content/Context;
    //   6: astore 4
    //   8: aload 4
    //   10: ifnull +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 120	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   21: putfield 72	com/google/android/gms/tagmanager/cy:Xf	Landroid/content/Context;
    //   24: aload_0
    //   25: getfield 122	com/google/android/gms/tagmanager/cy:Xh	Lcom/google/android/gms/tagmanager/ar;
    //   28: ifnonnull -15 -> 13
    //   31: aload_0
    //   32: aload_2
    //   33: putfield 122	com/google/android/gms/tagmanager/cy:Xh	Lcom/google/android/gms/tagmanager/ar;
    //   36: goto -23 -> 13
    //   39: astore_3
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_3
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	cy
    //   0	44	1	paramContext	Context
    //   0	44	2	paramar	ar
    //   39	4	3	localObject	Object
    //   6	3	4	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	8	39	finally
    //   16	36	39	finally
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      try
      {
        if (this.Xo == paramBoolean1)
        {
          boolean bool = this.connected;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (this.Xi > 0)) {
          this.handler.removeMessages(1, ri);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (this.Xi > 0)) {
          this.handler.sendMessageDelayed(this.handler.obtainMessage(1, ri), this.Xi);
        }
        localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1) {
          break label153;
        }
        if (paramBoolean2) {
          break label146;
        }
      }
      finally {}
      bh.v(str);
      this.Xo = paramBoolean1;
      this.connected = paramBoolean2;
      continue;
      label146:
      String str = "terminated.";
      continue;
      label153:
      str = "initiated.";
    }
  }
  
  void bF()
  {
    try
    {
      if ((!this.Xo) && (this.connected) && (this.Xi > 0))
      {
        this.handler.removeMessages(1, ri);
        this.handler.sendMessage(this.handler.obtainMessage(1, ri));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public void bp()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 45	com/google/android/gms/tagmanager/cy:Xk	Z
    //   6: ifne +16 -> 22
    //   9: ldc 158
    //   11: invokestatic 146	com/google/android/gms/tagmanager/bh:v	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 43	com/google/android/gms/tagmanager/cy:Xj	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 122	com/google/android/gms/tagmanager/cy:Xh	Lcom/google/android/gms/tagmanager/ar;
    //   26: new 160	com/google/android/gms/tagmanager/cy$3
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 161	com/google/android/gms/tagmanager/cy$3:<init>	(Lcom/google/android/gms/tagmanager/cy;)V
    //   34: invokeinterface 166 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	cy
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
  
  at ki()
  {
    try
    {
      if (this.Xg != null) {
        break label50;
      }
      if (this.Xf == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    this.Xg = new cb(this.Xm, this.Xf);
    label50:
    if (this.handler == null) {
      bD();
    }
    this.Xk = true;
    if (this.Xj)
    {
      bp();
      this.Xj = false;
    }
    if ((this.Xn == null) && (this.Xl)) {
      bC();
    }
    at localat = this.Xg;
    return localat;
  }
  
  void q(boolean paramBoolean)
  {
    try
    {
      a(this.Xo, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.cy
 * JD-Core Version:    0.7.0.1
 */