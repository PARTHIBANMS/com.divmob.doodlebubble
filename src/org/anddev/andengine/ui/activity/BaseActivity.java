package org.anddev.andengine.ui.activity;

import android.app.Activity;
import java.util.concurrent.Callable;
import org.anddev.andengine.util.ActivityUtils;
import org.anddev.andengine.util.AsyncCallable;
import org.anddev.andengine.util.Callback;
import org.anddev.andengine.util.progress.ProgressCallable;

public abstract class BaseActivity
  extends Activity
{
  protected <T> void doAsync(int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback)
  {
    doAsync(paramInt1, paramInt2, paramCallable, paramCallback, null);
  }
  
  protected <T> void doAsync(int paramInt1, int paramInt2, Callable<T> paramCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    ActivityUtils.doAsync(this, paramInt1, paramInt2, paramCallable, paramCallback, paramCallback1);
  }
  
  protected <T> void doAsync(int paramInt1, int paramInt2, AsyncCallable<T> paramAsyncCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    ActivityUtils.doAsync(this, paramInt1, paramInt2, paramAsyncCallable, paramCallback, paramCallback1);
  }
  
  protected <T> void doProgressAsync(int paramInt, ProgressCallable<T> paramProgressCallable, Callback<T> paramCallback)
  {
    doProgressAsync(paramInt, paramProgressCallable, paramCallback, null);
  }
  
  protected <T> void doProgressAsync(int paramInt, ProgressCallable<T> paramProgressCallable, Callback<T> paramCallback, Callback<Exception> paramCallback1)
  {
    ActivityUtils.doProgressAsync(this, paramInt, paramProgressCallable, paramCallback, paramCallback1);
  }
  
  public static class CancelledException
    extends Exception
  {
    private static final long serialVersionUID = -78123211381435596L;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.activity.BaseActivity
 * JD-Core Version:    0.7.0.1
 */