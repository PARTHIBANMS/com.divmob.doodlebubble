package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;

public class EaseCircularIn
  implements IEaseFunction
{
  private static EaseCircularIn INSTANCE;
  
  public static EaseCircularIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCircularIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return -(FloatMath.sqrt(1.0F - paramFloat * paramFloat) - 1.0F);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCircularIn
 * JD-Core Version:    0.7.0.1
 */