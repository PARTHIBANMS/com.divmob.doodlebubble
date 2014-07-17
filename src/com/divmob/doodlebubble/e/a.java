package com.divmob.doodlebubble.e;

import com.divmob.maegame.g.c;
import com.divmob.maegame.g.d;
import java.util.ArrayList;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.MathUtils;

public class a
{
  public ArrayList<Integer> a;
  private c b;
  private c c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private int h;
  private int i;
  private Sprite j;
  private int k;
  
  public a(TextureRegion paramTextureRegion, d paramd)
  {
    this.j = new Sprite(0.0F, 0.0F, paramTextureRegion);
    this.c = new c(9.0F, 6.0F, "123", paramd);
    this.b = new c(9.0F, 33.0F, "", paramd);
    this.a = new ArrayList();
    this.f = 0;
  }
  
  private void h()
  {
    this.c.a("# " + (1 + this.i) + " - " + (1 + this.e));
  }
  
  public int a()
  {
    return this.e;
  }
  
  public void a(int paramInt)
  {
    this.d = (paramInt + this.d);
    this.b.a("$ " + this.d);
    if (this.g)
    {
      int m = this.d / 10000;
      if (m > this.e)
      {
        int n = ((Integer)this.a.get(-1 + this.a.size())).intValue();
        if (n < com.divmob.common.a.a.a) {
          this.a.add(Integer.valueOf(n + 1));
        }
        this.e = m;
        h();
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    this.f = paramInt1;
    this.e = paramInt1;
    this.i = paramInt2;
    h();
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this.j);
    paramScene.getChild(paramInt).attachChild(this.b);
    paramScene.getChild(paramInt).attachChild(this.c);
  }
  
  public void a(boolean paramBoolean, int paramInt)
  {
    this.g = paramBoolean;
    if (paramBoolean) {
      this.h = paramInt;
    }
  }
  
  public int b()
  {
    return this.i;
  }
  
  public void b(int paramInt)
  {
    this.a.add(Integer.valueOf(paramInt));
  }
  
  public int c()
  {
    return this.d;
  }
  
  public void d()
  {
    a(1 + this.e, this.i);
  }
  
  public boolean e()
  {
    return this.g;
  }
  
  public int f()
  {
    try
    {
      this.k = ((Integer)this.a.get(MathUtils.random(0, -1 + this.a.size()))).intValue();
      label30:
      return this.k;
    }
    catch (Exception localException)
    {
      break label30;
    }
  }
  
  public void g()
  {
    a(this.f, this.i);
    this.d = 0;
    a(0);
    this.a.clear();
    boolean bool = this.g;
    int m = 0;
    if (bool) {}
    for (;;)
    {
      if (m > this.h) {
        return;
      }
      b(m);
      m++;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.e.a
 * JD-Core Version:    0.7.0.1
 */