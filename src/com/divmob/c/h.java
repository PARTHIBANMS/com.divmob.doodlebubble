package com.divmob.c;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  h(c paramc) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.a.g));
    this.a.d.startActivity(localIntent);
    this.a.d();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.h
 * JD-Core Version:    0.7.0.1
 */