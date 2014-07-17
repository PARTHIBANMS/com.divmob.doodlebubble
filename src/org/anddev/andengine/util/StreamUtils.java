package org.anddev.andengine.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.util.Scanner;

public class StreamUtils
{
  public static final int IO_BUFFER_SIZE = 8192;
  
  public static void close(Closeable paramCloseable)
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
  
  public static void copy(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    copy(paramInputStream, paramOutputStream, -1L);
  }
  
  public static void copy(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong)
    throws IOException
  {
    byte[] arrayOfByte2;
    int k;
    if (paramLong < 0L)
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
      int i = Math.min((int)paramLong, 8192);
      for (;;)
      {
        int j = paramInputStream.read(arrayOfByte1, 0, i);
        if (j == -1) {
          break;
        }
        if (paramLong <= j) {
          break label104;
        }
        paramOutputStream.write(arrayOfByte1, 0, j);
        paramLong -= j;
      }
      label104:
      paramOutputStream.write(arrayOfByte1, 0, (int)paramLong);
    }
  }
  
  public static void copy(InputStream paramInputStream, ByteBuffer paramByteBuffer)
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
  
  public static void copy(InputStream paramInputStream, byte[] paramArrayOfByte)
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
  
  /* Error */
  public static boolean copyAndClose(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: ldc2_w 25
    //   5: invokestatic 29	org/anddev/andengine/util/StreamUtils:copy	(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    //   8: aload_0
    //   9: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   12: aload_1
    //   13: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   16: iconst_1
    //   17: ireturn
    //   18: astore_3
    //   19: aload_0
    //   20: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   23: aload_1
    //   24: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   27: iconst_0
    //   28: ireturn
    //   29: astore_2
    //   30: aload_0
    //   31: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   34: aload_1
    //   35: invokestatic 71	org/anddev/andengine/util/StreamUtils:close	(Ljava/io/Closeable;)V
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	paramInputStream	InputStream
    //   0	40	1	paramOutputStream	OutputStream
    //   29	10	2	localObject	Object
    //   18	1	3	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	8	18	java/io/IOException
    //   0	8	29	finally
  }
  
  public static void flushCloseStream(OutputStream paramOutputStream)
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
      close(paramOutputStream);
    }
  }
  
  public static void flushCloseWriter(Writer paramWriter)
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
      close(paramWriter);
    }
  }
  
  public static final String readFully(InputStream paramInputStream)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Scanner localScanner = new Scanner(paramInputStream);
    for (;;)
    {
      if (!localScanner.hasNextLine()) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(localScanner.nextLine());
    }
  }
  
  public static byte[] streamToBytes(InputStream paramInputStream)
    throws IOException
  {
    return streamToBytes(paramInputStream, -1);
  }
  
  public static byte[] streamToBytes(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    if (paramInt == -1) {}
    for (int i = 8192;; i = paramInt)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(i);
      copy(paramInputStream, localByteArrayOutputStream, paramInt);
      return localByteArrayOutputStream.toByteArray();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.StreamUtils
 * JD-Core Version:    0.7.0.1
 */