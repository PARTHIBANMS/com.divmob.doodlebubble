package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;

class n
  implements ContainerHolder
{
  private Container TU;
  private Container TV;
  private b TW;
  private a TX;
  private TagManager TY;
  private Status vl;
  private boolean zk;
  private final Looper zs;
  
  public n(Status paramStatus)
  {
    this.vl = paramStatus;
    this.zs = null;
  }
  
  public n(TagManager paramTagManager, Looper paramLooper, Container paramContainer, a parama)
  {
    this.TY = paramTagManager;
    if (paramLooper != null) {}
    for (;;)
    {
      this.zs = paramLooper;
      this.TU = paramContainer;
      this.TX = parama;
      this.vl = Status.zQ;
      paramTagManager.a(this);
      return;
      paramLooper = Looper.getMainLooper();
    }
  }
  
  private void iG()
  {
    if (this.TW != null) {
      this.TW.bd(this.TV.iD());
    }
  }
  
  public void a(Container paramContainer)
  {
    for (;;)
    {
      try
      {
        boolean bool = this.zk;
        if (bool) {
          return;
        }
        if (paramContainer == null)
        {
          bh.t("Unexpected null container.");
          continue;
        }
        this.TV = paramContainer;
      }
      finally {}
      iG();
    }
  }
  
  /* Error */
  public void ba(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 74	com/google/android/gms/tagmanager/n:zk	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 35	com/google/android/gms/tagmanager/n:TU	Lcom/google/android/gms/tagmanager/Container;
    //   18: aload_1
    //   19: invokevirtual 86	com/google/android/gms/tagmanager/Container:ba	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	n
    //   0	30	1	paramString	String
    //   25	4	2	localObject	Object
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  void bc(String paramString)
  {
    if (this.zk)
    {
      bh.t("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return;
    }
    this.TX.bc(paramString);
  }
  
  /* Error */
  public Container getContainer()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 74	com/google/android/gms/tagmanager/n:zk	Z
    //   8: ifeq +12 -> 20
    //   11: ldc 97
    //   13: invokestatic 81	com/google/android/gms/tagmanager/bh:t	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: getfield 59	com/google/android/gms/tagmanager/n:TV	Lcom/google/android/gms/tagmanager/Container;
    //   24: ifnull +16 -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 59	com/google/android/gms/tagmanager/n:TV	Lcom/google/android/gms/tagmanager/Container;
    //   32: putfield 35	com/google/android/gms/tagmanager/n:TU	Lcom/google/android/gms/tagmanager/Container;
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 59	com/google/android/gms/tagmanager/n:TV	Lcom/google/android/gms/tagmanager/Container;
    //   40: aload_0
    //   41: getfield 35	com/google/android/gms/tagmanager/n:TU	Lcom/google/android/gms/tagmanager/Container;
    //   44: astore_1
    //   45: goto -29 -> 16
    //   48: astore_2
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	n
    //   1	44	1	localContainer	Container
    //   48	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	48	finally
    //   20	40	48	finally
    //   40	45	48	finally
  }
  
  String getContainerId()
  {
    if (this.zk)
    {
      bh.t("getContainerId called on a released ContainerHolder.");
      return "";
    }
    return this.TU.getContainerId();
  }
  
  public Status getStatus()
  {
    return this.vl;
  }
  
  String iF()
  {
    if (this.zk)
    {
      bh.t("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return "";
    }
    return this.TX.iF();
  }
  
  /* Error */
  public void refresh()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 74	com/google/android/gms/tagmanager/n:zk	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 112
    //   11: invokestatic 81	com/google/android/gms/tagmanager/bh:t	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 37	com/google/android/gms/tagmanager/n:TX	Lcom/google/android/gms/tagmanager/n$a;
    //   21: invokeinterface 115 1 0
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	n
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  /* Error */
  public void release()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 74	com/google/android/gms/tagmanager/n:zk	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 118
    //   11: invokestatic 81	com/google/android/gms/tagmanager/bh:t	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 74	com/google/android/gms/tagmanager/n:zk	Z
    //   22: aload_0
    //   23: getfield 33	com/google/android/gms/tagmanager/n:TY	Lcom/google/android/gms/tagmanager/TagManager;
    //   26: aload_0
    //   27: invokevirtual 122	com/google/android/gms/tagmanager/TagManager:b	(Lcom/google/android/gms/tagmanager/n;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 35	com/google/android/gms/tagmanager/n:TU	Lcom/google/android/gms/tagmanager/Container;
    //   35: invokevirtual 124	com/google/android/gms/tagmanager/Container:release	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 35	com/google/android/gms/tagmanager/n:TU	Lcom/google/android/gms/tagmanager/Container;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 59	com/google/android/gms/tagmanager/n:TV	Lcom/google/android/gms/tagmanager/Container;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 37	com/google/android/gms/tagmanager/n:TX	Lcom/google/android/gms/tagmanager/n$a;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 57	com/google/android/gms/tagmanager/n:TW	Lcom/google/android/gms/tagmanager/n$b;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	n
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
  
  public void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener)
  {
    for (;;)
    {
      try
      {
        if (this.zk)
        {
          bh.t("ContainerHolder is released.");
          return;
        }
        if (paramContainerAvailableListener == null)
        {
          this.TW = null;
          continue;
        }
        this.TW = new b(paramContainerAvailableListener, this.zs);
      }
      finally {}
      if (this.TV != null) {
        iG();
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void bc(String paramString);
    
    public abstract String iF();
    
    public abstract void iH();
  }
  
  private class b
    extends Handler
  {
    private final ContainerHolder.ContainerAvailableListener TZ;
    
    public b(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener, Looper paramLooper)
    {
      super();
      this.TZ = paramContainerAvailableListener;
    }
    
    public void bd(String paramString)
    {
      sendMessage(obtainMessage(1, paramString));
    }
    
    protected void be(String paramString)
    {
      this.TZ.onContainerAvailable(n.this, paramString);
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        bh.t("Don't know how to handle this message.");
        return;
      }
      be((String)paramMessage.obj);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.n
 * JD-Core Version:    0.7.0.1
 */