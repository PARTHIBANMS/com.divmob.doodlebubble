package org.anddev.andengine.util.modifier.ease;

public class EaseBackIn
  implements IEaseFunction
{
  private static EaseBackIn INSTANCE;
  private static final float OVERSHOOT_CONSTANT = 1.70158F;
  
  public static EaseBackIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseBackIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return paramFloat * paramFloat * (2.70158F * paramFloat - 1.70158F);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseBackIn
 * JD-Core Version:    0.7.0.1
 */