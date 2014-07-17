package org.anddev.andengine.engine.options.resolutionpolicy;

import android.view.View.MeasureSpec;
import org.anddev.andengine.opengl.view.RenderSurfaceView;

public class RatioResolutionPolicy
  extends BaseResolutionPolicy
{
  private final float mRatio;
  
  public RatioResolutionPolicy(float paramFloat)
  {
    this.mRatio = paramFloat;
  }
  
  public RatioResolutionPolicy(float paramFloat1, float paramFloat2)
  {
    this.mRatio = (paramFloat1 / paramFloat2);
  }
  
  public void onMeasure(RenderSurfaceView paramRenderSurfaceView, int paramInt1, int paramInt2)
  {
    BaseResolutionPolicy.throwOnNotMeasureSpecEXACTLY(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    float f = this.mRatio;
    if (i / j < f) {
      j = Math.round(i / f);
    }
    for (;;)
    {
      paramRenderSurfaceView.setMeasuredDimensionProxy(i, j);
      return;
      i = Math.round(f * j);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.options.resolutionpolicy.RatioResolutionPolicy
 * JD-Core Version:    0.7.0.1
 */