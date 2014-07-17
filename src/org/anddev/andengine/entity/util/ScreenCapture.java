package org.anddev.andengine.entity.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.util.Debug;
import org.anddev.andengine.util.StreamUtils;

public class ScreenCapture
  extends Entity
  implements ScreenGrabber.IScreenGrabberCallback
{
  private String mFilePath;
  private IScreenCaptureCallback mScreenCaptureCallback;
  private final ScreenGrabber mScreenGrabber = new ScreenGrabber();
  
  private static void saveCapture(Bitmap paramBitmap, String paramString)
    throws FileNotFoundException
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString);
      StreamUtils.flushCloseStream(localFileOutputStream);
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      try
      {
        paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
        return;
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
        break label24;
      }
      localFileNotFoundException1 = localFileNotFoundException1;
      localFileOutputStream = null;
    }
    label24:
    Debug.e("Error saving file to: " + paramString, localFileNotFoundException1);
    throw localFileNotFoundException1;
  }
  
  public void capture(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString, IScreenCaptureCallback paramIScreenCaptureCallback)
  {
    this.mFilePath = paramString;
    this.mScreenCaptureCallback = paramIScreenCaptureCallback;
    this.mScreenGrabber.grab(paramInt1, paramInt2, paramInt3, paramInt4, this);
  }
  
  public void capture(int paramInt1, int paramInt2, String paramString, IScreenCaptureCallback paramIScreenCaptureCallback)
  {
    capture(0, 0, paramInt1, paramInt2, paramString, paramIScreenCaptureCallback);
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    this.mScreenGrabber.onManagedDraw(paramGL10, paramCamera);
  }
  
  protected void onManagedUpdate(float paramFloat) {}
  
  public void onScreenGrabFailed(Exception paramException)
  {
    this.mScreenCaptureCallback.onScreenCaptureFailed(this.mFilePath, paramException);
  }
  
  public void onScreenGrabbed(Bitmap paramBitmap)
  {
    try
    {
      saveCapture(paramBitmap, this.mFilePath);
      this.mScreenCaptureCallback.onScreenCaptured(this.mFilePath);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      this.mScreenCaptureCallback.onScreenCaptureFailed(this.mFilePath, localFileNotFoundException);
    }
  }
  
  public void reset() {}
  
  public static abstract interface IScreenCaptureCallback
  {
    public abstract void onScreenCaptureFailed(String paramString, Exception paramException);
    
    public abstract void onScreenCaptured(String paramString);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.util.ScreenCapture
 * JD-Core Version:    0.7.0.1
 */