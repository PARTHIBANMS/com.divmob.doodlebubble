package com.divmob.doodlebubble.c;

import com.divmob.maegame.g.c;
import com.divmob.maegame.g.d;
import com.divmob.maegame.g.e;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.scene.Scene;

public class a
  extends c
{
  private static final String[] a = { "Bingo!", "Nice!", "Excellent!", "Good!", "WOW!", "Bravo!", "Really Cool!", "Great Work!", "Amazing!", "Awesome!" };
  private boolean b;
  
  public a(d paramd)
  {
    super("", paramd);
    setPosition(0.0F, 436.0F);
  }
  
  public void a()
  {
    if (!this.b) {
      clearEntityModifiers();
    }
    this.b = true;
    e.d(this);
    a(a[org.anddev.andengine.util.MathUtils.random(0, 4)]);
    b(com.divmob.maegame.a.a.g);
    registerEntityModifier(new DelayModifier(1.5F, new b(this)));
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.a
 * JD-Core Version:    0.7.0.1
 */