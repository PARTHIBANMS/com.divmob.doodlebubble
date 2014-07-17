package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;
import org.anddev.andengine.util.constants.MathConstants;

public class EaseSineIn
  implements MathConstants, IEaseFunction
{
  private static EaseSineIn INSTANCE;
  
  public static EaseSineIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseSineIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return 1.0F + -FloatMath.cos(1.570796F * paramFloat);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseSineIn
 * JD-Core Version:    0.7.0.1
 */