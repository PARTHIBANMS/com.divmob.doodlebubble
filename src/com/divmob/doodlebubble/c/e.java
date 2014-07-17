package com.divmob.doodlebubble.c;

import com.divmob.doodlebubble.GameActivity;
import com.divmob.doodlebubble.a.a;
import com.divmob.maegame.g.c;
import com.divmob.maegame.g.d;
import org.anddev.andengine.entity.modifier.AlphaModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.MoveYModifier;
import org.anddev.andengine.entity.modifier.ParallelEntityModifier;

public class e
  extends c
{
  public e(String paramString, d paramd)
  {
    super(paramString, paramd);
  }
  
  private void a()
  {
    com.divmob.maegame.g.e.e(this);
    GameActivity.j.b(this);
  }
  
  public void a(a parama, int paramInt)
  {
    setScale(3.0F);
    a(paramInt);
    setPosition(parama);
    clearEntityModifiers();
    com.divmob.maegame.g.e.a(this);
    float f = this.mY - 100.0F;
    IEntityModifier[] arrayOfIEntityModifier = new IEntityModifier[2];
    arrayOfIEntityModifier[0] = new MoveYModifier(1.5F, this.mY, f, new f(this));
    arrayOfIEntityModifier[1] = new AlphaModifier(1.5F, 1.0F, 0.3F);
    registerEntityModifier(new ParallelEntityModifier(arrayOfIEntityModifier));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.e
 * JD-Core Version:    0.7.0.1
 */