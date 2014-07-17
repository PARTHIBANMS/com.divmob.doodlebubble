package com.divmob.d;

import android.content.Intent;
import android.net.Uri;
import org.anddev.andengine.ui.activity.BaseGameActivity;

class e
  implements Runnable
{
  e(a parama, int paramInt) {}
  
  public void run()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(a.c()[this.b][1]));
    a.b(this.a).startActivity(localIntent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.d.e
 * JD-Core Version:    0.7.0.1
 */