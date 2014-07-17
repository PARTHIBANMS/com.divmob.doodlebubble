package org.anddev.andengine.util;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class BetaUtils$1
  implements DialogInterface.OnClickListener
{
  BetaUtils$1(Intent paramIntent, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.val$pOkIntent != null) {
      this.val$pActivity.startActivity(this.val$pOkIntent);
    }
    this.val$pActivity.finish();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.BetaUtils.1
 * JD-Core Version:    0.7.0.1
 */