package org.anddev.andengine.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.Editable;
import android.widget.EditText;
import android.widget.Toast;
import org.anddev.andengine.util.Callback;
import org.anddev.andengine.util.Debug;

class GenericInputDialogBuilder$1
  implements DialogInterface.OnClickListener
{
  GenericInputDialogBuilder$1(GenericInputDialogBuilder paramGenericInputDialogBuilder, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Object localObject = this.this$0.generateResult(this.val$etInput.getText().toString());
      this.this$0.mSuccessCallback.onCallback(localObject);
      paramDialogInterface.dismiss();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Debug.e("Error in GenericInputDialogBuilder.generateResult()", localIllegalArgumentException);
      Toast.makeText(this.this$0.mContext, GenericInputDialogBuilder.access$0(this.this$0), 0).show();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.dialog.GenericInputDialogBuilder.1
 * JD-Core Version:    0.7.0.1
 */