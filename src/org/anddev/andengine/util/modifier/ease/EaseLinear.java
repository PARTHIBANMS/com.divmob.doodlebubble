package org.anddev.andengine.util.modifier.ease;

public class EaseLinear
  implements IEaseFunction
{
  private static EaseLinear INSTANCE;
  
  public static EaseLinear getInstance()
  {
    if (INSTANCE == null) {
      INSTANCE = new EaseLinear();
    }
    return INSTANCE;
  }
  
  public float getPercentage(float paramFloat1, float paramFloat2)
  {
    return paramFloat1 / paramFloat2;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ease.EaseLinear
 * JD-Core Version:    0.7.0.1
 */