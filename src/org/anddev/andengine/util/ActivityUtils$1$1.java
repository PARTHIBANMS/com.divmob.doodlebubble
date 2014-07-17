package org.anddev.andengine.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import org.anddev.andengine.ui.activity.BaseActivity.CancelledException;

class ActivityUtils$1$1
  implements DialogInterface.OnCancelListener
{
  ActivityUtils$1$1(ActivityUtils.1 param1, Callback paramCallback) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.val$pExceptionCallback.onCallback(new BaseActivity.CancelledException());
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils.1.1
 * JD-Core Version:    0.7.0.1
 */