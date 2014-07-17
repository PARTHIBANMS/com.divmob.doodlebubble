package org.anddev.andengine.util;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class BetaUtils$2
  implements DialogInterface.OnClickListener
{
  BetaUtils$2(Intent paramIntent, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.val$pCancelIntent != null) {
      this.val$pActivity.startActivity(this.val$pCancelIntent);
    }
    this.val$pActivity.finish();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.BetaUtils.2
 * JD-Core Version:    0.7.0.1
 */