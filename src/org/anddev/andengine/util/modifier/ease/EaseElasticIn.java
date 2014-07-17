package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;
import org.anddev.andengine.util.constants.MathConstants;

public class EaseElasticIn
  implements MathConstants, IEaseFunction
{
  private static EaseElasticIn INSTANCE;
  
  public static EaseElasticIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseElasticIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 == 0.0F) {
      return 0.0F;
    }
    if (paramFloat1 == paramFloat2) {
      return 1.0F;
    }
    float f1 = 0.3F * paramFloat2;
    float f2 = f1 / 4.0F;
    float f3 = paramFloat3 - 1.0F;
    return -(float)Math.pow(2.0D, 10.0F * f3) * FloatMath.sin(6.283186F * (f3 * paramFloat2 - f2) / f1);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1, paramFloat2, paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseElasticIn
 * JD-Core Version:    0.7.0.1
 */