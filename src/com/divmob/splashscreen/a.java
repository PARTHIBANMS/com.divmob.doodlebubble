package com.divmob.splashscreen;

import android.content.Intent;
import com.divmob.doodlebubble.MenuActivity;
import org.anddev.andengine.engine.handler.IUpdateHandler;

class a
  implements IUpdateHandler
{
  a(Splash paramSplash) {}
  
  public void onUpdate(float paramFloat)
  {
    if (Splash.a(this.a) < 100)
    {
      if (Splash.a(this.a) >= 20) {
        break label35;
      }
      Splash.a(this.a, System.currentTimeMillis());
    }
    label35:
    while (System.currentTimeMillis() - Splash.b(this.a) <= 2000L) {
      return;
    }
    Splash.a(this.a, 1000);
    this.a.startActivity(new Intent(this.a, MenuActivity.class));
    this.a.finish();
  }
  
  public void reset() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.splashscreen.a
 * JD-Core Version:    0.7.0.1
 */