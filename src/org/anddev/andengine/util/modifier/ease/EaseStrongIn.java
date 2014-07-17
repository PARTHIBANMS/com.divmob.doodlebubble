package org.anddev.andengine.util.modifier.ease;

public class EaseStrongIn
  implements IEaseFunction
{
  private static EaseStrongIn INSTANCE;
  
  public static EaseStrongIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseStrongIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return paramFloat * (paramFloat * (paramFloat * (paramFloat * paramFloat)));
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseStrongIn
 * JD-Core Version:    0.7.0.1
 */