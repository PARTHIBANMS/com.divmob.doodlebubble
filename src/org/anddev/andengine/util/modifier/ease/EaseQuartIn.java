package org.anddev.andengine.util.modifier.ease;

public class EaseQuartIn
  implements IEaseFunction
{
  private static EaseQuartIn INSTANCE;
  
  public static EaseQuartIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseQuartIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return paramFloat * (paramFloat * (paramFloat * paramFloat));
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseQuartIn
 * JD-Core Version:    0.7.0.1
 */