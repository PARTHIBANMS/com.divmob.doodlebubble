package org.anddev.andengine.opengl.texture.region.buffer;

import org.anddev.andengine.opengl.buffer.BufferObject;
import org.anddev.andengine.opengl.texture.region.BaseTextureRegion;
import org.anddev.andengine.opengl.util.FastFloatBuffer;

public class TextureRegionBuffer
  extends BufferObject
{
  private boolean mFlippedHorizontal;
  private boolean mFlippedVertical;
  protected final BaseTextureRegion mTextureRegion;
  
  public TextureRegionBuffer(BaseTextureRegion paramBaseTextureRegion, int paramInt, boolean paramBoolean)
  {
    super(8, paramInt, paramBoolean);
    this.mTextureRegion = paramBaseTextureRegion;
  }
  
  public BaseTextureRegion getTextureRegion()
  {
    return this.mTextureRegion;
  }
  
  public boolean isFlippedHorizontal()
  {
    return this.mFlippedHorizontal;
  }
  
  public boolean isFlippedVertical()
  {
    return this.mFlippedVertical;
  }
  
  public void setFlippedHorizontal(boolean paramBoolean)
  {
    if (this.mFlippedHorizontal != paramBoolean)
    {
      this.mFlippedHorizontal = paramBoolean;
      update();
    }
  }
  
  public void setFlippedVertical(boolean paramBoolean)
  {
    if (this.mFlippedVertical != paramBoolean)
    {
      this.mFlippedVertical = paramBoolean;
      update();
    }
  }
  
  public void update()
  {
    for (;;)
    {
      int i;
      int j;
      int k;
      int m;
      int[] arrayOfInt;
      try
      {
        BaseTextureRegion localBaseTextureRegion = this.mTextureRegion;
        i = Float.floatToRawIntBits(localBaseTextureRegion.getTextureCoordinateX1());
        j = Float.floatToRawIntBits(localBaseTextureRegion.getTextureCoordinateY1());
        k = Float.floatToRawIntBits(localBaseTextureRegion.getTextureCoordinateX2());
        m = Float.floatToRawIntBits(localBaseTextureRegion.getTextureCoordinateY2());
        arrayOfInt = this.mBufferData;
        if (this.mFlippedVertical)
        {
          if (this.mFlippedHorizontal)
          {
            arrayOfInt[0] = k;
            arrayOfInt[1] = m;
            arrayOfInt[2] = k;
            arrayOfInt[3] = j;
            arrayOfInt[4] = i;
            arrayOfInt[5] = m;
            arrayOfInt[6] = i;
            arrayOfInt[7] = j;
            FastFloatBuffer localFastFloatBuffer = this.mFloatBuffer;
            localFastFloatBuffer.position(0);
            localFastFloatBuffer.put(arrayOfInt);
            localFastFloatBuffer.position(0);
            super.setHardwareBufferNeedsUpdate();
            return;
          }
          arrayOfInt[0] = i;
          arrayOfInt[1] = m;
          arrayOfInt[2] = i;
          arrayOfInt[3] = j;
          arrayOfInt[4] = k;
          arrayOfInt[5] = m;
          arrayOfInt[6] = k;
          arrayOfInt[7] = j;
          continue;
        }
        if (!this.mFlippedHorizontal) {
          break label256;
        }
      }
      finally {}
      arrayOfInt[0] = k;
      arrayOfInt[1] = j;
      arrayOfInt[2] = k;
      arrayOfInt[3] = m;
      arrayOfInt[4] = i;
      arrayOfInt[5] = j;
      arrayOfInt[6] = i;
      arrayOfInt[7] = m;
      continue;
      label256:
      arrayOfInt[0] = i;
      arrayOfInt[1] = j;
      arrayOfInt[2] = i;
      arrayOfInt[3] = m;
      arrayOfInt[4] = k;
      arrayOfInt[5] = j;
      arrayOfInt[6] = k;
      arrayOfInt[7] = m;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.buffer.TextureRegionBuffer
 * JD-Core Version:    0.7.0.1
 */