package com.google.android.gms.internal;

import android.os.Process;

final class cu$1
  implements Runnable
{
  cu$1(Runnable paramRunnable) {}
  
  public void run()
  {
    Process.setThreadPriority(10);
    this.pM.run();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cu.1
 * JD-Core Version:    0.7.0.1
 */