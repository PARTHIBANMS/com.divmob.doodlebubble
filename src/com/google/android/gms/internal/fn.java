package com.google.android.gms.internal;

public final class fn
  implements fl
{
  private static fn CN;
  
  public static fl eI()
  {
    try
    {
      if (CN == null) {
        CN = new fn();
      }
      fn localfn = CN;
      return localfn;
    }
    finally {}
  }
  
  public long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fn
 * JD-Core Version:    0.7.0.1
 */