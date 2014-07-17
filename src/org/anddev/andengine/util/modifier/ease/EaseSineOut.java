package org.anddev.andengine.util.modifier.ease;

import android.util.FloatMath;
import org.anddev.andengine.util.constants.MathConstants;

public class EaseSineOut
  implements MathConstants, IEaseFunction
{
  private static EaseSineOut INSTANCE;
  
  public static EaseSineOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseSineOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return FloatMath.sin(1.570796F * paramFloat);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseSineOut
 * JD-Core Version:    0.7.0.1
 */