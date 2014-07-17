package com.divmob.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;

public final class i
{
  public static final int a = 8192;
  private static final int b = -1;
  
  /* Error */
  public static final java.lang.String a(InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: new 18	java/io/StringWriter
    //   3: dup
    //   4: invokespecial 19	java/io/StringWriter:<init>	()V
    //   7: astore_1
    //   8: sipush 8192
    //   11: newarray char
    //   13: astore_2
    //   14: new 21	java/io/BufferedReader
    //   17: dup
    //   18: new 23	java/io/InputStreamReader
    //   21: dup
    //   22: aload_0
    //   23: ldc 25
    //   25: invokespecial 28	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   28: invokespecial 31	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   31: astore_3
    //   32: aload_3
    //   33: aload_2
    //   34: invokevirtual 37	java/io/Reader:read	([C)I
    //   37: istore 5
    //   39: iload 5
    //   41: iconst_m1
    //   42: if_icmpne +12 -> 54
    //   45: aload_0
    //   46: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   49: aload_1
    //   50: invokevirtual 44	java/io/StringWriter:toString	()Ljava/lang/String;
    //   53: areturn
    //   54: aload_1
    //   55: aload_2
    //   56: iconst_0
    //   57: iload 5
    //   59: invokevirtual 48	java/io/StringWriter:write	([CII)V
    //   62: goto -30 -> 32
    //   65: astore 4
    //   67: aload_0
    //   68: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   71: aload 4
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramInputStream	InputStream
    //   7	48	1	localStringWriter	java.io.StringWriter
    //   13	43	2	arrayOfChar	char[]
    //   31	2	3	localBufferedReader	java.io.BufferedReader
    //   65	7	4	localObject	Object
    //   37	21	5	i	int
    // Exception table:
    //   from	to	target	type
    //   14	32	65	finally
    //   32	39	65	finally
    //   54	62	65	finally
  }
  
  public static final void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public static final void a(InputStream paramInputStream, int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    a(paramInputStream, paramInt, paramArrayOfByte, 0);
  }
  
  public static final void a(InputStream paramInputStream, int paramInt1, byte[] paramArrayOfByte, int paramInt2)
    throws IOException
  {
    if (paramInt1 > paramArrayOfByte.length - paramInt2) {
      throw new IOException("pData is not big enough.");
    }
    int i = 0;
    int j = paramInt1;
    for (;;)
    {
      int k = paramInputStream.read(paramArrayOfByte, paramInt2 + i, j);
      if (k == -1) {}
      do
      {
        if (i == paramInt1) {
          break;
        }
        throw new IOException("ReadLimit: '" + paramInt1 + "', Read: '" + i + "'.");
        i += k;
      } while (j <= k);
      j -= k;
    }
  }
  
