package com.divmob.doodlebubble;

import android.content.Intent;
import com.divmob.common.PortrailMenu;
import com.divmob.maegame.f.a.b;
import com.divmob.maegame.f.b.c;
import com.divmob.maegame.g.d;
import com.divmob.maegame.g.e;
import java.util.ArrayList;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.MoveModifier;
import org.anddev.andengine.entity.modifier.ParallelEntityModifier;
import org.anddev.andengine.entity.modifier.ScaleModifier;
import org.anddev.andengine.entity.primitive.BaseRectangle;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.Scene.IOnAreaTouchListener;
import org.anddev.andengine.entity.scene.Scene.ITouchArea;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.entity.text.ChangeableText;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.font.Font;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class MenuActivity
  extends PortrailMenu
  implements Scene.IOnAreaTouchListener
{
  private BuildableBitmapTextureAtlas C;
  private TextureRegion D;
  private TextureRegion E;
  private TextureRegion F;
  private TiledTextureRegion G;
  private TiledTextureRegion H;
  private TiledTextureRegion I;
  private TiledTextureRegion J;
  private com.divmob.maegame.f.a.a K;
  private com.divmob.maegame.f.a.a L;
  private com.divmob.maegame.f.a.a M;
  private ArrayList<i> N;
  private ArrayList<i> O;
  private x P;
  private Rectangle Q;
  private c R;
  private Scene S;
  private com.divmob.maegame.f.a.a T;
  private boolean U;
  private Scene V;
  private com.divmob.maegame.f.a.a W;
  private c X;
  private TiledTextureRegion Y;
  private d Z;
  private Scene aa;
  private ChangeableText ab;
  private Scene ac;
  protected long r;
  
  private void a(int paramInt)
  {
    Intent localIntent = new Intent(this, GameActivity.class);
    localIntent.putExtra("mode", paramInt);
    startActivity(localIntent);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent(this, GameActivity.class);
    localIntent.putExtra("mode", -1);
    localIntent.putExtra("level", paramInt1);
    localIntent.putExtra("world", paramInt2);
    startActivity(localIntent);
  }
  
  private void b(int paramInt)
  {
    int[] arrayOfInt = new com.divmob.doodlebubble.d.a(this).a(paramInt);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = -1 + arrayOfInt.length;
    for (int j = 1;; j++)
    {
      if (i < 0)
      {
        this.ab.setText(localStringBuilder.toString());
        e.a(this.ab, this.s);
        return;
      }
      localStringBuilder.append(j + ". " + arrayOfInt[i] + "\n");
      i--;
    }
  }
  
  private void k()
  {
    this.Q = new Rectangle(0.0F, 0.0F, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h);
    e.a(this.Q, -13421773);
    this.Q.setAlpha(0.7F);
    this.u.attachChild(this.Q);
    e.e(this.Q);
  }
  
  private void o()
  {
    this.S = new Scene();
    this.S.setBackgroundEnabled(false);
    AnimatedSprite localAnimatedSprite = new AnimatedSprite(139.0F, 25.0F, this.G);
    this.S.attachChild(localAnimatedSprite);
    e.a(localAnimatedSprite, this.s);
    this.R = new c(this, this.S, 3, 1, "worlds/diff_0", 1);
    this.R.a(this.E, this.D, this.A);
    this.R.a(1, 1, 60.0F, 100.0F, 0.0F, 0.0F);
    this.R.a("worlds/diff_");
    this.T = new r(this, this, 13.0F, -7 + (this.t - this.h.getTileHeight()), this.h);
    this.T.a(this.S);
    this.S.setOnSceneTouchListener(this);
    this.S.setOnAreaTouchListener(this);
    this.S.setPosition(this.s, 0.0F);
  }
  
  private void p()
  {
    this.V = new Scene();
    this.V.setBackgroundEnabled(false);
    AnimatedSprite localAnimatedSprite = new AnimatedSprite(139.0F, 25.0F, this.H);
    this.V.attachChild(localAnimatedSprite);
    e.a(localAnimatedSprite, this.s);
    this.X = new c(this, this.V, 6, 1, "worlds/world_1", 1);
    this.X.a(this.E, this.D, this.A);
    this.X.a(1, 1, 60.0F, 100.0F, 0.0F, 0.0F);
    this.X.a("worlds/world_", 1);
    this.W = new s(this, this, 13.0F, -7 + (this.t - this.h.getTileHeight()), this.h);
    this.W.a(this.V);
    this.V.setOnSceneTouchListener(this);
    this.V.setOnAreaTouchListener(this);
    this.V.setPosition(this.s, 0.0F);
    this.U = false;
  }
  
  private void q()
  {
    this.X.a();
    BaseRectangle localBaseRectangle = this.X.c();
    t localt = new t(this);
    IEntityModifier[] arrayOfIEntityModifier = new IEntityModifier[2];
    arrayOfIEntityModifier[0] = new MoveModifier(0.3F, this.X.d, -21.200001F, this.X.e, -63.199997F);
    arrayOfIEntityModifier[1] = new ScaleModifier(0.3F, 1.0F, 0.35F);
    localBaseRectangle.registerEntityModifier(new ParallelEntityModifier(localt, arrayOfIEntityModifier));
  }
  
  private void r()
  {
    int i;
    int j;
    for (;;)
    {
      if (this.N.isEmpty())
      {
        i = this.P.a(this.X.e());
        j = 0;
        if (j < com.divmob.common.a.a.c[this.X.e()]) {
          break;
        }
        return;
      }
      i locali1 = (i)this.N.remove(0);
      this.O.add(locali1);
      e.e(locali1);
    }
    i locali2;
    if (this.O.isEmpty())
    {
      locali2 = new i(this.Y, this.Z);
      this.V.attachChild(locali2);
      this.V.registerTouchArea(locali2);
      label118:
      e.d(locali2);
      this.N.add(locali2);
      locali2.a(j + 1);
      locali2.setPosition(30 + 90 * (j % 5), 120 + 90 * (j / 5));
      if (j > i) {
        break label202;
      }
      locali2.a();
    }
    for (;;)
    {
      j++;
      break;
      locali2 = (i)this.O.remove(0);
      break label118;
      label202:
      locali2.b();
    }
  }
  
  private void s()
  {
    this.U = false;
    this.X.b();
    for (int i = 0;; i++)
    {
      if (i >= this.N.size())
      {
        BaseRectangle localBaseRectangle = this.X.c();
        IEntityModifier[] arrayOfIEntityModifier = new IEntityModifier[2];
        arrayOfIEntityModifier[0] = new MoveModifier(0.3F, -21.200001F, this.X.d, -63.199997F, this.X.e);
        arrayOfIEntityModifier[1] = new ScaleModifier(0.3F, 0.35F, 1.0F);
        localBaseRectangle.registerEntityModifier(new ParallelEntityModifier(arrayOfIEntityModifier));
        return;
      }
      e.c((Entity)this.N.get(i));
    }
  }
  
  private void t()
  {
    this.aa = new Scene();
    this.aa.setBackgroundEnabled(false);
    Sprite localSprite1 = new Sprite(0.0F, 0.0F, a("menu/dialog", 512, 512));
    Sprite localSprite2 = new Sprite(0.0F, 0.0F, a("menu/hs_title", 512, 64));
    localSprite2.setPosition(77.0F, 5.0F);
    localSprite1.attachChild(localSprite2);
    e.a(localSprite2, localSprite1.getWidth());
    e.a(localSprite1, this.s, this.t);
    Font localFont = a("yardscale.ttf", 25);
    this.ab = new ChangeableText(0.0F, 103.0F + localSprite1.getY(), localFont, "", 100);
    u localu = new u(this, 0.0F, 0.0F, a("menu/easy_btn", 64, 32));
    v localv = new v(this, 0.0F, 0.0F, a("menu/med_btn", 128, 32));
    k localk = new k(this, 0.0F, 0.0F, a("menu/hard_btn", 128, 32));
    localSprite1.attachChild(localu);
    localSprite1.attachChild(localv);
    localSprite1.attachChild(localk);
    localu.setPosition(27.0F, 65.0F);
    localv.setPosition(127.0F, 65.0F);
    localk.setPosition(258.0F, 65.0F);
    this.aa.registerTouchArea(localu);
    this.aa.registerTouchArea(localv);
    this.aa.registerTouchArea(localk);
    this.aa.attachChild(localSprite1);
    this.aa.attachChild(this.ab);
    new l(this, this, 115.0F + localSprite1.getX(), 315.0F + localSprite1.getY(), this.h).a(this.aa);
    this.aa.setOnSceneTouchListener(this);
  }
  
  private void u()
  {
    b(0);
    a(this.aa, true, true);
  }
  
  private void v()
  {
    this.ac = new Scene();
    this.ac.setBackgroundEnabled(false);
    Sprite localSprite = new Sprite(0.0F, 0.0F, a("help", 512, 1024));
    this.ac.attachChild(localSprite);
    m localm = new m(this, 2.0F, -5 + (this.t - this.h.getTileHeight()), this.h);
    this.ac.attachChild(localm);
    this.ac.registerTouchArea(localm);
  }
  
  protected void a(float paramFloat)
  {
    super.a(0.3F, com.divmob.maegame.b.a.b(0.3F));
    e.e(this.Q);
  }
  
  protected void a(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.a(paramScene, paramBoolean1, false, com.divmob.maegame.b.a.c(0.3F));
    e.d(this.Q);
  }
  
  public void b()
  {
    super.b();
    o();
    p();
    t();
    v();
    k();
  }
  
  public void d()
  {
    a(this.e);
    this.K = new j(this, this, 93.0F, 286.0F, this.G);
    this.L = new o(this, this, 65.0F, 371.0F, this.H);
    this.M = new p(this, this, 96.0F, 459.0F, this.I);
    this.o.setPosition(86.0F, 546.0F);
    this.n.setPosition(125.0F, 643.0F);
    q localq = new q(this, 316.0F, 643.0F, this.J);
    this.u.registerTouchArea(localq);
    this.K.a(this.u, 1);
    this.L.a(this.u, 1);
    this.M.a(this.u, 1);
    this.u.getChild(1).attachChild(localq);
    Sprite localSprite1 = c("menu/fence", 256, 512);
    localSprite1.setPosition(108.0F, 288.0F);
    this.u.getChild(0).attachChild(localSprite1);
    Sprite localSprite2 = new Sprite(105.0F, 633.0F, this.F);
    this.u.getChild(0).attachChild(localSprite2);
  }
  
  public void g()
  {
    this.C = new BuildableBitmapTextureAtlas(512, 1024, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.G = a("menu/endless_btn", 1, 2, this.C);
    this.H = a("menu/story_btn", 1, 2, this.C);
    this.I = a("menu/menu_hs_btn", 1, 2, this.C);
    this.D = a("coverflow/indicate", this.C);
    this.E = a("coverflow/slider", this.C);
    this.Y = a("worlds/lock", 2, 1, this.C);
    this.J = a("menu/help_btn", 1, 2, this.C);
    this.F = a("menu/helptray", this.C);
    c(this.C);
  }
  
  public void h()
  {
    this.Z = new d(this, "violetnumber", 0);
  }
  
  public void i() {}
  
  public void j()
  {
    this.N = new ArrayList();
    this.O = new ArrayList();
    this.P = new x(this);
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, Scene.ITouchArea paramITouchArea, float paramFloat1, float paramFloat2)
  {
    if ((System.currentTimeMillis() - this.r > 7000L) && (paramTouchEvent.getAction() == 0) && (this.U)) {}
    for (int i = 0;; i++)
    {
      if (i >= this.N.size()) {
        return false;
      }
      if ((paramITouchArea.equals(this.N.get(i))) && (((i)this.N.get(i)).a)) {
        a(i, this.X.e());
      }
    }
  }
  
  public void onResumeGame()
  {
    super.onResumeGame();
    if (this.U) {
      s();
    }
  }
  
  public boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent)
  {
    if (paramScene == this.V)
    {
      if ((!this.U) && (!this.X.a(paramScene, paramTouchEvent)))
      {
        if (!this.X.d()) {
          break label55;
        }
        this.U = true;
        q();
      }
      for (;;)
      {
        super.onSceneTouchEvent(paramScene, paramTouchEvent);
        return true;
        label55:
        this.U = false;
      }
    }
    if (paramScene == this.S)
    {
      if (!this.R.a(paramScene, paramTouchEvent)) {
        switch (this.R.f())
        {
        }
      }
      for (;;)
      {
        super.onSceneTouchEvent(paramScene, paramTouchEvent);
        return true;
        a(2);
        continue;
        a(3);
        continue;
        a(5);
      }
    }
    return super.onSceneTouchEvent(paramScene, paramTouchEvent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.MenuActivity
 * JD-Core Version:    0.7.0.1
 */