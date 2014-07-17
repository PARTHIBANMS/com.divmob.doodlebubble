package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.ei.b;
import com.google.android.gms.internal.er;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class b
  implements GoogleApiClient
{
  private int zA;
  private int zB = 4;
  private int zC = 0;
  private boolean zD = false;
  private int zE;
  private long zF = 5000L;
  final Handler zG;
  private final Bundle zH = new Bundle();
  private final Map<Api.b<?>, Api.a> zI = new HashMap();
  private boolean zJ;
  final Set<c> zK = new HashSet();
  final GoogleApiClient.ConnectionCallbacks zL = new b.2(this);
  private final ei.b zM = new b.3(this);
  private final a zm = new b.1(this);
  private final Lock zv = new ReentrantLock();
  private final Condition zw = this.zv.newCondition();
  private final ei zx = new ei(paramContext, paramLooper, this.zM);
  final Queue<c<?>> zy = new LinkedList();
  private ConnectionResult zz;
  
  public b(Context paramContext, Looper paramLooper, ee paramee, Map<Api, GoogleApiClient.ApiOptions> paramMap, Set<GoogleApiClient.ConnectionCallbacks> paramSet, Set<GoogleApiClient.OnConnectionFailedListener> paramSet1)
  {
    this.zG = new b(paramLooper);
    Iterator localIterator1 = paramSet.iterator();
    while (localIterator1.hasNext())
    {
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator1.next();
      this.zx.registerConnectionCallbacks(localConnectionCallbacks);
    }
    Iterator localIterator2 = paramSet1.iterator();
    while (localIterator2.hasNext())
    {
      GoogleApiClient.OnConnectionFailedListener localOnConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener)localIterator2.next();
      this.zx.registerConnectionFailedListener(localOnConnectionFailedListener);
    }
    Iterator localIterator3 = paramMap.keySet().iterator();
    while (localIterator3.hasNext())
    {
      Api localApi = (Api)localIterator3.next();
      Api.b localb = localApi.dp();
      GoogleApiClient.ApiOptions localApiOptions = (GoogleApiClient.ApiOptions)paramMap.get(localApi);
      this.zI.put(localb, localb.b(paramContext, paramLooper, paramee, localApiOptions, this.zL, new b.4(this, localb)));
    }
  }
  
  private void G(int paramInt)
  {
    this.zv.lock();
    try
    {
      if (this.zB == 3) {
        break label317;
      }
      if (paramInt != -1) {
        break label134;
      }
      if (isConnecting())
      {
        Iterator localIterator3 = this.zy.iterator();
        while (localIterator3.hasNext()) {
          if (((c)localIterator3.next()).dr() != 1) {
            localIterator3.remove();
          }
        }
      }
      this.zy.clear();
    }
    finally
    {
      this.zv.unlock();
    }
    if ((this.zz == null) && (!this.zy.isEmpty()))
    {
      this.zD = true;
      this.zv.unlock();
      return;
    }
    label134:
    boolean bool1 = isConnecting();
    boolean bool2 = isConnected();
    this.zB = 3;
    if (bool1)
    {
      if (paramInt == -1) {
        this.zz = null;
      }
      this.zw.signalAll();
    }
    Iterator localIterator1 = this.zK.iterator();
    while (localIterator1.hasNext()) {
      ((c)localIterator1.next()).du();
    }
    this.zK.clear();
    this.zJ = false;
    Iterator localIterator2 = this.zI.values().iterator();
    while (localIterator2.hasNext())
    {
      Api.a locala = (Api.a)localIterator2.next();
      if (locala.isConnected()) {
        locala.disconnect();
      }
    }
    this.zJ = true;
    this.zB = 4;
    if (bool2)
    {
      if (paramInt != -1) {
        this.zx.P(paramInt);
      }
      this.zJ = false;
    }
    label317:
    this.zv.unlock();
  }
  
  /* Error */
  private <A extends Api.a> void a(c<A> paramc)
    throws DeadObjectException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 188 1 0
    //   9: aload_0
    //   10: invokevirtual 217	com/google/android/gms/common/api/b:isConnected	()Z
    //   13: ldc 252
    //   15: invokestatic 257	com/google/android/gms/internal/er:a	(ZLjava/lang/Object;)V
    //   18: aload_1
    //   19: invokeinterface 258 1 0
    //   24: ifnull +66 -> 90
    //   27: iconst_1
    //   28: istore_3
    //   29: iload_3
    //   30: ldc_w 260
    //   33: invokestatic 257	com/google/android/gms/internal/er:a	(ZLjava/lang/Object;)V
    //   36: aload_1
    //   37: instanceof 262
    //   40: ifeq +24 -> 64
    //   43: aload_0
    //   44: getfield 91	com/google/android/gms/common/api/b:zK	Ljava/util/Set;
    //   47: aload_1
    //   48: invokeinterface 266 2 0
    //   53: pop
    //   54: aload_1
    //   55: aload_0
    //   56: getfield 98	com/google/android/gms/common/api/b:zm	Lcom/google/android/gms/common/api/b$a;
    //   59: invokeinterface 269 2 0
    //   64: aload_1
    //   65: aload_0
    //   66: aload_1
    //   67: invokeinterface 258 1 0
    //   72: invokevirtual 272	com/google/android/gms/common/api/b:a	(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;
    //   75: invokeinterface 275 2 0
    //   80: aload_0
    //   81: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   84: invokeinterface 206 1 0
    //   89: return
    //   90: iconst_0
    //   91: istore_3
    //   92: goto -63 -> 29
    //   95: astore_2
    //   96: aload_0
    //   97: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   100: invokeinterface 206 1 0
    //   105: aload_2
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	b
    //   0	107	1	paramc	c<A>
    //   95	11	2	localObject	Object
    //   28	64	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	27	95	finally
    //   29	64	95	finally
    //   64	80	95	finally
  }
  
  /* Error */
  private boolean dA()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 188 1 0
    //   9: aload_0
    //   10: getfield 70	com/google/android/gms/common/api/b:zC	I
    //   13: istore_2
    //   14: iload_2
    //   15: ifeq +16 -> 31
    //   18: iconst_1
    //   19: istore_3
    //   20: aload_0
    //   21: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   24: invokeinterface 206 1 0
    //   29: iload_3
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_3
    //   33: goto -13 -> 20
    //   36: astore_1
    //   37: aload_0
    //   38: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   41: invokeinterface 206 1 0
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	b
    //   36	11	1	localObject	Object
    //   13	2	2	i	int
    //   19	14	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	14	36	finally
  }
  
  private void dB()
  {
    this.zv.lock();
    try
    {
      this.zC = 0;
      this.zG.removeMessages(1);
      return;
    }
    finally
    {
      this.zv.unlock();
    }
  }
  
  private void dy()
  {
    this.zv.lock();
    for (;;)
    {
      try
      {
        this.zE = (-1 + this.zE);
        if (this.zE == 0)
        {
          if (this.zz == null) {
            break label128;
          }
          this.zD = false;
          G(3);
          if (dA()) {
            this.zC = (-1 + this.zC);
          }
          if (dA())
          {
            this.zG.sendMessageDelayed(this.zG.obtainMessage(1), this.zF);
            this.zJ = false;
          }
        }
        else
        {
          return;
        }
        this.zx.a(this.zz);
        continue;
        this.zB = 2;
      }
      finally
      {
        this.zv.unlock();
      }
      label128:
      dB();
      this.zw.signalAll();
      dz();
      if (!this.zD) {
        break;
      }
      this.zD = false;
      G(-1);
    }
    if (this.zH.isEmpty()) {}
    for (Bundle localBundle = null;; localBundle = this.zH)
    {
      this.zx.b(localBundle);
      break;
    }
  }
  
  private void dz()
  {
    er.a(isConnected(), "GoogleApiClient is not connected yet.");
    this.zv.lock();
    try
    {
      for (;;)
      {
        boolean bool = this.zy.isEmpty();
        if (bool) {
          break;
        }
        try
        {
          a((c)this.zy.remove());
        }
        catch (DeadObjectException localDeadObjectException)
        {
          Log.w("GoogleApiClientImpl", "Service died while flushing queue", localDeadObjectException);
        }
      }
    }
    finally
    {
      this.zv.unlock();
    }
  }
  
  public <C extends Api.a> C a(Api.b<C> paramb)
  {
    Api.a locala = (Api.a)this.zI.get(paramb);
    er.b(locala, "Appropriate Api was not requested.");
    return locala;
  }
  
  /* Error */
  public <A extends Api.a, T extends a.a<? extends Result, A>> T a(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 188 1 0
    //   9: aload_0
    //   10: invokevirtual 217	com/google/android/gms/common/api/b:isConnected	()Z
    //   13: ifeq +20 -> 33
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 348	com/google/android/gms/common/api/b:b	(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
    //   21: pop
    //   22: aload_0
    //   23: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   26: invokeinterface 206 1 0
    //   31: aload_1
    //   32: areturn
    //   33: aload_0
    //   34: getfield 66	com/google/android/gms/common/api/b:zy	Ljava/util/Queue;
    //   37: aload_1
    //   38: invokeinterface 349 2 0
    //   43: pop
    //   44: goto -22 -> 22
    //   47: astore_2
    //   48: aload_0
    //   49: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   52: invokeinterface 206 1 0
    //   57: aload_2
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	b
    //   0	59	1	paramT	T
    //   47	11	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	22	47	finally
    //   33	44	47	finally
  }
  
  public <A extends Api.a, T extends a.a<? extends Result, A>> T b(T paramT)
  {
    er.a(isConnected(), "GoogleApiClient is not connected yet.");
    dz();
    try
    {
      a(paramT);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      G(1);
    }
    return paramT;
  }
  
  public ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      er.a(bool1, "blockingConnect must not be called on the UI thread");
      this.zv.lock();
      try
      {
        connect();
        long l = paramTimeUnit.toNanos(paramLong);
        for (;;)
        {
          boolean bool2 = isConnecting();
          if (!bool2) {
            break;
          }
          try
          {
            l = this.zw.awaitNanos(l);
            if (l <= 0L)
            {
              ConnectionResult localConnectionResult5 = new ConnectionResult(14, null);
              return localConnectionResult5;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
            ConnectionResult localConnectionResult4 = new ConnectionResult(15, null);
            return localConnectionResult4;
          }
        }
        bool1 = false;
        continue;
        if (isConnected())
        {
          ConnectionResult localConnectionResult3 = ConnectionResult.yI;
          return localConnectionResult3;
        }
        if (this.zz != null)
        {
          ConnectionResult localConnectionResult2 = this.zz;
          return localConnectionResult2;
        }
        ConnectionResult localConnectionResult1 = new ConnectionResult(13, null);
        return localConnectionResult1;
      }
      finally
      {
        this.zv.unlock();
      }
    }
  }
  
  public void connect()
  {
    this.zv.lock();
    try
    {
      this.zD = false;
      if (!isConnected())
      {
        boolean bool = isConnecting();
        if (!bool) {}
      }
      else
      {
        return;
      }
      this.zJ = true;
      this.zz = null;
      this.zB = 1;
      this.zH.clear();
      this.zE = this.zI.size();
      Iterator localIterator = this.zI.values().iterator();
      while (localIterator.hasNext()) {
        ((Api.a)localIterator.next()).connect();
      }
    }
    finally
    {
      this.zv.unlock();
    }
  }
  
  public void disconnect()
  {
    dB();
    G(-1);
  }
  
  /* Error */
  public boolean isConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 188 1 0
    //   9: aload_0
    //   10: getfield 68	com/google/android/gms/common/api/b:zB	I
    //   13: istore_2
    //   14: iload_2
    //   15: iconst_2
    //   16: if_icmpne +16 -> 32
    //   19: iconst_1
    //   20: istore_3
    //   21: aload_0
    //   22: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 206 1 0
    //   30: iload_3
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_3
    //   34: goto -13 -> 21
    //   37: astore_1
    //   38: aload_0
    //   39: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   42: invokeinterface 206 1 0
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	b
    //   37	11	1	localObject	Object
    //   13	4	2	i	int
    //   20	14	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	14	37	finally
  }
  
  /* Error */
  public boolean isConnecting()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   6: invokeinterface 188 1 0
    //   11: aload_0
    //   12: getfield 68	com/google/android/gms/common/api/b:zB	I
    //   15: istore_3
    //   16: iload_3
    //   17: iload_1
    //   18: if_icmpne +14 -> 32
    //   21: aload_0
    //   22: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 206 1 0
    //   30: iload_1
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_1
    //   34: goto -13 -> 21
    //   37: astore_2
    //   38: aload_0
    //   39: getfield 53	com/google/android/gms/common/api/b:zv	Ljava/util/concurrent/locks/Lock;
    //   42: invokeinterface 206 1 0
    //   47: aload_2
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	b
    //   1	33	1	i	int
    //   37	11	2	localObject	Object
    //   15	4	3	j	int
    // Exception table:
    //   from	to	target	type
    //   11	16	37	finally
  }
  
  public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return this.zx.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return this.zx.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public void reconnect()
  {
    disconnect();
    connect();
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.zx.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.zx.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.zx.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.zx.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  static abstract interface a
  {
    public abstract void b(b.c paramc);
  }
  
  class b
    extends Handler
  {
    b(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 1)
      {
        b.a(b.this).lock();
        try
        {
          if ((!b.this.isConnected()) && (!b.this.isConnecting())) {
            b.this.connect();
          }
          return;
        }
        finally
        {
          b.a(b.this).unlock();
        }
      }
      Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
    }
  }
  
  static abstract interface c<A extends Api.a>
  {
    public abstract void a(b.a parama);
    
    public abstract void b(A paramA)
      throws DeadObjectException;
    
    public abstract Api.b<A> dp();
    
    public abstract int dr();
    
    public abstract void du();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.b
 * JD-Core Version:    0.7.0.1
 */