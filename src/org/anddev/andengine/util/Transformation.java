package org.anddev.andengine.util;

import android.util.FloatMath;

public class Transformation
{
  private float a = 1.0F;
  private float b = 0.0F;
  private float c = 0.0F;
  private float d = 1.0F;
  private float tx = 0.0F;
  private float ty = 0.0F;
  
  private void postConcat(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    float f1 = this.a;
    float f2 = this.b;
    float f3 = this.c;
    float f4 = this.d;
    float f5 = this.tx;
    float f6 = this.ty;
    this.a = (f1 * paramFloat1 + f2 * paramFloat3);
    this.b = (f1 * paramFloat2 + f2 * paramFloat4);
    this.c = (f3 * paramFloat1 + f4 * paramFloat3);
    this.d = (f3 * paramFloat2 + f4 * paramFloat4);
    this.tx = (paramFloat5 + (f5 * paramFloat1 + f6 * paramFloat3));
    this.ty = (paramFloat6 + (f5 * paramFloat2 + f6 * paramFloat4));
  }
  
  private void preConcat(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    float f1 = this.a;
    float f2 = this.b;
    float f3 = this.c;
    float f4 = this.d;
    float f5 = this.tx;
    float f6 = this.ty;
    this.a = (paramFloat1 * f1 + paramFloat2 * f3);
    this.b = (paramFloat1 * f2 + paramFloat2 * f4);
    this.c = (paramFloat3 * f1 + paramFloat4 * f3);
    this.d = (paramFloat3 * f2 + paramFloat4 * f4);
    this.tx = (f5 + (f1 * paramFloat5 + f3 * paramFloat6));
    this.ty = (f6 + (paramFloat5 * f2 + paramFloat6 * f4));
  }
  
  public void postConcat(Transformation paramTransformation)
  {
    postConcat(paramTransformation.a, paramTransformation.b, paramTransformation.c, paramTransformation.d, paramTransformation.tx, paramTransformation.ty);
  }
  
  public void postRotate(float paramFloat)
  {
    float f1 = MathUtils.degToRad(paramFloat);
    float f2 = FloatMath.sin(f1);
    float f3 = FloatMath.cos(f1);
    float f4 = this.a;
    float f5 = this.b;
    float f6 = this.c;
    float f7 = this.d;
    float f8 = this.tx;
    float f9 = this.ty;
    this.a = (f4 * f3 - f5 * f2);
    this.b = (f4 * f2 + f5 * f3);
    this.c = (f6 * f3 - f7 * f2);
    this.d = (f6 * f2 + f7 * f3);
    this.tx = (f8 * f3 - f9 * f2);
    this.ty = (f2 * f8 + f3 * f9);
  }
  
  public void postScale(float paramFloat1, float paramFloat2)
  {
    this.a = (paramFloat1 * this.a);
    this.b = (paramFloat2 * this.b);
    this.c = (paramFloat1 * this.c);
    this.d = (paramFloat2 * this.d);
    this.tx = (paramFloat1 * this.tx);
    this.ty = (paramFloat2 * this.ty);
  }
  
  public void postTranslate(float paramFloat1, float paramFloat2)
  {
    this.tx = (paramFloat1 + this.tx);
    this.ty = (paramFloat2 + this.ty);
  }
  
  public void preConcat(Transformation paramTransformation)
  {
    preConcat(paramTransformation.a, paramTransformation.b, paramTransformation.c, paramTransformation.d, paramTransformation.tx, paramTransformation.ty);
  }
  
  public void preRotate(float paramFloat)
  {
    float f1 = MathUtils.degToRad(paramFloat);
    float f2 = FloatMath.sin(f1);
    float f3 = FloatMath.cos(f1);
    float f4 = this.a;
    float f5 = this.b;
    float f6 = this.c;
    float f7 = this.d;
    this.a = (f3 * f4 + f2 * f6);
    this.b = (f3 * f5 + f2 * f7);
    this.c = (f6 * f3 - f4 * f2);
    this.d = (f3 * f7 - f2 * f5);
  }
  
  public void preScale(float paramFloat1, float paramFloat2)
  {
    this.a = (paramFloat1 * this.a);
    this.b = (paramFloat1 * this.b);
    this.c = (paramFloat2 * this.c);
    this.d = (paramFloat2 * this.d);
  }
  
  public void preTranslate(float paramFloat1, float paramFloat2)
  {
    this.tx += paramFloat1 * this.a + paramFloat2 * this.c;
    this.ty += paramFloat1 * this.b + paramFloat2 * this.d;
  }
  
  public void reset()
  {
    setToIdentity();
  }
  
  public void setTo(Transformation paramTransformation)
  {
    this.a = paramTransformation.a;
    this.d = paramTransformation.d;
    this.b = paramTransformation.b;
    this.c = paramTransformation.c;
    this.tx = paramTransformation.tx;
    this.ty = paramTransformation.ty;
  }
  
  public void setToIdentity()
  {
    this.a = 1.0F;
    this.d = 1.0F;
    this.b = 0.0F;
    this.c = 0.0F;
    this.tx = 0.0F;
    this.ty = 0.0F;
  }
  
  public Transformation setToRotate(float paramFloat)
  {
    float f1 = MathUtils.degToRad(paramFloat);
    float f2 = FloatMath.sin(f1);
    float f3 = FloatMath.cos(f1);
    this.a = f3;
    this.b = f2;
    this.c = (-f2);
    this.d = f3;
    this.tx = 0.0F;
    this.ty = 0.0F;
    return this;
  }
  
  public Transformation setToScale(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = 0.0F;
    this.c = 0.0F;
    this.d = paramFloat2;
    this.tx = 0.0F;
    this.ty = 0.0F;
    return this;
  }
  
  public Transformation setToTranslate(float paramFloat1, float paramFloat2)
  {
    this.a = 1.0F;
    this.b = 0.0F;
    this.c = 0.0F;
    this.d = 1.0F;
    this.tx = paramFloat1;
    this.ty = paramFloat2;
    return this;
  }
  
  public String toString()
  {
    return "Transformation{[" + this.a + ", " + this.c + ", " + this.tx + "][" + this.b + ", " + this.d + ", " + this.ty + "][0.0, 0.0, 1.0]}";
  }
  
  public void transform(float[] paramArrayOfFloat)
  {
    int i = 0;
    int j = paramArrayOfFloat.length >> 1;
    int k = 0;
    for (;;)
    {
      j--;
      if (j < 0) {
        return;
      }
      int m = k + 1;
      float f1 = paramArrayOfFloat[k];
      k = m + 1;
      float f2 = paramArrayOfFloat[m];
      int n = i + 1;
      paramArrayOfFloat[i] = (f1 * this.a + f2 * this.c + this.tx);
      i = n + 1;
      paramArrayOfFloat[n] = (f1 * this.b + f2 * this.d + this.ty);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.Transformation
 * JD-Core Version:    0.7.0.1
 */