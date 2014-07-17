package org.anddev.andengine.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

class GenericInputDialogBuilder$2
  implements DialogInterface.OnClickListener
{
  GenericInputDialogBuilder$2(GenericInputDialogBuilder paramGenericInputDialogBuilder) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.this$0.mOnCancelListener.onCancel(paramDialogInterface);
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.dialog.GenericInputDialogBuilder.2
 * JD-Core Version:    0.7.0.1
 */