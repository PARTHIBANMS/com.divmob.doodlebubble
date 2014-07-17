package org.anddev.andengine.opengl.texture.region.buffer;

import org.anddev.andengine.opengl.buffer.BufferObject;
import org.anddev.andengine.opengl.texture.region.BaseTextureRegion;
import org.anddev.andengine.opengl.util.FastFloatBuffer;

public class SpriteBatchTextureRegionBuffer
  extends BufferObject
{
  protected int mIndex;
  
  public SpriteBatchTextureRegionBuffer(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(6 * (paramInt1 * 2), paramInt2, paramBoolean);
  }
  
  public void add(BaseTextureRegion paramBaseTextureRegion)
  {
    if (paramBaseTextureRegion.getTexture() == null) {
      return;
    }
    int i = Float.floatToRawIntBits(paramBaseTextureRegion.getTextureCoordinateX1());
    int j = Float.floatToRawIntBits(paramBaseTextureRegion.getTextureCoordinateY1());
    int k = Float.floatToRawIntBits(paramBaseTextureRegion.getTextureCoordinateX2());
    int m = Float.floatToRawIntBits(paramBaseTextureRegion.getTextureCoordinateY2());
    int[] arrayOfInt = this.mBufferData;
    int n = this.mIndex;
    int i1 = n + 1;
    arrayOfInt[n] = i;
    int i2 = i1 + 1;
    arrayOfInt[i1] = j;
    int i3 = i2 + 1;
    arrayOfInt[i2] = i;
    int i4 = i3 + 1;
    arrayOfInt[i3] = m;
    int i5 = i4 + 1;
    arrayOfInt[i4] = k;
    int i6 = i5 + 1;
    arrayOfInt[i5] = j;
    int i7 = i6 + 1;
    arrayOfInt[i6] = k;
    int i8 = i7 + 1;
    arrayOfInt[i7] = j;
    int i9 = i8 + 1;
    arrayOfInt[i8] = i;
    int i10 = i9 + 1;
    arrayOfInt[i9] = m;
    int i11 = i10 + 1;
    arrayOfInt[i10] = k;
    int i12 = i11 + 1;
    arrayOfInt[i11] = m;
    this.mIndex = i12;
  }
  
  public int getIndex()
  {
    return this.mIndex;
  }
  
  public void setIndex(int paramInt)
  {
    this.mIndex = paramInt;
  }
  
  public void submit()
  {
    FastFloatBuffer localFastFloatBuffer = this.mFloatBuffer;
    localFastFloatBuffer.position(0);
    localFastFloatBuffer.put(this.mBufferData);
    localFastFloatBuffer.position(0);
    super.setHardwareBufferNeedsUpdate();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.buffer.SpriteBatchTextureRegionBuffer
 * JD-Core Version:    0.7.0.1
 */