package org.anddev.andengine.util.modifier.ease;

public class EaseExponentialOut
  implements IEaseFunction
{
  private static EaseExponentialOut INSTANCE;
  
  public static EaseExponentialOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseExponentialOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      return 1.0F;
    }
    return 1.0F + -(float)Math.pow(2.0D, -10.0F * paramFloat);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseExponentialOut
 * JD-Core Version:    0.7.0.1
 */