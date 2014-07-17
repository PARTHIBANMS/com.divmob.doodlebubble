package org.anddev.andengine.engine.camera;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class CameraFactory
{
  public static Camera createPixelPerfectCamera(Context paramContext, float paramFloat1, float paramFloat2)
  {
    DisplayMetrics localDisplayMetrics = getDisplayMetrics(paramContext);
    float f1 = localDisplayMetrics.widthPixels;
    float f2 = localDisplayMetrics.heightPixels;
    return new Camera(paramFloat1 - f1 * 0.5F, paramFloat2 - 0.5F * f2, f1, f2);
  }
  
  private static DisplayMetrics getDisplayMetrics(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.camera.CameraFactory
 * JD-Core Version:    0.7.0.1
 */