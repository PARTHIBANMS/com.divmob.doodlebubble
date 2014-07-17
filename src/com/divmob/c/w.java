package com.divmob.c;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class w
  implements View.OnClickListener
{
  w(r paramr) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.a.l));
    this.a.h.startActivity(localIntent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.w
 * JD-Core Version:    0.7.0.1
 */