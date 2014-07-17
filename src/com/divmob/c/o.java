package com.divmob.c;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.ArrayList;

class o
  implements View.OnClickListener
{
  o(i parami) {}
  
  public void onClick(View paramView)
  {
    if (this.a.i.size() >= 1)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.a.h[0]));
      this.a.e.startActivity(localIntent);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.o
 * JD-Core Version:    0.7.0.1
 */