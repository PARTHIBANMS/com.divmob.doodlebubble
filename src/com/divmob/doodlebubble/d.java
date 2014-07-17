package com.divmob.doodlebubble;

import com.divmob.c.c;
import com.google.android.gms.ads.InterstitialAd;
import java.util.Random;

class d
  implements Runnable
{
  d(GameActivity paramGameActivity) {}
  
  public void run()
  {
    if (new Random(System.currentTimeMillis()).nextInt(100) <= 40)
    {
      if ((GameActivity.k() < 5) && (new Random(System.currentTimeMillis()).nextInt(100) <= 60) && (GameActivity.k(this.a) != null) && (GameActivity.k(this.a).isLoaded()))
      {
        GameActivity.a(1 + GameActivity.k());
        GameActivity.k(this.a).show();
      }
    }
    else {
      return;
    }
    GameActivity.l(this.a).b();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.d
 * JD-Core Version:    0.7.0.1
 */