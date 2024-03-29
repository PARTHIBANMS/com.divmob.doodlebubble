package com.google.android.gms.common.api;

import java.util.concurrent.TimeUnit;

public abstract interface PendingResult<R extends Result>
{
  public abstract R await();
  
  public abstract R await(long paramLong, TimeUnit paramTimeUnit);
  
  public abstract void setResultCallback(ResultCallback<R> paramResultCallback);
  
  public abstract void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit);
  
  public static abstract interface a
  {
    public abstract void k(Status paramStatus);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.PendingResult
 * JD-Core Version:    0.7.0.1
 */