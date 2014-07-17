package org.anddev.andengine.opengl.view;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class ComponentSizeChooser
  extends BaseConfigChooser
{
  protected int mAlphaSize;
  protected int mBlueSize;
  protected int mDepthSize;
  protected int mGreenSize;
  protected int mRedSize;
  protected int mStencilSize;
  private final int[] mValue = new int[1];
  
  public ComponentSizeChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(new int[] { 12324, paramInt1, 12323, paramInt2, 12322, paramInt3, 12321, paramInt4, 12325, paramInt5, 12326, paramInt6, 12344 });
    this.mRedSize = paramInt1;
    this.mGreenSize = paramInt2;
    this.mBlueSize = paramInt3;
    this.mAlphaSize = paramInt4;
    this.mDepthSize = paramInt5;
    this.mStencilSize = paramInt6;
  }
  
  private int findConfigAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
  {
    if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, this.mValue)) {
      paramInt2 = this.mValue[0];
    }
    return paramInt2;
  }
  
  public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
  {
    Object localObject1 = null;
    int i = 1000;
    int j = paramArrayOfEGLConfig.length;
    int k = 0;
    if (k >= j) {
      return localObject1;
    }
    Object localObject2 = paramArrayOfEGLConfig[k];
    int m = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12324, 0);
    int n = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12323, 0);
    int i1 = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12322, 0);
    int i2 = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12321, 0);
    int i3 = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12325, 0);
    int i4 = findConfigAttrib(paramEGL10, paramEGLDisplay, (EGLConfig)localObject2, 12326, 0);
    int i5 = Math.abs(m - this.mRedSize) + Math.abs(n - this.mGreenSize) + Math.abs(i1 - this.mBlueSize) + Math.abs(i2 - this.mAlphaSize) + Math.abs(i3 - this.mDepthSize) + Math.abs(i4 - this.mStencilSize);
    if (i5 < i) {}
    for (;;)
    {
      k++;
      i = i5;
      localObject1 = localObject2;
      break;
      i5 = i;
      localObject2 = localObject1;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.view.ComponentSizeChooser
 * JD-Core Version:    0.7.0.1
 */