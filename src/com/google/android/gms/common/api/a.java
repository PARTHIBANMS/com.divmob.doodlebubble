package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.er;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class a
{
  public static abstract class a<R extends Result, A extends Api.a>
    implements PendingResult<R>, a.c<R>, b.c<A>
  {
    private final Api.b<A> zc;
    private final Object zd = new Object();
    private a.b<R> ze;
    private final CountDownLatch zf = new CountDownLatch(1);
    private final ArrayList<PendingResult.a> zg = new ArrayList();
    private ResultCallback<R> zh;
    private volatile R zi;
    private volatile boolean zj;
    private boolean zk;
    private boolean zl;
    private b.a zm;
    
    protected a()
    {
      this((Api.b)null);
    }
    
    protected a(Api.b<A> paramb)
    {
      this.zc = paramb;
    }
    
    private void a(RemoteException paramRemoteException)
    {
      a(d(new Status(8, paramRemoteException.getLocalizedMessage(), null)));
    }
    
    private R ds()
    {
      for (;;)
      {
        synchronized (this.zd)
        {
          if (!this.zj)
          {
            bool = true;
            er.a(bool, "Result has already been consumed.");
            er.a(isReady(), "Result is not ready.");
            Result localResult = this.zi;
            dt();
            return localResult;
          }
        }
        boolean bool = false;
      }
    }
    
    private void dv()
    {
      if ((this.zi != null) && ((this instanceof Releasable))) {}
      try
      {
        ((Releasable)this).release();
        return;
      }
      catch (Exception localException)
      {
        Log.w("GoogleApi", "Unable to release " + this, localException);
      }
    }
    
    protected abstract void a(A paramA)
      throws RemoteException;
    
    public final void a(R paramR)
    {
      boolean bool1 = true;
      for (;;)
      {
        synchronized (this.zd)
        {
          if (this.zl)
          {
            if ((paramR instanceof Releasable)) {
              ((Releasable)paramR).release();
            }
            return;
          }
          if (!isReady())
          {
            bool2 = bool1;
            er.a(bool2, "Results have already been set");
            if (this.zj) {
              break label97;
            }
            er.a(bool1, "Result has already been consumed");
            this.zi = paramR;
            if (!this.zk) {
              break;
            }
            dv();
            return;
          }
        }
        boolean bool2 = false;
        continue;
        label97:
        bool1 = false;
      }
      this.zf.countDown();
      Status localStatus = this.zi.getStatus();
      if (this.zh != null)
      {
        this.ze.dw();
        this.ze.a(this.zh, ds());
      }
      Iterator localIterator = this.zg.iterator();
      while (localIterator.hasNext()) {
        ((PendingResult.a)localIterator.next()).k(localStatus);
      }
      this.zg.clear();
    }
    
    public void a(b.a parama)
    {
      this.zm = parama;
    }
    
    public final R await()
    {
      if (!this.zj) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        er.a(bool1, "Results has already been consumed");
        boolean bool2;
        if (!isReady())
        {
          Looper localLooper1 = Looper.myLooper();
          Looper localLooper2 = Looper.getMainLooper();
          bool2 = false;
          if (localLooper1 == localLooper2) {}
        }
        else
        {
          bool2 = true;
        }
        er.a(bool2, "await must not be called on the UI thread");
        try
        {
          this.zf.await();
          er.a(isReady(), "Result is not ready.");
          return ds();
        }
        catch (InterruptedException localInterruptedException)
        {
          synchronized (this.zd)
          {
            a(d(Status.zR));
            this.zl = true;
          }
        }
      }
    }
    
    /* Error */
    public final R await(long paramLong, TimeUnit paramTimeUnit)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 85	com/google/android/gms/common/api/a$a:zj	Z
      //   4: ifne +104 -> 108
      //   7: iconst_1
      //   8: istore 4
      //   10: iload 4
      //   12: ldc 87
      //   14: invokestatic 92	com/google/android/gms/internal/er:a	(ZLjava/lang/Object;)V
      //   17: aload_0
      //   18: invokevirtual 96	com/google/android/gms/common/api/a$a:isReady	()Z
      //   21: ifne +23 -> 44
      //   24: invokestatic 204	android/os/Looper:myLooper	()Landroid/os/Looper;
      //   27: astore 11
      //   29: invokestatic 207	android/os/Looper:getMainLooper	()Landroid/os/Looper;
      //   32: astore 12
      //   34: iconst_0
      //   35: istore 5
      //   37: aload 11
      //   39: aload 12
      //   41: if_acmpeq +6 -> 47
      //   44: iconst_1
      //   45: istore 5
      //   47: iload 5
      //   49: ldc 209
      //   51: invokestatic 92	com/google/android/gms/internal/er:a	(ZLjava/lang/Object;)V
      //   54: aload_0
      //   55: getfield 54	com/google/android/gms/common/api/a$a:zf	Ljava/util/concurrent/CountDownLatch;
      //   58: lload_1
      //   59: aload_3
      //   60: invokevirtual 219	java/util/concurrent/CountDownLatch:await	(JLjava/util/concurrent/TimeUnit;)Z
      //   63: ifne +31 -> 94
      //   66: aload_0
      //   67: getfield 47	com/google/android/gms/common/api/a$a:zd	Ljava/lang/Object;
      //   70: astore 9
      //   72: aload 9
      //   74: monitorenter
      //   75: aload_0
      //   76: aload_0
      //   77: getstatic 222	com/google/android/gms/common/api/Status:zS	Lcom/google/android/gms/common/api/Status;
      //   80: invokevirtual 78	com/google/android/gms/common/api/a$a:d	(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
      //   83: invokevirtual 81	com/google/android/gms/common/api/a$a:a	(Lcom/google/android/gms/common/api/Result;)V
      //   86: aload_0
      //   87: iconst_1
      //   88: putfield 137	com/google/android/gms/common/api/a$a:zl	Z
      //   91: aload 9
      //   93: monitorexit
      //   94: aload_0
      //   95: invokevirtual 96	com/google/android/gms/common/api/a$a:isReady	()Z
      //   98: ldc 98
      //   100: invokestatic 92	com/google/android/gms/internal/er:a	(ZLjava/lang/Object;)V
      //   103: aload_0
      //   104: invokespecial 165	com/google/android/gms/common/api/a$a:ds	()Lcom/google/android/gms/common/api/Result;
      //   107: areturn
      //   108: iconst_0
      //   109: istore 4
      //   111: goto -101 -> 10
      //   114: astore 10
      //   116: aload 9
      //   118: monitorexit
      //   119: aload 10
      //   121: athrow
      //   122: astore 6
      //   124: aload_0
      //   125: getfield 47	com/google/android/gms/common/api/a$a:zd	Ljava/lang/Object;
      //   128: astore 7
      //   130: aload 7
      //   132: monitorenter
      //   133: aload_0
      //   134: aload_0
      //   135: getstatic 215	com/google/android/gms/common/api/Status:zR	Lcom/google/android/gms/common/api/Status;
      //   138: invokevirtual 78	com/google/android/gms/common/api/a$a:d	(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
      //   141: invokevirtual 81	com/google/android/gms/common/api/a$a:a	(Lcom/google/android/gms/common/api/Result;)V
      //   144: aload_0
      //   145: iconst_1
      //   146: putfield 137	com/google/android/gms/common/api/a$a:zl	Z
      //   149: aload 7
      //   151: monitorexit
      //   152: goto -58 -> 94
      //   155: astore 8
      //   157: aload 7
      //   159: monitorexit
      //   160: aload 8
      //   162: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	163	0	this	a
      //   0	163	1	paramLong	long
      //   0	163	3	paramTimeUnit	TimeUnit
      //   8	102	4	bool1	boolean
      //   35	13	5	bool2	boolean
      //   122	1	6	localInterruptedException	InterruptedException
      //   155	6	8	localObject2	Object
      //   114	6	10	localObject4	Object
      //   27	11	11	localLooper1	Looper
      //   32	8	12	localLooper2	Looper
      // Exception table:
      //   from	to	target	type
      //   75	94	114	finally
      //   116	119	114	finally
      //   54	75	122	java/lang/InterruptedException
      //   119	122	122	java/lang/InterruptedException
      //   133	152	155	finally
      //   157	160	155	finally
    }
    
    public final void b(A paramA)
      throws DeadObjectException
    {
      this.ze = new a.b(paramA.getLooper());
      try
      {
        a(paramA);
        return;
      }
      catch (DeadObjectException localDeadObjectException)
      {
        a(localDeadObjectException);
        throw localDeadObjectException;
      }
      catch (RemoteException localRemoteException)
      {
        a(localRemoteException);
      }
    }
    
    protected abstract R d(Status paramStatus);
    
    public final Api.b<A> dp()
    {
      return this.zc;
    }
    
    public int dr()
    {
      return 0;
    }
    
    void dt()
    {
      this.zj = true;
      this.zi = null;
      if (this.zm != null) {
        this.zm.b(this);
      }
    }
    
    public void du()
    {
      dv();
      this.zk = true;
    }
    
    public final boolean isReady()
    {
      return this.zf.getCount() == 0L;
    }
    
    public final void setResultCallback(ResultCallback<R> paramResultCallback)
    {
      if (!this.zj) {}
      for (boolean bool = true;; bool = false)
      {
        er.a(bool, "Result has already been consumed.");
        synchronized (this.zd)
        {
          if (isReady())
          {
            this.ze.a(paramResultCallback, ds());
            return;
          }
          this.zh = paramResultCallback;
        }
      }
    }
    
    public final void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit)
    {
      if (!this.zj) {}
      for (boolean bool = true;; bool = false)
      {
        er.a(bool, "Result has already been consumed.");
        synchronized (this.zd)
        {
          if (isReady())
          {
            this.ze.a(paramResultCallback, ds());
            return;
          }
          this.zh = paramResultCallback;
          this.ze.a(this, paramTimeUnit.toMillis(paramLong));
        }
      }
    }
  }
  
  public static class b<R extends Result>
    extends Handler
  {
    public b()
    {
      this(Looper.getMainLooper());
    }
    
    public b(Looper paramLooper)
    {
      super();
    }
    
    public void a(ResultCallback<R> paramResultCallback, R paramR)
    {
      sendMessage(obtainMessage(1, new Pair(paramResultCallback, paramR)));
    }
    
    public void a(a.a<R, ?> parama, long paramLong)
    {
      sendMessageDelayed(obtainMessage(2, parama), paramLong);
    }
    
    protected void b(ResultCallback<R> paramResultCallback, R paramR)
    {
      paramResultCallback.onResult(paramR);
    }
    
    public void dw()
    {
      removeMessages(2);
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        Log.wtf("GoogleApi", "Don't know how to handle this message.");
        return;
      case 1: 
        Pair localPair = (Pair)paramMessage.obj;
        b((ResultCallback)localPair.first, (Result)localPair.second);
        return;
      }
      a.a locala = (a.a)paramMessage.obj;
      locala.a(locala.d(Status.zS));
    }
  }
  
  public static abstract interface c<R>
  {
    public abstract void b(R paramR);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.a
 * JD-Core Version:    0.7.0.1
 */