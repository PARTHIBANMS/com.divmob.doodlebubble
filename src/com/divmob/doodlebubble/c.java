package com.divmob.doodlebubble;

import com.divmob.doodlebubble.a.b;
import com.divmob.doodlebubble.e.a;
import java.util.ArrayList;
import org.anddev.andengine.engine.handler.IUpdateHandler;

class c
  implements IUpdateHandler
{
  c(GameActivity paramGameActivity) {}
  
  public void onUpdate(float paramFloat)
  {
    if (GameActivity.a(this.a))
    {
      if (GameActivity.b(this.a).g())
      {
        GameActivity.b(this.a).h();
        if ((!GameActivity.b(this.a).g()) || (GameActivity.b(this.a).a(GameActivity.c(this.a)))) {
          GameActivity.d(this.a);
        }
      }
      if ((!GameActivity.e(this.a).e()) && (GameActivity.c(this.a).isEmpty()))
      {
        GameActivity.f(this.a).a(GameActivity.e(this.a).b(), GameActivity.e(this.a).a());
        GameActivity.g(this.a);
      }
    }
    while ((float)(System.currentTimeMillis() - GameActivity.h(this.a)) <= 80.0F) {
      return;
    }
    if (GameActivity.e(this.a).e()) {
      GameActivity.i(this.a);
    }
    for (;;)
    {
      GameActivity.a(this.a, System.currentTimeMillis());
      return;
      GameActivity.j(this.a);
    }
  }
  
  public void reset() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c
 * JD-Core Version:    0.7.0.1
 */