  public static final void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    a(paramInputStream, paramOutputStream, -1);
  }
  
  public static final void a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte2;
    int k;
    if (paramInt == -1)
    {
      arrayOfByte2 = new byte[8192];
      k = paramInputStream.read(arrayOfByte2);
      if (k != -1) {}
    }
    for (;;)
    {
      paramOutputStream.flush();
      return;
      paramOutputStream.write(arrayOfByte2, 0, k);
      break;
      byte[] arrayOfByte1 = new byte[8192];
      int i = Math.min(paramInt, 8192);
      int j;
      for (long l = paramInt;; l -= j)
      {
        j = paramInputStream.read(arrayOfByte1, 0, i);
        if (j == -1) {
          break;
        }
        if (l <= j) {
          break label106;
        }
        paramOutputStream.write(arrayOfByte1, 0, j);
      }
      label106:
      paramOutputStream.write(arrayOfByte1, 0, (int)l);
    }
  }
  
  public static final void a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt, h.b paramb)
    throws IOException
  {
    long l1 = paramInputStream.available();
    long l2 = 0L;
    byte[] arrayOfByte2;
    int k;
    if (paramInt == -1)
    {
      arrayOfByte2 = new byte[8192];
      k = paramInputStream.read(arrayOfByte2);
      if (k != -1) {}
    }
    for (;;)
    {
      paramOutputStream.flush();
      return;
      paramOutputStream.write(arrayOfByte2, 0, k);
      l2 += k;
      if (paramb == null) {
        break;
      }
      paramb.a(l1, l2);
      break;
      byte[] arrayOfByte1 = new byte[8192];
      int i = Math.min(paramInt, 8192);
      long l3 = paramInt;
      long l4 = l2;
      long l5 = l3;
      for (;;)
      {
        int j = paramInputStream.read(arrayOfByte1, 0, i);
        if (j == -1) {
          break;
        }
        if (l5 <= j) {
          break label171;
        }
        paramOutputStream.write(arrayOfByte1, 0, j);
        l5 -= j;
        l4 += j;
        if (paramb != null) {
          paramb.a(l1, l4);
        }
      }
      label171:
      paramOutputStream.write(arrayOfByte1, 0, (int)l5);
      long l6 = l5 + l4;
      if (paramb != null) {
        paramb.a(l1, l6);
      }
    }
  }
  
  public static final void a(InputStream paramInputStream, ByteBuffer paramByteBuffer)
    throws IOException
  {
    byte[] arrayOfByte = new byte[8192];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramByteBuffer.put(arrayOfByte, 0, i);
    }
  }
  
  public static final void a(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    byte[] arrayOfByte = new byte[8192];
    int i = 0;
    for (;;)
    {
      int j = paramInputStream.read(arrayOfByte);
      if (j == -1) {
        return;
      }
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i, j);
      i += j;
    }
  }
  
  public static final void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    finally
    {
      a(paramOutputStream);
    }
  }
  
  public static final void a(Writer paramWriter)
  {
    if (paramWriter != null) {}
    try
    {
      paramWriter.flush();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    finally
    {
      a(paramWriter);
    }
  }
  
  /* Error */
  public static final boolean a(InputStream paramInputStream, OutputStream paramOutputStream, h.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iconst_m1
    //   3: aload_2
    //   4: invokestatic 140	com/divmob/a/i:a	(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/divmob/a/h$b;)V
    //   7: aload_0
    //   8: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   11: aload_1
    //   12: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   15: iconst_1
    //   16: ireturn
    //   17: astore 4
    //   19: aload_0
    //   20: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   23: aload_1
    //   24: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   27: iconst_0
    //   28: ireturn
    //   29: astore_3
    //   30: aload_0
    //   31: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   34: aload_1
    //   35: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   38: aload_3
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	paramInputStream	InputStream
    //   0	40	1	paramOutputStream	OutputStream
    //   0	40	2	paramb	h.b
    //   29	10	3	localObject	Object
    //   17	1	4	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	7	17	java/io/IOException
    //   0	7	29	finally
  }
  
  public static final byte[] a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    if (paramInt == -1) {}
    for (int i = 8192;; i = paramInt)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(i);
      a(paramInputStream, localByteArrayOutputStream, paramInt);
      return localByteArrayOutputStream.toByteArray();
    }
  }
  
  /* Error */
  public static final boolean b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iconst_m1
    //   3: invokestatic 91	com/divmob/a/i:a	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   6: aload_0
    //   7: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   10: aload_1
    //   11: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   14: iconst_1
    //   15: ireturn
    //   16: astore_3
    //   17: aload_0
    //   18: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   21: aload_1
    //   22: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   25: iconst_0
    //   26: ireturn
    //   27: astore_2
    //   28: aload_0
    //   29: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   32: aload_1
    //   33: invokestatic 40	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   36: aload_2
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	paramInputStream	InputStream
    //   0	38	1	paramOutputStream	OutputStream
    //   27	10	2	localObject	Object
    //   16	1	3	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	6	16	java/io/IOException
    //   0	6	27	finally
  }
  
  public static final byte[] b(InputStream paramInputStream)
    throws IOException
  {
    return a(paramInputStream, -1);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.i
 * JD-Core Version:    0.7.0.1
 */