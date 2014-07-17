package com.divmob.doodlebubble;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  h(GameActivity paramGameActivity) {}
  
  public void onClick(View paramView)
  {
    try
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW");
      localIntent1.setData(Uri.parse("http://m.divmob.com/"));
      this.a.startActivity(localIntent1);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException1)
    {
      try
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW");
        localIntent2.setData(Uri.parse("http://www.amazon.com/gp/mas/dl/android?p=com.divmob.spacewar.gamelite&showAll=1"));
        this.a.startActivity(localIntent2);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException2) {}
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.h
 * JD-Core Version:    0.7.0.1
 */