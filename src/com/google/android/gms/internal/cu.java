package com.google.android.gms.internal;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class cu
{
  private static final ThreadFactory pK = new cu.2();
  private static final ThreadPoolExecutor pL = new ThreadPoolExecutor(0, 10, 65L, TimeUnit.SECONDS, new SynchronousQueue(true), pK);
  
  public static void execute(Runnable paramRunnable)
  {
    try
    {
      pL.execute(new cu.1(paramRunnable));
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      da.b("Too many background threads already running. Aborting task.", localRejectedExecutionException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cu
 * JD-Core Version:    0.7.0.1
 */