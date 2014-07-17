package org.anddev.andengine.util.modifier.ease;

import org.anddev.andengine.util.constants.MathConstants;

public class EaseElasticInOut
  implements MathConstants, IEaseFunction
{
  private static EaseElasticInOut INSTANCE;
  
  public static EaseElasticInOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseElasticInOut();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1 / paramFloat2;
    if (f < 0.5F) {
      return 0.5F * EaseElasticIn.getValue(2.0F * paramFloat1, paramFloat2, f * 2.0F);
    }
    return 0.5F + 0.5F * EaseElasticOut.getValue(paramFloat1 * 2.0F - paramFloat2, paramFloat2, f * 2.0F - 1.0F);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseElasticInOut
 * JD-Core Version:    0.7.0.1
 */