package com.google.android.gms.internal;

public final class dr
{
  public static <T> boolean a(T paramT1, T paramT2)
  {
    return ((paramT1 == null) && (paramT2 == null)) || ((paramT1 != null) && (paramT2 != null) && (paramT1.equals(paramT2)));
  }
  
  public static long b(double paramDouble)
  {
    return (1000.0D * paramDouble);
  }
  
  public static double l(long paramLong)
  {
    return paramLong / 1000.0D;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dr
 * JD-Core Version:    0.7.0.1
 */