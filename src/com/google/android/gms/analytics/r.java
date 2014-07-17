package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Handler;

class r
  extends af
{
  private static final Object ri = new Object();
  private static r ru;
  private Context mContext;
  private Handler mHandler;
  private d rj;
  private volatile f rk;
  private int rl = 1800;
  private boolean rm = true;
  private boolean rn;
  private String ro;
  private boolean rp = true;
  private boolean rq = true;
  private e rr = new r.1(this);
  private q rs;
  private boolean rt = false;
  
  public static r bB()
  {
    if (ru == null) {
      ru = new r();
    }
    return ru;
  }
  
  private void bC()
  {
    this.rs = new q(this);
    this.rs.o(this.mContext);
  }
  
  private void bD()
  {
    this.mHandler = new Handler(this.mContext.getMainLooper(), new r.2(this));
    if (this.rl > 0) {
      this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, ri), 1000 * this.rl);
    }
  }
  
  /* Error */
  void a(Context paramContext, f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 76	com/google/android/gms/analytics/r:mContext	Landroid/content/Context;
    //   6: astore 4
    //   8: aload 4
    //   10: ifnull +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 115	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   21: putfield 76	com/google/android/gms/analytics/r:mContext	Landroid/content/Context;
    //   24: aload_0
    //   25: getfield 117	com/google/android/gms/analytics/r:rk	Lcom/google/android/gms/analytics/f;
    //   28: ifnonnull -15 -> 13
    //   31: aload_0
    //   32: aload_2
    //   33: putfield 117	com/google/android/gms/analytics/r:rk	Lcom/google/android/gms/analytics/f;
    //   36: aload_0
    //   37: getfield 44	com/google/android/gms/analytics/r:rm	Z
    //   40: ifeq +12 -> 52
    //   43: aload_0
    //   44: invokevirtual 120	com/google/android/gms/analytics/r:dispatchLocalHits	()V
    //   47: aload_0
    //   48: iconst_0
    //   49: putfield 44	com/google/android/gms/analytics/r:rm	Z
    //   52: aload_0
    //   53: getfield 122	com/google/android/gms/analytics/r:rn	Z
    //   56: ifeq -43 -> 13
    //   59: aload_0
    //   60: invokevirtual 125	com/google/android/gms/analytics/r:br	()V
    //   63: aload_0
    //   64: iconst_0
    //   65: putfield 122	com/google/android/gms/analytics/r:rn	Z
    //   68: goto -55 -> 13
    //   71: astore_3
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_3
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	r
    //   0	76	1	paramContext	Context
    //   0	76	2	paramf	f
    //   71	4	3	localObject	Object
    //   6	3	4	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	8	71	finally
    //   16	52	71	finally
    //   52	68	71	finally
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      try
      {
        if (this.rt == paramBoolean1)
        {
          boolean bool = this.rp;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (this.rl > 0)) {
          this.mHandler.removeMessages(1, ri);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (this.rl > 0)) {
          this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, ri), 1000 * this.rl);
        }
        localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1) {
          break label157;
        }
        if (paramBoolean2) {
          break label150;
        }
      }
      finally {}
      aa.v(str);
      this.rt = paramBoolean1;
      this.rp = paramBoolean2;
      continue;
      label150:
      String str = "terminated.";
      continue;
      label157:
      str = "initiated.";
    }
  }
  
  d bE()
  {
    try
    {
      if (this.rj != null) {
        break label80;
      }
      if (this.mContext == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    this.rj = new ac(this.rr, this.mContext);
    if (this.ro != null)
    {
      this.rj.bq().A(this.ro);
      this.ro = null;
    }
    label80:
    if (this.mHandler == null) {
      bD();
    }
    if ((this.rs == null) && (this.rq)) {
      bC();
    }
    d locald = this.rj;
    return locald;
  }
  
  void bF()
  {
    try
    {
      if ((!this.rt) && (this.rp) && (this.rl > 0))
      {
        this.mHandler.removeMessages(1, ri);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, ri));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void br()
  {
    if (this.rk == null)
    {
      aa.v("setForceLocalDispatch() queued. It will be called once initialization is complete.");
      this.rn = true;
      return;
    }
    u.bR().a(u.a.tq);
    this.rk.br();
  }
  
  /* Error */
  void dispatchLocalHits()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 117	com/google/android/gms/analytics/r:rk	Lcom/google/android/gms/analytics/f;
    //   6: ifnonnull +16 -> 22
    //   9: ldc 212
    //   11: invokestatic 149	com/google/android/gms/analytics/aa:v	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 44	com/google/android/gms/analytics/r:rm	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: invokestatic 198	com/google/android/gms/analytics/u:bR	()Lcom/google/android/gms/analytics/u;
    //   25: getstatic 215	com/google/android/gms/analytics/u$a:td	Lcom/google/android/gms/analytics/u$a;
    //   28: invokevirtual 207	com/google/android/gms/analytics/u:a	(Lcom/google/android/gms/analytics/u$a;)V
    //   31: aload_0
    //   32: getfield 117	com/google/android/gms/analytics/r:rk	Lcom/google/android/gms/analytics/f;
    //   35: invokeinterface 218 1 0
    //   40: goto -21 -> 19
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	r
    //   43	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	43	finally
    //   22	40	43	finally
  }
  
  void q(boolean paramBoolean)
  {
    try
    {
      a(this.rt, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  void setLocalDispatchPeriod(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 97	com/google/android/gms/analytics/r:mHandler	Landroid/os/Handler;
    //   6: ifnonnull +16 -> 22
    //   9: ldc 226
    //   11: invokestatic 149	com/google/android/gms/analytics/aa:v	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iload_1
    //   16: putfield 42	com/google/android/gms/analytics/r:rl	I
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: invokestatic 198	com/google/android/gms/analytics/u:bR	()Lcom/google/android/gms/analytics/u;
    //   25: getstatic 229	com/google/android/gms/analytics/u$a:te	Lcom/google/android/gms/analytics/u$a;
    //   28: invokevirtual 207	com/google/android/gms/analytics/u:a	(Lcom/google/android/gms/analytics/u$a;)V
    //   31: aload_0
    //   32: getfield 57	com/google/android/gms/analytics/r:rt	Z
    //   35: ifne +28 -> 63
    //   38: aload_0
    //   39: getfield 46	com/google/android/gms/analytics/r:rp	Z
    //   42: ifeq +21 -> 63
    //   45: aload_0
    //   46: getfield 42	com/google/android/gms/analytics/r:rl	I
    //   49: ifle +14 -> 63
    //   52: aload_0
    //   53: getfield 97	com/google/android/gms/analytics/r:mHandler	Landroid/os/Handler;
    //   56: iconst_1
    //   57: getstatic 39	com/google/android/gms/analytics/r:ri	Ljava/lang/Object;
    //   60: invokevirtual 130	android/os/Handler:removeMessages	(ILjava/lang/Object;)V
    //   63: aload_0
    //   64: iload_1
    //   65: putfield 42	com/google/android/gms/analytics/r:rl	I
    //   68: iload_1
    //   69: ifle -50 -> 19
    //   72: aload_0
    //   73: getfield 57	com/google/android/gms/analytics/r:rt	Z
    //   76: ifne -57 -> 19
    //   79: aload_0
    //   80: getfield 46	com/google/android/gms/analytics/r:rp	Z
    //   83: ifeq -64 -> 19
    //   86: aload_0
    //   87: getfield 97	com/google/android/gms/analytics/r:mHandler	Landroid/os/Handler;
    //   90: aload_0
    //   91: getfield 97	com/google/android/gms/analytics/r:mHandler	Landroid/os/Handler;
    //   94: iconst_1
    //   95: getstatic 39	com/google/android/gms/analytics/r:ri	Ljava/lang/Object;
    //   98: invokevirtual 101	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   101: iload_1
    //   102: sipush 1000
    //   105: imul
    //   106: i2l
    //   107: invokevirtual 105	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   110: pop
    //   111: goto -92 -> 19
    //   114: astore_2
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_2
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	r
    //   0	119	1	paramInt	int
    //   114	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	114	finally
    //   22	63	114	finally
    //   63	68	114	finally
    //   72	111	114	finally
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.r
 * JD-Core Version:    0.7.0.1
 */