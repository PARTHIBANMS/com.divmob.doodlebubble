package org.anddev.andengine.opengl.vertex;

import org.anddev.andengine.opengl.util.FastFloatBuffer;
import org.anddev.andengine.util.Transformation;

public class SpriteBatchVertexBuffer
  extends VertexBuffer
{
  private static final Transformation TRANSFORATION_TMP = new Transformation();
  public static final int VERTICES_PER_RECTANGLE = 6;
  private static final float[] VERTICES_TMP = new float[8];
  protected int mIndex;
  
  public SpriteBatchVertexBuffer(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(6 * (paramInt1 * 2), paramInt2, paramBoolean);
  }
  
  public void add(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    addInner(paramFloat1, paramFloat2, paramFloat1 + paramFloat3, paramFloat2 + paramFloat4);
  }
  
  public void add(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    float f1 = paramFloat3 * 0.5F;
    float f2 = 0.5F * paramFloat4;
    TRANSFORATION_TMP.setToIdentity();
    TRANSFORATION_TMP.postTranslate(-f1, -f2);
    TRANSFORATION_TMP.postRotate(paramFloat5);
    TRANSFORATION_TMP.postTranslate(f1, f2);
    TRANSFORATION_TMP.postTranslate(paramFloat1, paramFloat2);
    add(paramFloat3, paramFloat4, TRANSFORATION_TMP);
  }
  
  public void add(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    float f1 = paramFloat3 * 0.5F;
    float f2 = 0.5F * paramFloat4;
    TRANSFORATION_TMP.setToIdentity();
    TRANSFORATION_TMP.postTranslate(-f1, -f2);
    TRANSFORATION_TMP.postScale(paramFloat5, paramFloat6);
    TRANSFORATION_TMP.postTranslate(f1, f2);
    TRANSFORATION_TMP.postTranslate(paramFloat1, paramFloat2);
    add(paramFloat3, paramFloat4, TRANSFORATION_TMP);
  }
  
  public void add(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    float f1 = paramFloat3 * 0.5F;
    float f2 = 0.5F * paramFloat4;
    TRANSFORATION_TMP.setToIdentity();
    TRANSFORATION_TMP.postTranslate(-f1, -f2);
    TRANSFORATION_TMP.postScale(paramFloat6, paramFloat7);
    TRANSFORATION_TMP.postRotate(paramFloat5);
    TRANSFORATION_TMP.postTranslate(f1, f2);
    TRANSFORATION_TMP.postTranslate(paramFloat1, paramFloat2);
    add(paramFloat3, paramFloat4, TRANSFORATION_TMP);
  }
  
  public void add(float paramFloat1, float paramFloat2, Transformation paramTransformation)
  {
    VERTICES_TMP[0] = 0.0F;
    VERTICES_TMP[1] = 0.0F;
    VERTICES_TMP[2] = 0.0F;
    VERTICES_TMP[3] = paramFloat2;
    VERTICES_TMP[4] = paramFloat1;
    VERTICES_TMP[5] = 0.0F;
    VERTICES_TMP[6] = paramFloat1;
    VERTICES_TMP[7] = paramFloat2;
    paramTransformation.transform(VERTICES_TMP);
    addInner(VERTICES_TMP[0], VERTICES_TMP[1], VERTICES_TMP[2], VERTICES_TMP[3], VERTICES_TMP[4], VERTICES_TMP[5], VERTICES_TMP[6], VERTICES_TMP[7]);
  }
  
  public void addInner(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = Float.floatToRawIntBits(paramFloat1);
    int j = Float.floatToRawIntBits(paramFloat2);
    int k = Float.floatToRawIntBits(paramFloat3);
    int m = Float.floatToRawIntBits(paramFloat4);
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
  
  public void addInner(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    int i = Float.floatToRawIntBits(paramFloat1);
    int j = Float.floatToRawIntBits(paramFloat2);
    int k = Float.floatToRawIntBits(paramFloat3);
    int m = Float.floatToRawIntBits(paramFloat4);
    int n = Float.floatToRawIntBits(paramFloat5);
    int i1 = Float.floatToRawIntBits(paramFloat6);
    int i2 = Float.floatToRawIntBits(paramFloat7);
    int i3 = Float.floatToRawIntBits(paramFloat8);
    int[] arrayOfInt = this.mBufferData;
    int i4 = this.mIndex;
    int i5 = i4 + 1;
    arrayOfInt[i4] = i;
    int i6 = i5 + 1;
    arrayOfInt[i5] = j;
    int i7 = i6 + 1;
    arrayOfInt[i6] = k;
    int i8 = i7 + 1;
    arrayOfInt[i7] = m;
    int i9 = i8 + 1;
    arrayOfInt[i8] = n;
    int i10 = i9 + 1;
    arrayOfInt[i9] = i1;
    int i11 = i10 + 1;
    arrayOfInt[i10] = n;
    int i12 = i11 + 1;
    arrayOfInt[i11] = i1;
    int i13 = i12 + 1;
    arrayOfInt[i12] = k;
    int i14 = i13 + 1;
    arrayOfInt[i13] = m;
    int i15 = i14 + 1;
    arrayOfInt[i14] = i2;
    int i16 = i15 + 1;
    arrayOfInt[i15] = i3;
    this.mIndex = i16;
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
 * Qualified Name:     org.anddev.andengine.opengl.vertex.SpriteBatchVertexBuffer
 * JD-Core Version:    0.7.0.1
 */