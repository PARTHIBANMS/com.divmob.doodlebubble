package org.anddev.andengine.entity.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;

public class ScreenGrabber
  extends Entity
{
  private int mGrabHeight;
  private int mGrabWidth;
  private int mGrabX;
  private int mGrabY;
  private IScreenGrabberCallback mScreenGrabCallback;
  private boolean mScreenGrabPending = false;
  
  private static Bitmap grab(int paramInt1, int paramInt2, int paramInt3, int paramInt4, GL10 paramGL10)
  {
    int[] arrayOfInt1 = new int[paramInt3 * (paramInt2 + paramInt4)];
    IntBuffer localIntBuffer = IntBuffer.wrap(arrayOfInt1);
    localIntBuffer.position(0);
    paramGL10.glReadPixels(paramInt1, 0, paramInt3, paramInt2 + paramInt4, 6408, 5121, localIntBuffer);
    int[] arrayOfInt2 = new int[paramInt3 * paramInt4];
    int i = 0;
    if (i >= paramInt4) {
      return Bitmap.createBitmap(arrayOfInt2, paramInt3, paramInt4, Bitmap.Config.ARGB_8888);
    }
    for (int j = 0;; j++)
    {
      if (j >= paramInt3)
      {
        i++;
        break;
      }
      int k = arrayOfInt1[(j + paramInt3 * (paramInt2 + i))];
      int m = (0xFF0000 & k) >> 16;
      int n = (k & 0xFF) << 16;
      int i1 = k & 0xFF00FF00;
      arrayOfInt2[(j + paramInt3 * (-1 + (paramInt4 - i)))] = (m | i1 | n);
    }
  }
  
  public void grab(int paramInt1, int paramInt2, int paramInt3, int paramInt4, IScreenGrabberCallback paramIScreenGrabberCallback)
  {
    this.mGrabX = paramInt1;
    this.mGrabY = paramInt2;
    this.mGrabWidth = paramInt3;
    this.mGrabHeight = paramInt4;
    this.mScreenGrabCallback = paramIScreenGrabberCallback;
    this.mScreenGrabPending = true;
  }
  
  public void grab(int paramInt1, int paramInt2, IScreenGrabberCallback paramIScreenGrabberCallback)
  {
    grab(0, 0, paramInt1, paramInt2, paramIScreenGrabberCallback);
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    if (this.mScreenGrabPending) {}
    try
    {
      Bitmap localBitmap = grab(this.mGrabX, this.mGrabY, this.mGrabWidth, this.mGrabHeight, paramGL10);
      this.mScreenGrabCallback.onScreenGrabbed(localBitmap);
      this.mScreenGrabPending = false;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        this.mScreenGrabCallback.onScreenGrabFailed(localException);
      }
    }
  }
  
  protected void onManagedUpdate(float paramFloat) {}
  
  public void reset() {}
  
  public static abstract interface IScreenGrabberCallback
  {
    public abstract void onScreenGrabFailed(Exception paramException);
    
    public abstract void onScreenGrabbed(Bitmap paramBitmap);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.util.ScreenGrabber
 * JD-Core Version:    0.7.0.1
 */