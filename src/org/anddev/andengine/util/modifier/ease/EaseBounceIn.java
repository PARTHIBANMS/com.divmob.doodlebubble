package org.anddev.andengine.util.modifier.ease;

public class EaseBounceIn
  implements IEaseFunction
{
  private static EaseBounceIn INSTANCE;
  
  public static EaseBounceIn getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseBounceIn();
    }
    return INSTANCE;
  }
  
  public static float getValue(float paramFloat)
  {
    return 1.0F - EaseBounceOut.getValue(1.0F - paramFloat);
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return getValue(paramFloat1 / paramFloat2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseBounceIn
 * JD-Core Version:    0.7.0.1
 */