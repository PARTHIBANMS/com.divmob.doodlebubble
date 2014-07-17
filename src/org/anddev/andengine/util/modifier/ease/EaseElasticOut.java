package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;
import org.anddev.andengine.util.constants.MathConstants;

public class EaseElasticOut
  implements MathConstants, IEaseFunction
{
  private static EaseElasticOut INSTANCE;
  
  public static EaseElasticOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseElasticOut();
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
    return 1.0F + (float)Math.pow(2.0D, -10.0F * paramFloat3) * FloatMath.sin(6.283186F * (paramFloat3 * paramFloat2 - f2) / f1);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1, paramFloat2, paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseElasticOut
 * JD-Core Version:    0.7.0.1
 */