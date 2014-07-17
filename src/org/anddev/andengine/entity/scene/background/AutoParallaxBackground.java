package org.anddev.andengine.entity.scene.background;

public class AutoParallaxBackground
  extends ParallaxBackground
{
  private float mParallaxChangePerSecond;
  
  public AutoParallaxBackground(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(paramFloat1, paramFloat2, paramFloat3);
    this.mParallaxChangePerSecond = paramFloat4;
  }
  
  public void onUpdate(float paramFloat)
  {
    super.onUpdate(paramFloat);
    this.mParallaxValue += paramFloat * this.mParallaxChangePerSecond;
  }
  
  public void setParallaxChangePerSecond(float paramFloat)
  {
    this.mParallaxChangePerSecond = paramFloat;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.AutoParallaxBackground
 * JD-Core Version:    0.7.0.1
 */