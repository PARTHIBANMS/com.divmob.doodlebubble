package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a
  implements ServiceConnection
{
  boolean yG = false;
  private final BlockingQueue<IBinder> yH = new LinkedBlockingQueue();
  
  public IBinder dm()
    throws InterruptedException
  {
    if (this.yG) {
      throw new IllegalStateException();
    }
    this.yG = true;
    return (IBinder)this.yH.take();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.yH.put(paramIBinder);
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a
 * JD-Core Version:    0.7.0.1
 */