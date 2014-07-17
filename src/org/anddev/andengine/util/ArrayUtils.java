package org.anddev.andengine.util;

public class ArrayUtils
{
  public static boolean equals(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3)
  {
    int i = paramInt1 + paramInt3;
    if (i > paramArrayOfByte1.length) {
      throw new ArrayIndexOutOfBoundsException(paramArrayOfByte1.length);
    }
    if (paramInt2 + paramInt3 > paramArrayOfByte2.length) {
      throw new ArrayIndexOutOfBoundsException(paramArrayOfByte2.length);
    }
    while (paramInt1 < i)
    {
      if (paramArrayOfByte1[paramInt1] != paramArrayOfByte2[paramInt2]) {
        return false;
      }
      paramInt1++;
      paramInt2++;
    }
    return true;
  }
  
  public static <T> T random(T[] paramArrayOfT)
  {
    return paramArrayOfT[MathUtils.random(0, -1 + paramArrayOfT.length)];
  }
  
  public static void reverse(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfByte.length;
      while (j > i)
      {
        int k = paramArrayOfByte[j];
        paramArrayOfByte[j] = paramArrayOfByte[i];
        paramArrayOfByte[i] = k;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfDouble.length;
      while (j > i)
      {
        double d = paramArrayOfDouble[j];
        paramArrayOfDouble[j] = paramArrayOfDouble[i];
        paramArrayOfDouble[i] = d;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfFloat.length;
      while (j > i)
      {
        float f = paramArrayOfFloat[j];
        paramArrayOfFloat[j] = paramArrayOfFloat[i];
        paramArrayOfFloat[i] = f;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfInt.length;
      while (j > i)
      {
        int k = paramArrayOfInt[j];
        paramArrayOfInt[j] = paramArrayOfInt[i];
        paramArrayOfInt[i] = k;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfLong.length;
      while (j > i)
      {
        long l = paramArrayOfLong[j];
        paramArrayOfLong[j] = paramArrayOfLong[i];
        paramArrayOfLong[i] = l;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfObject.length;
      while (j > i)
      {
        Object localObject = paramArrayOfObject[j];
        paramArrayOfObject[j] = paramArrayOfObject[i];
        paramArrayOfObject[i] = localObject;
        j--;
        i++;
      }
    }
  }
  
  public static void reverse(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null) {}
    for (;;)
    {
      return;
      int i = 0;
      int j = -1 + paramArrayOfShort.length;
      while (j > i)
      {
        int k = paramArrayOfShort[j];
        paramArrayOfShort[j] = paramArrayOfShort[i];
        paramArrayOfShort[i] = k;
        j--;
        i++;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ArrayUtils
 * JD-Core Version:    0.7.0.1
 */