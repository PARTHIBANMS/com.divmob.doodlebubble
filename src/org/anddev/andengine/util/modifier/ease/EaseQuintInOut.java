package org.anddev.andengine.util.modifier.ease;

public class EaseQuintInOut
  implements IEaseFunction
{
  private static EaseQuintInOut INSTANCE;
  
  public static EaseQuintInOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseQuintInOut();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1 / paramFloat2;
    if (f < 0.5F) {
      return 0.5F * EaseQuintIn.getValue(f * 2.0F);
    }
    return 0.5F + 0.5F * EaseQuintOut.getValue(f * 2.0F - 1.0F);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseQuintInOut
 * JD-Core Version:    0.7.0.1
 */