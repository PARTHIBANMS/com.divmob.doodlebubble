package org.anddev.andengine.util;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class ByteBufferOutputStream
  extends OutputStream
{
  protected int mCount;
  protected byte[] mData;
  protected final int mMaximumGrow;
  
  public ByteBufferOutputStream(int paramInt1, int paramInt2)
  {
    this.mMaximumGrow = paramInt2;
    this.mData = new byte[paramInt1];
  }
  
  private void ensureCapacity(int paramInt)
  {
    if (paramInt - this.mData.length > 0) {
      grow(paramInt);
    }
  }
  
  private void grow(int paramInt)
  {
    int i = this.mData.length;
    int j = Math.min(this.mMaximumGrow, i);
    Debug.d("Growing by: " + j);
    int k = i + j;
    if (k - paramInt < 0) {
      k = paramInt;
    }
    if (k < 0)
    {
      if (paramInt < 0) {
        throw new OutOfMemoryError();
      }
      k = 2147483647;
    }
    byte[] arrayOfByte = new byte[k];
    System.arraycopy(this.mData, 0, arrayOfByte, 0, this.mCount);
    this.mData = arrayOfByte;
  }
  
  public void close()
    throws IOException
  {}
  
  public ByteBuffer toByteBuffer()
  {
    return ByteBuffer.wrap(this.mData, 0, this.mCount).slice();
  }
  
  public void write(int paramInt)
  {
    ensureCapacity(1 + this.mCount);
    this.mData[this.mCount] = ((byte)paramInt);
    this.mCount = (1 + this.mCount);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ensureCapacity(paramInt2 + this.mCount);
    System.arraycopy(paramArrayOfByte, paramInt1, this.mData, this.mCount, paramInt2);
    this.mCount = (paramInt2 + this.mCount);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ByteBufferOutputStream
 * JD-Core Version:    0.7.0.1
 */