package org.anddev.andengine.util;

import android.app.ProgressDialog;

class ActivityUtils$3
  implements Callback<T>
{
  ActivityUtils$3(ProgressDialog paramProgressDialog, Callback paramCallback) {}
  
  public void onCallback(T paramT)
  {
    try
    {
      this.val$pd.dismiss();
      this.val$pCallback.onCallback(paramT);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Debug.e("Error", localException);
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils.3
 * JD-Core Version:    0.7.0.1
 */