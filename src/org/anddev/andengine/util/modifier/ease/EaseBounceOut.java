package org.anddev.andengine.util.modifier.ease;

public class EaseBounceOut
  implements IEaseFunction
{
  private static EaseBounceOut INSTANCE;
  
  public static EaseBounceOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseBounceOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    if (paramFloat < 0.3636364F) {
      return paramFloat * (7.5625F * paramFloat);
    }
    if (paramFloat < 0.7272728F)
    {
      float f3 = paramFloat - 0.5454546F;
      return 0.75F + f3 * (7.5625F * f3);
    }
    if (paramFloat < 0.9090909F)
    {
      float f2 = paramFloat - 0.8181818F;
      return 0.9375F + f2 * (7.5625F * f2);
    }
    float f1 = paramFloat - 0.9545454F;
    return 0.984375F + f1 * (7.5625F * f1);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseBounceOut
 * JD-Core Version:    0.7.0.1
 */