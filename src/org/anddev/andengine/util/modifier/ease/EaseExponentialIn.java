package org.anddev.andengine.util.modifier.ease;

public class EaseExponentialIn
  implements IEaseFunction
{
  private static EaseExponentialIn INSTANCE;
  
  public static EaseExponentialIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseExponentialIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    if (paramFloat == 0.0F) {}
    for (double d = 0.0D;; d = Math.pow(2.0D, 10.0F * (paramFloat - 1.0F)) - 0.001000000047497451D) {
      return (float)d;
    }
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseExponentialIn
 * JD-Core Version:    0.7.0.1
 */