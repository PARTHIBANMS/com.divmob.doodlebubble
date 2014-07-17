package org.anddev.andengine.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import org.anddev.andengine.ui.activity.BaseActivity.CancelledException;
import org.anddev.andengine.util.progress.ProgressCallable;

class ActivityUtils$2
  extends AsyncTask<Void, Integer, T>
{
  private Exception mException = null;
  private ProgressDialog mPD;
  
  ActivityUtils$2(Context paramContext, int paramInt, ProgressCallable paramProgressCallable, Callback paramCallback1, Callback paramCallback2) {}
  
  public T doInBackground(Void... paramVarArgs)
  {
    try
    {
      Object localObject = this.val$pCallable.call(new ActivityUtils.2.1(this));
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
    this.mPD = new ProgressDialog(this.val$pContext);
    this.mPD.setTitle(this.val$pTitleResID);
    this.mPD.setIcon(17301582);
    this.mPD.setIndeterminate(false);
    this.mPD.setProgressStyle(1);
    this.mPD.show();
    super.onPreExecute();
  }
  
  public void onProgressUpdate(Integer... paramVarArgs)
  {
    this.mPD.setProgress(paramVarArgs[0].intValue());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils.2
 * JD-Core Version:    0.7.0.1
 */