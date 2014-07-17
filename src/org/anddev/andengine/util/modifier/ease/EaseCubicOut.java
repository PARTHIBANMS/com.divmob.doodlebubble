package org.anddev.andengine.util.modifier.ease;

public class EaseCubicOut
  implements IEaseFunction
{
  private static EaseCubicOut INSTANCE;
  
  public static EaseCubicOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCubicOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * f);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCubicOut
 * JD-Core Version:    0.7.0.1
 */