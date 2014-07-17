package org.anddev.andengine.opengl.vertex;

import org.anddev.andengine.opengl.util.FastFloatBuffer;

public class LineVertexBuffer
  extends VertexBuffer
{
  public static final int VERTICES_PER_LINE = 2;
  
  public LineVertexBuffer(int paramInt, boolean paramBoolean)
  {
    super(4, paramInt, paramBoolean);
  }
  
  public void update(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    try
    {
      int[] arrayOfInt = this.mBufferData;
      arrayOfInt[0] = Float.floatToRawIntBits(paramFloat1);
      arrayOfInt[1] = Float.floatToRawIntBits(paramFloat2);
      arrayOfInt[2] = Float.floatToRawIntBits(paramFloat3);
      arrayOfInt[3] = Float.floatToRawIntBits(paramFloat4);
      FastFloatBuffer localFastFloatBuffer = this.mFloatBuffer;
      localFastFloatBuffer.position(0);
      localFastFloatBuffer.put(arrayOfInt);
      localFastFloatBuffer.position(0);
      super.setHardwareBufferNeedsUpdate();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.vertex.LineVertexBuffer
 * JD-Core Version:    0.7.0.1
 */