package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;

public class EaseSineInOut
  implements IEaseFunction
{
  private static EaseSineInOut INSTANCE;
  
  public static EaseSineInOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseSineInOut();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return -0.5F * (FloatMath.cos(3.141593F * (paramFloat1 / paramFloat2)) - 1.0F);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseSineInOut
 * JD-Core Version:    0.7.0.1
 */