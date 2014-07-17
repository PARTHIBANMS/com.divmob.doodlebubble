package com.divmob.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class i
  implements DialogInterface.OnClickListener
{
  i(ClassicMenu paramClassicMenu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(this.a.getString(2131099685)));
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.i
 * JD-Core Version:    0.7.0.1
 */