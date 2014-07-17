package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;

public class EaseCircularOut
  implements IEaseFunction
{
  private static EaseCircularOut INSTANCE;
  
  public static EaseCircularOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCircularOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return FloatMath.sqrt(1.0F - f * f);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCircularOut
 * JD-Core Version:    0.7.0.1
 */