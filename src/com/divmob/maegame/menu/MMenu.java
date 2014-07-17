package com.divmob.maegame.menu;

import com.divmob.maegame.f.a.a;
import com.divmob.maegame.game.MBaseGameActivity;
import java.util.ArrayList;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.Scene.IOnSceneTouchListener;
import org.anddev.andengine.input.touch.TouchEvent;

public abstract class MMenu
  extends MBaseGameActivity
  implements Scene.IOnSceneTouchListener
{
  private void c()
  {
    for (int i = 0;; i++)
    {
      if (i >= this.x.size()) {
        return;
      }
      ((a)this.x.get(i)).b();
    }
  }
  
  public Scene onLoadScene()
  {
    super.onLoadScene();
    this.u.setOnSceneTouchListener(this);
    return this.u;
  }
  
  public boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent)
  {
    switch (paramTouchEvent.getAction())
    {
    default: 
      return true;
    }
    for (int i = 0;; i++)
    {
      if (i >= this.x.size())
      {
        c();
        return true;
      }
      a locala = (a)this.x.get(i);
      if (locala.c())
      {
        locala.a();
        c();
        return true;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.menu.MMenu
 * JD-Core Version:    0.7.0.1
 */