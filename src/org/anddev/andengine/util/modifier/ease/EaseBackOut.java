package org.anddev.andengine.util.modifier.ease;

public class EaseBackOut
  implements IEaseFunction
{
  private static EaseBackOut INSTANCE;
  
  public static EaseBackOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseBackOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * f * (1.70158F + f * 2.70158F);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseBackOut
 * JD-Core Version:    0.7.0.1
 */