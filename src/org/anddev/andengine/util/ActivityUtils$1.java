package org.anddev.andengine.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import java.util.concurrent.Callable;
import org.anddev.andengine.ui.activity.BaseActivity.CancelledException;

class ActivityUtils$1
  extends AsyncTask<Void, Void, T>
{
  private Exception mException = null;
  private ProgressDialog mPD;
  
  ActivityUtils$1(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean, Callable paramCallable, Callback paramCallback1, Callback paramCallback2) {}
  
  public T doInBackground(Void... paramVarArgs)
  {
    try
    {
      Object localObject = this.val$pCallable.call();
      return localObject;
    }
    catch (Exception localException)
    {
      this.mException = localException;
    }
    return null;
  }
  
  public void onPostExecute(T paramT)
  {
    try
    {
      this.mPD.dismiss();
      if (isCancelled()) {
        this.mException = new BaseActivity.CancelledException();
      }
      if (this.mException == null)
      {
        this.val$pCallback.onCallback(paramT);
        super.onPostExecute(paramT);
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Debug.e("Error", localException);
        continue;
        if (this.val$pExceptionCallback == null) {
          Debug.e("Error", this.mException);
        } else {
          this.val$pExceptionCallback.onCallback(this.mException);
        }
      }
    }
  }
  
  public void onPreExecute()
  {
    this.mPD = ProgressDialog.show(this.val$pContext, this.val$pTitle, this.val$pMessage, true, this.val$pCancelable);
    if (this.val$pCancelable) {
      this.mPD.setOnCancelListener(new ActivityUtils.1.1(this, this.val$pExceptionCallback));
    }
    super.onPreExecute();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils.1
 * JD-Core Version:    0.7.0.1
 */