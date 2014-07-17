package org.anddev.andengine.util.modifier.ease;

public class EaseQuadOut
  implements IEaseFunction
{
  private static EaseQuadOut INSTANCE;
  
  public static EaseQuadOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseQuadOut();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return -paramFloat * (paramFloat - 2.0F);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseQuadOut
 * JD-Core Version:    0.7.0.1
 */