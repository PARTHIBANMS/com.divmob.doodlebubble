package com.divmob.doodlebubble.c;

import com.divmob.maegame.g.d;
import org.anddev.andengine.util.pool.GenericPool;

public class g
  extends GenericPool<e>
{
  private d a;
  
  public g(d paramd)
  {
    this.a = paramd;
  }
  
  protected e a()
  {
    return new e("", this.a);
  }
  
  protected void a(e parame)
  {
    parame.reset();
    com.divmob.maegame.g.e.d(parame);
  }
  
  protected void b(e parame) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.g
 * JD-Core Version:    0.7.0.1
 */