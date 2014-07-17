package org.anddev.andengine.util.modifier.ease;

public class EaseCubicIn
  implements IEaseFunction
{
  private static EaseCubicIn INSTANCE;
  
  public static EaseCubicIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCubicIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return paramFloat * (paramFloat * paramFloat);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCubicIn
 * JD-Core Version:    0.7.0.1
 */