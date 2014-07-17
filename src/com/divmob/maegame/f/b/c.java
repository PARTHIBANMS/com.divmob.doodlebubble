package com.divmob.maegame.f.b;

import com.divmob.maegame.game.MBaseGameActivity;
import org.anddev.andengine.entity.modifier.AlphaModifier;
import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.MoveModifier;
import org.anddev.andengine.entity.modifier.MoveXModifier;
import org.anddev.andengine.entity.modifier.SequenceEntityModifier;
import org.anddev.andengine.entity.primitive.BaseRectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class c
{
  private static final int k = 26;
  private AlphaModifier A;
  private SequenceEntityModifier B;
  private SequenceEntityModifier C;
  public int a;
  public int b;
  public Scene c;
  public float d = 0.0F;
  public float e = 0.0F;
  public float f;
  private int g;
  private int h;
  private int i;
  private int j;
  private Sprite[] l;
  private Sprite m;
  private b n;
  private float o;
  private String[] p;
  private float q;
  private float r;
  private float s;
  private SequenceEntityModifier t;
  private SequenceEntityModifier u;
  private MoveXModifier v;
  private MoveXModifier w;
  private MoveXModifier x;
  private MoveXModifier y;
  private SequenceEntityModifier z;
  
  public c(MBaseGameActivity paramMBaseGameActivity, Scene paramScene, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    this.c = paramScene;
    this.i = paramInt1;
    int i1 = (paramInt1 - paramInt1 % paramInt2) / paramInt2;
    if (paramInt1 % paramInt2 == 0) {}
    for (int i2 = 0;; i2 = 1)
    {
      this.h = (i2 + i1);
      this.a = paramMBaseGameActivity.s;
      this.b = paramMBaseGameActivity.t;
      this.n = new b(paramMBaseGameActivity, paramScene, paramInt2, paramString);
      this.g = paramInt3;
      return;
    }
  }
  
  private void a(int paramInt, IEntityModifier paramIEntityModifier)
  {
    this.n.a(paramInt + this.j, this.i, this.p);
    this.n.registerEntityModifier(paramIEntityModifier);
    this.j = (paramInt + this.j);
    g();
  }
  
  private void b(TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat)
  {
    int i1 = 0;
    this.j = 0;
    this.l = new Sprite[this.h];
    float f1 = 26 * this.l.length;
    float f2 = 0.5F * (this.a - f1);
    float f3 = -60 + this.b;
    for (;;)
    {
      if (i1 >= this.l.length)
      {
        this.m = new Sprite(0.0F, 0.0F, paramTextureRegion1);
        this.m.setScaleY(paramFloat);
        this.c.attachChild(this.m);
        this.q = (0.5F * (paramTextureRegion1.getWidth() - paramTextureRegion2.getWidth()));
        this.r = (0.5F * (paramTextureRegion1.getHeight() - paramTextureRegion2.getHeight()));
        this.s = this.a;
        g();
        l();
        return;
      }
      this.l[i1] = new Sprite(f2 + i1 * 26, f3, paramTextureRegion2);
      this.l[i1].setScaleY(paramFloat);
      this.c.attachChild(this.l[i1]);
      i1++;
    }
  }
  
  private void g()
  {
    float f1 = this.l[this.j].getX() - this.q;
    float f2 = this.l[this.j].getY() - this.r;
    this.m.clearEntityModifiers();
    this.m.registerEntityModifier(new MoveModifier(0.3F, this.m.getX(), f1, this.m.getY(), f2));
  }
  
  private void h()
  {
    this.n.clearEntityModifiers();
    switch (this.g)
    {
    default: 
      this.n.registerEntityModifier(this.z);
      return;
    }
    this.n.registerEntityModifier(this.t);
  }
  
  private void i()
  {
    this.n.clearEntityModifiers();
    switch (this.g)
    {
    default: 
      this.n.registerEntityModifier(this.z);
      return;
    }
    this.n.registerEntityModifier(this.u);
  }
  
  private void j()
  {
    this.n.clearEntityModifiers();
    switch (this.g)
    {
    default: 
      this.n.registerEntityModifier(this.C);
      return;
    }
    this.n.registerEntityModifier(this.y);
  }
  
  private void k()
  {
    this.n.clearEntityModifiers();
    switch (this.g)
    {
    default: 
      this.n.registerEntityModifier(this.B);
      return;
    }
    this.n.registerEntityModifier(this.x);
  }
  
  private void l()
  {
    switch (this.g)
    {
    default: 
      IEntityModifier[] arrayOfIEntityModifier3 = new IEntityModifier[2];
      arrayOfIEntityModifier3[0] = new AlphaModifier(0.5F, 1.0F, 0.5F);
      arrayOfIEntityModifier3[1] = new AlphaModifier(0.5F, 0.5F, 1.0F);
      this.z = new SequenceEntityModifier(arrayOfIEntityModifier3);
      this.A = new AlphaModifier(1.0F, 0.0F, 1.0F);
      IEntityModifier[] arrayOfIEntityModifier4 = new IEntityModifier[2];
      arrayOfIEntityModifier4[0] = new DelayModifier(0.3F);
      arrayOfIEntityModifier4[1] = new AlphaModifier(1.0F, 1.0F, 0.0F, new f(this));
      this.B = new SequenceEntityModifier(arrayOfIEntityModifier4);
      IEntityModifier[] arrayOfIEntityModifier5 = new IEntityModifier[2];
      arrayOfIEntityModifier5[0] = new DelayModifier(0.3F);
      arrayOfIEntityModifier5[1] = new AlphaModifier(1.0F, 1.0F, 0.0F, new g(this));
      this.C = new SequenceEntityModifier(arrayOfIEntityModifier5);
      return;
    }
    IEntityModifier[] arrayOfIEntityModifier1 = new IEntityModifier[2];
    arrayOfIEntityModifier1[0] = new MoveXModifier(0.25F, this.d, 0.3F * this.a);
    arrayOfIEntityModifier1[1] = new MoveXModifier(0.25F, 0.3F * this.a, this.d);
    this.t = new SequenceEntityModifier(arrayOfIEntityModifier1);
    IEntityModifier[] arrayOfIEntityModifier2 = new IEntityModifier[2];
    arrayOfIEntityModifier2[0] = new MoveXModifier(0.25F, this.d, 0.3F * -this.a);
    arrayOfIEntityModifier2[1] = new MoveXModifier(0.25F, 0.3F * -this.a, this.d);
    this.u = new SequenceEntityModifier(arrayOfIEntityModifier2);
    this.v = new MoveXModifier(0.3F, this.a, this.d);
    this.w = new MoveXModifier(0.3F, -this.s, this.d);
    this.x = new MoveXModifier(0.3F, this.d, -this.s, new d(this));
    this.y = new MoveXModifier(0.3F, this.d, this.a, new e(this));
  }
  
  public void a()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.l.length)
      {
        com.divmob.maegame.g.e.c(this.m);
        return;
      }
      com.divmob.maegame.g.e.c(this.l[i1]);
    }
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.n.a(paramInt1, paramInt2, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.o = (this.b - paramFloat2);
  }
  
  public void a(String paramString)
  {
    a(paramString, 0);
  }
  
  public void a(String paramString, int paramInt)
  {
    this.p = new String[this.i];
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.p.length)
      {
        this.n.a(0, this.i, this.p);
        return;
      }
      this.p[i1] = (paramString + (i1 + paramInt));
    }
  }
  
  public void a(TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, float paramFloat)
  {
    b(paramTextureRegion1, paramTextureRegion2, paramFloat);
  }
  
  public void a(String[] paramArrayOfString)
  {
    this.p = paramArrayOfString;
    this.n.a(0, this.i, paramArrayOfString);
  }
  
  public boolean a(Scene paramScene, TouchEvent paramTouchEvent)
  {
    if ((paramScene != this.c) || (paramTouchEvent.getY() > this.o)) {
      return true;
    }
    switch (paramTouchEvent.getAction())
    {
    default: 
      return true;
    case 0: 
      this.f = paramTouchEvent.getX();
      return true;
    }
    float f1 = paramTouchEvent.getX() - this.f;
    if (f1 * f1 > 250.0F)
    {
      if (f1 > 0.0F) {
        if (this.j <= 0) {
          h();
        }
      }
      for (;;)
      {
        l();
        return true;
        j();
        continue;
        if (this.j >= -1 + this.h) {
          i();
        } else {
          k();
        }
      }
    }
    this.n.a(paramTouchEvent.getX(), paramTouchEvent.getY(), this.j);
    return false;
  }
  
  public void b()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.l.length)
      {
        com.divmob.maegame.g.e.b(this.m);
        return;
      }
      com.divmob.maegame.g.e.b(this.l[i1]);
    }
  }
  
  public BaseRectangle c()
  {
    return this.n;
  }
  
  public boolean d()
  {
    return f() >= 0;
  }
  
  public int e()
  {
    return this.j;
  }
  
  public int f()
  {
    return this.n.a();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.b.c
 * JD-Core Version:    0.7.0.1
 */