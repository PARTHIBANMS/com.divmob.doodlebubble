package org.anddev.andengine.util.modifier.ease;

public class EaseCircularInOut
  implements IEaseFunction
{
  private static EaseCircularInOut INSTANCE;
  
  public static EaseCircularInOut getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseCircularInOut();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1 / paramFloat2;
    if (f < 0.5F) {
      return 0.5F * EaseCircularIn.getValue(f * 2.0F);
    }
    return 0.5F + 0.5F * EaseCircularOut.getValue(f * 2.0F - 1.0F);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseCircularInOut
 * JD-Core Version:    0.7.0.1
 */