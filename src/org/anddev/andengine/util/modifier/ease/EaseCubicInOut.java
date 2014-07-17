package org.anddev.andengine.util.modifier.ease;

public class EaseCubicInOut
  implements IEaseFunction
{
  private static EaseCubicInOut INSTANCE;
  
  public static EaseCubicInOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCubicInOut();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1 / paramFloat2;
    if (f < 0.5F) {
      return 0.5F * EaseCubicIn.getValue(f * 2.0F);
    }
    return 0.5F + 0.5F * EaseCubicOut.getValue(f * 2.0F - 1.0F);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCubicInOut
 * JD-Core Version:    0.7.0.1
 */