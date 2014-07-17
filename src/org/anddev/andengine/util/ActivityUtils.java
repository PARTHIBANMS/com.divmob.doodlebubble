package org.anddev.andengine.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.util.concurrent.Callable;
import org.anddev.andengine.util.progress.ProgressCallable;

public class ActivityUtils
{
  public static <T> void doAsync(Context paramContext, int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback)
  {
    doAsync(paramContext, paramInt1, paramInt2, paramCallable, paramCallback, null, false);
  }
  
  public static <T> void doAsync(Context paramContext, int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    doAsync(paramContext, paramInt1, paramInt2, paramCallable, paramCallback, paramCallback1, false);
  }
  
  public static <T> void doAsync(Context paramContext, int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1, boolean paramBoolean)
  {
    doAsync(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramCallable, paramCallback, paramCallback1, paramBoolean);
  }
  
  public static <T> void doAsync(Context paramContext, int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback, boolean paramBoolean)
  {
    doAsync(paramContext, paramInt1, paramInt2, paramCallable, paramCallback, null, paramBoolean);
  }
  
  public static <T> void doAsync(Context paramContext, int paramInt1, int paramInt2, AsyncCallable<T> paramAsyncCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    paramAsyncCallable.call(new ActivityUtils.3(ProgressDialog.show(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2)), paramCallback), paramCallback1);
  }
  
  public static <T> void doAsync(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, Callable<T> paramCallable, Callback<T> paramCallback)
  {
    doAsync(paramContext, paramCharSequence1, paramCharSequence2, paramCallable, paramCallback, null, false);
  }
  
  public static <T> void doAsync(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, Callable<T> paramCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    doAsync(paramContext, paramCharSequence1, paramCharSequence2, paramCallable, paramCallback, paramCallback1, false);
  }
  
  public static <T> void doAsync(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, Callable<T> paramCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1, boolean paramBoolean)
  {
    new ActivityUtils.1(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean, paramCallable, paramCallback, paramCallback1).execute(null);
  }
  
  public static <T> void doAsync(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, Callable<T> paramCallable, Callback<T> paramCallback, boolean paramBoolean)
  {
    doAsync(paramContext, paramCharSequence1, paramCharSequence2, paramCallable, paramCallback, null, paramBoolean);
  }
  
  public static <T> void doProgressAsync(Context paramContext, int paramInt, ProgressCallable<T> paramProgressCallable, Callback<T> paramCallback)
  {
    doProgressAsync(paramContext, paramInt, paramProgressCallable, paramCallback, null);
  }
  
  public static <T> void doProgressAsync(Context paramContext, int paramInt, ProgressCallable<T> paramProgressCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    new ActivityUtils.2(paramContext, paramInt, paramProgressCallable, paramCallback, paramCallback1).execute(null);
  }
  
  public static void keepScreenOn(Activity paramActivity)
  {
    paramActivity.getWindow().addFlags(128);
  }
  
  public static void requestFullscreen(Activity paramActivity)
  {
    Window localWindow = paramActivity.getWindow();
    localWindow.addFlags(1024);
    localWindow.clearFlags(2048);
    localWindow.requestFeature(1);
  }
  
  public static void setScreenBrightness(Activity paramActivity, float paramFloat)
  {
    Window localWindow = paramActivity.getWindow();
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    localLayoutParams.screenBrightness = paramFloat;
    localWindow.setAttributes(localLayoutParams);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils
 * JD-Core Version:    0.7.0.1
 */