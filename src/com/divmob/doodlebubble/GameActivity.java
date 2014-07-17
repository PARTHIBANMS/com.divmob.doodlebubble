package com.divmob.doodlebubble;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.widget.Button;
import com.divmob.common.PortrailGame;
import com.divmob.doodlebubble.c.g;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.analytics.HitBuilders.AppViewBuilder;
import com.google.android.gms.analytics.Tracker;
import java.util.ArrayList;
import java.util.HashMap;
import org.anddev.andengine.audio.sound.Sound;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.Scene.IOnSceneTouchListener;
import org.anddev.andengine.entity.scene.Scene.ITouchArea;
import org.anddev.andengine.entity.scene.background.SpriteBackground;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.util.MathUtils;

public class GameActivity
  extends PortrailGame
  implements Scene.IOnSceneTouchListener
{
  private static final int C = 9;
  private static final int D = 3;
  private static final int E = 0;
  private static final int F = 1;
  private static final int G = 2;
  private static int ak = 0;
  public static float h = 0.0F;
  public static com.divmob.doodlebubble.c.d i;
  public static g j;
  private static final float o = 0.3F;
  private static final float p = 5.0F;
  private static final int q = 0;
  private static final int r = 1;
  private BuildableBitmapTextureAtlas H;
  private BuildableBitmapTextureAtlas I;
  private TextureRegion J;
  private TiledTextureRegion K;
  private TextureRegion L;
  private TextureRegion M;
  private TextureRegion N;
  private HashMap<String, com.divmob.doodlebubble.a.a> O;
  private ArrayList<com.divmob.doodlebubble.a.a> P;
  private ArrayList<com.divmob.doodlebubble.a.a> Q;
  private ArrayList<com.divmob.doodlebubble.a.a> R;
  private com.divmob.doodlebubble.a.a S;
  private com.divmob.doodlebubble.a.b T;
  private boolean U = false;
  private com.divmob.doodlebubble.b.a V;
  private com.divmob.doodlebubble.e.a W;
  private int[] X;
  private long Y;
  private x Z;
  private Scene aA;
  private TextureRegion aB;
  private TextureRegion aC;
  private TextureRegion aD;
  private TextureRegion aE;
  private TextureRegion aF;
  private Sprite aG;
  private Sprite aH;
  private com.divmob.maegame.g.c aI;
  private BuildableBitmapTextureAtlas aJ;
  private Scene aK;
  private Button aL = null;
  private float aa;
  private Sprite ab;
  private int ac;
  private int ad;
  private int ae;
  private int af;
  private int ag;
  private com.divmob.c.c ah;
  private InterstitialAd ai = null;
  private AdView aj = null;
  private com.divmob.maegame.g.d al;
  private Sound am;
  private Sound an;
  private Sound ao;
  private Sound ap;
  private Sound aq;
  private long ar;
  private Scene as;
  private TextureRegion at;
  private TextureRegion au;
  private TextureRegion av;
  private Sprite aw;
  private Sprite ax;
  private com.divmob.maegame.g.c ay;
  private BuildableBitmapTextureAtlas az;
  Sprite k;
  Sprite l;
  Sprite m;
  Sprite n;
  
  private void A()
  {
    new com.divmob.doodlebubble.d.a(this).a(this.ad, this.W.c());
  }
  
  private void B()
  {
    this.aJ = new BuildableBitmapTextureAtlas(512, 512, TextureOptions.BILINEAR);
    this.aE = a("rs/world_completed", this.aJ);
    this.aF = a("rs/finish_world_text", this.aJ);
    this.aC = a("rs/level_completed", this.aJ);
    this.aD = a("rs/u_scored", 256, 64);
    this.aB = a("rs/continue", this.aJ);
    c(this.aJ);
  }
  
  private void C()
  {
    this.aA = new Scene();
    this.aA.setBackgroundEnabled(false);
    Rectangle localRectangle = new Rectangle(0.0F, 0.0F, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h);
    com.divmob.maegame.g.e.a(localRectangle, -13421773);
    localRectangle.setAlpha(0.7F);
    this.aA.attachChild(localRectangle);
    Sprite localSprite = c("rs/result_dialog", 512, 1024);
    localSprite.setPosition(0.0F, 60.0F);
    com.divmob.maegame.g.e.a(localSprite, this.s);
    this.aA.attachChild(localSprite);
    this.k = new Sprite(0.0F, 238.0F, this.aC);
    localSprite.attachChild(this.k);
    com.divmob.maegame.g.e.a(this.k, localSprite.getWidth());
    this.l = new Sprite(0.0F, 238.0F, this.aE);
    localSprite.attachChild(this.l);
    com.divmob.maegame.g.e.a(this.l, localSprite.getWidth());
    this.m = new Sprite(0.0F, 310.0F, this.aD);
    localSprite.attachChild(this.m);
    com.divmob.maegame.g.e.a(this.m, localSprite.getWidth());
    this.n = new Sprite(0.0F, 310.0F, this.aF);
    localSprite.attachChild(this.n);
    com.divmob.maegame.g.e.a(this.n, localSprite.getWidth());
    this.aI = new com.divmob.maegame.g.c(0.0F, 367.0F + localSprite.getY(), "", this.al);
    this.aA.attachChild(this.aI);
    this.aH = new Sprite(69.0F, 510.0F, this.av);
    this.aG = new Sprite(287.0F, 510.0F, this.aB);
    this.aA.registerTouchArea(this.aG);
    this.aA.registerTouchArea(this.aH);
    this.aA.setPosition(com.divmob.maegame.a.a.g, 0.0F);
    localSprite.attachChild(this.aG);
    localSprite.attachChild(this.aH);
    this.aA.setOnAreaTouchListener(this);
  }
  
  private void D()
  {
    this.aK = new Scene();
    this.aK.setBackgroundEnabled(false);
    Sprite localSprite = new Sprite(0.0F, 0.0F, a("help", 512, 1024));
    this.aK.attachChild(localSprite);
    TiledTextureRegion localTiledTextureRegion = a("menu/back_btn", 1, 2, 128, 128);
    f localf = new f(this, 2.0F, -5 + (this.t - localTiledTextureRegion.getTileHeight()), localTiledTextureRegion);
    this.aK.attachChild(localf);
    this.aK.registerTouchArea(localf);
  }
  
  private com.divmob.doodlebubble.a.a a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    com.divmob.doodlebubble.a.a locala;
    if (this.Q.isEmpty())
    {
      locala = new com.divmob.doodlebubble.a.a(this.K);
      locala.a(this.u, 0);
    }
    for (;;)
    {
      locala.a(paramInt1, paramInt2);
      if (!paramBoolean)
      {
        Point localPoint = b(paramInt1, paramInt2);
        locala.a(localPoint.x, localPoint.y);
      }
      this.O.put(locala.c + "," + locala.d, locala);
      this.P.add(locala);
      return locala;
      locala = (com.divmob.doodlebubble.a.a)this.Q.remove(0);
      locala.b();
    }
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    com.divmob.maegame.d.a.a(this.am);
    this.U = true;
    float f1 = paramFloat1 - 0.5F * this.s;
    if (f1 > 0.0F) {}
    for (float f2 = f1 + 12.0F;; f2 = f1 - 12.0F)
    {
      float f3 = this.t - paramFloat2;
      float f4 = (float)Math.sqrt(f2 * f2 + f3 * f3);
      this.T.a(18.0F * (f2 / f4), 18.0F * -(f3 / f4));
      this.V.setRotation(-MathUtils.radToDeg((float)Math.acos(f2 / f4)));
      return;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1 = getResources().getIdentifier("w" + (paramInt2 + 1) + "_" + (paramInt1 + 1), "array", getPackageName());
    String[] arrayOfString = getResources().getStringArray(i1);
    for (int i2 = 0;; i2++)
    {
      if (i2 >= arrayOfString.length) {
        return;
      }
      a(i2, arrayOfString[i2]);
    }
  }
  
  private void a(int paramInt, String paramString)
  {
    int i1 = 0;
    if (i1 >= paramString.length()) {
      return;
    }
    int i2 = Integer.parseInt(paramString.charAt(i1));
    int i3;
    label48:
    com.divmob.doodlebubble.a.a locala;
    if (i2 > 0)
    {
      if (paramInt % 2 != 0) {
        break label111;
      }
      i3 = i1;
      locala = a(paramInt, i3, true);
      if (i2 <= com.divmob.common.a.a.a) {
        break label119;
      }
    }
    label111:
    label119:
    for (int i4 = i2 - 1;; i4 = i2)
    {
      locala.a(i4 - 1);
      int[] arrayOfInt = this.X;
      int i5 = i4 - 1;
      arrayOfInt[i5] = (1 + arrayOfInt[i5]);
      i1++;
      break;
      i3 = i1 + 1;
      break label48;
    }
  }
  
  private void a(com.divmob.doodlebubble.a.a parama)
  {
    parama.e = true;
    this.R.add(parama);
    int i1 = parama.c % 2;
    int i2 = parama.f();
    int i3 = -1;
    if (i3 > 1) {
      return;
    }
    for (int i4 = -1;; i4++)
    {
      if (i4 > 1)
      {
        i3++;
        break;
      }
      if (((i3 != 0) || (i4 != 0)) && ((i3 == 0) || (i4 == 0) || ((i4 == 1) && (i1 == 0)) || ((i4 == -1) && (i1 == 1))))
      {
        com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.O.get(i3 + parama.c + "," + (i4 + parama.d));
        if ((locala != null) && (i2 == locala.f()) && (!locala.e)) {
          a(locala);
        }
      }
    }
  }
  
  private void a(com.divmob.doodlebubble.a.a parama, boolean paramBoolean)
  {
    if (!this.W.e())
    {
      int[] arrayOfInt = this.X;
      int i1 = parama.f();
      arrayOfInt[i1] = (-1 + arrayOfInt[i1]);
      if (this.X[parama.f()] <= 0) {
        this.W.a.clear();
      }
    }
    for (int i2 = 0;; i2++)
    {
      if (i2 >= this.X.length)
      {
        com.divmob.doodlebubble.c.c localc = (com.divmob.doodlebubble.c.c)i.obtainPoolItem();
        if (!localc.hasParent()) {
          localc.a(this.u, 1);
        }
        localc.a(parama, paramBoolean);
        return;
      }
      if (this.X[i2] > 0) {
        this.W.b(i2);
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    this.ac += this.R.size();
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.R.size()) {
        return;
      }
      com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.R.get(i1);
      this.P.remove(locala);
      this.O.remove(locala.c + "," + locala.d);
      this.Q.add(locala);
      locala.a();
      a(locala, paramBoolean);
      this.W.a(com.divmob.common.a.a.b);
    }
  }
  
  private Point b(int paramInt1, int paramInt2)
  {
    Point localPoint = new Point(paramInt1, paramInt2);
    com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.O.get(paramInt1 + "," + paramInt2);
    int i1 = paramInt1 % 2;
    int i4;
    int i2;
    if (locala != null)
    {
      i4 = 1;
      if (i4 >= -1) {}
    }
    else
    {
      i2 = 1;
      if (i2 >= -1) {
        break label215;
      }
      localPoint.x = Math.max(0, -1 + localPoint.x);
      return localPoint;
    }
    for (int i5 = 1;; i5--)
    {
      if (i5 < -1)
      {
        i4--;
        break;
      }
      if (((i4 != 0) || (i5 != 0)) && ((i4 == 0) || (i5 == 0) || ((i5 == 1) && (i1 == 0)) || ((i5 == -1) && (i1 == 1))) && ((com.divmob.doodlebubble.a.a)this.O.get(paramInt1 + i4 + "," + (paramInt2 + i5)) == null))
      {
        localPoint.x = (paramInt1 + i4);
        localPoint.y = (paramInt2 + i5);
        return localPoint;
      }
    }
    label215:
    for (int i3 = 1;; i3--)
    {
      if (i3 < -1)
      {
        i2--;
        break;
      }
      if (((i2 != 0) || (i3 != 0)) && ((i2 == 0) || (i3 == 0) || ((i3 == 1) && (i1 == 0)) || ((i3 == -1) && (i1 == 1))) && ((com.divmob.doodlebubble.a.a)this.O.get(paramInt1 + i2 + "," + (paramInt2 + i3)) != null)) {
        return localPoint;
      }
    }
  }
  
  private void b(int paramInt)
  {
    int i1 = 0;
    if (i1 >= paramInt) {
      return;
    }
    for (int i2 = i1 % 2;; i2++)
    {
      if (i2 >= 9)
      {
        i1++;
        break;
      }
      a(i1, i2, true).a(this.W.f());
    }
  }
  
  private void b(com.divmob.doodlebubble.a.a parama)
  {
    parama.e = true;
    int i1 = parama.c % 2;
    int i2 = -1;
    if (i2 > 1) {
      return;
    }
    for (int i3 = -1;; i3++)
    {
      if (i3 > 1)
      {
        i2++;
        break;
      }
      if (((i2 != 0) || (i3 != 0)) && ((i2 == 0) || (i3 == 0) || ((i3 == 1) && (i1 == 0)) || ((i3 == -1) && (i1 == 1))))
      {
        com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.O.get(i2 + parama.c + "," + (i3 + parama.d));
        if ((locala != null) && (!locala.e)) {
          b(locala);
        }
      }
    }
  }
  
  private void o()
  {
    q();
    h += this.aa;
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.P.size())
      {
        if (h > 0.0F) {
          v();
        }
        return;
      }
      ((com.divmob.doodlebubble.a.a)this.P.get(i1)).a(this.aa);
      if (((com.divmob.doodlebubble.a.a)this.P.get(i1)).getY() > -144 + com.divmob.maegame.a.a.h) {
        y();
      }
    }
  }
  
  private void p()
  {
    if (!this.P.isEmpty())
    {
      h += this.aa;
      this.ab.setPosition(0.0F, h - this.ab.getHeight());
    }
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.P.size()) {
        return;
      }
      ((com.divmob.doodlebubble.a.a)this.P.get(i1)).a(this.aa);
      if (((com.divmob.doodlebubble.a.a)this.P.get(i1)).getY() > -144 + com.divmob.maegame.a.a.h) {
        y();
      }
    }
  }
  
  private void q()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.P.size())
      {
        this.aa = 5.0F;
        return;
      }
      if (((com.divmob.doodlebubble.a.a)this.P.get(i1)).c >= 7)
      {
        this.aa = 0.3F;
        return;
      }
    }
  }
  
  private void r()
  {
    int i1 = 0;
    int i2 = 0;
    if (i2 >= this.X.length)
    {
      this.R.clear();
      this.O.clear();
      label27:
      if (!this.P.isEmpty()) {
        break label108;
      }
      h = 0.0F;
      if (!this.W.e()) {
        break label136;
      }
      this.W.g();
      b(5);
    }
    for (;;)
    {
      t();
      this.T.a(this.W.f());
      this.Y = System.currentTimeMillis();
      this.aa = 0.3F;
      return;
      this.X[i2] = 0;
      i2++;
      break;
      label108:
      com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.P.remove(0);
      this.Q.add(locala);
      locala.a();
      break label27;
      label136:
      a(this.W.a(), this.W.b());
      this.W.g();
      while (i1 < this.X.length)
      {
        if (this.X[i1] > 0) {
          this.W.b(i1);
        }
        i1++;
      }
    }
  }
  
  private void s()
  {
    int i1 = 0 + (int)Math.floor(0.5D + (this.T.getY() - h) / 42.0F);
    int i2 = (int)Math.floor(0.5D + (this.T.getX() - 24.0D + 24 * (i1 % 2)) / 48.0D);
    if (i2 > 8 + i1 % 2) {
      i2 = 8 + i1 % 2;
    }
    if (i2 < 0) {
      i2 = 0;
    }
    if (i1 < 0) {
      i1 = 0;
    }
    com.divmob.doodlebubble.a.a locala = a(i1, i2, false);
    locala.a(this.T.f());
    this.R.clear();
    a(locala);
    if (this.R.size() > 2)
    {
      this.ac = 0;
      com.divmob.maegame.d.a.a(this.an);
      a(true);
      int[] arrayOfInt2 = this.X;
      int i5 = this.T.f();
      arrayOfInt2[i5] = (1 + arrayOfInt2[i5]);
      u();
      t();
      return;
    }
    for (int i3 = 0;; i3++)
    {
      if (i3 >= this.R.size())
      {
        this.R.clear();
        int[] arrayOfInt1 = this.X;
        int i4 = this.T.f();
        arrayOfInt1[i4] = (1 + arrayOfInt1[i4]);
        com.divmob.maegame.d.a.a(this.ao);
        break;
      }
      ((com.divmob.doodlebubble.a.a)this.R.get(i3)).e = false;
    }
  }
  
  private void t()
  {
    this.T.setPosition(0.5F * com.divmob.maegame.a.a.g - 24.0F, com.divmob.maegame.a.a.h - 48.0F);
    this.T.a(this.S.f());
    this.S.a(this.W.f());
    this.U = false;
    this.T.b(0.0F, 0.0F);
  }
  
  private void u()
  {
    int i2;
    for (int i1 = 0;; i1++)
    {
      if (i1 >= 10)
      {
        this.R.clear();
        i2 = 0;
        if (i2 < this.P.size()) {
          break;
        }
        a(false);
        return;
      }
      com.divmob.doodlebubble.a.a locala1 = (com.divmob.doodlebubble.a.a)this.O.get("0," + i1);
      if (locala1 != null) {
        b(locala1);
      }
    }
    com.divmob.doodlebubble.a.a locala2 = (com.divmob.doodlebubble.a.a)this.P.get(i2);
    if (locala2.e) {
      locala2.e = false;
    }
    for (;;)
    {
      i2++;
      break;
      this.R.add(locala2);
    }
  }
  
  private void v()
  {
    h = -84.0F;
    this.O.clear();
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.P.size())
      {
        b(2);
        return;
      }
      com.divmob.doodlebubble.a.a locala = (com.divmob.doodlebubble.a.a)this.P.get(i1);
      locala.a(2 + locala.c, locala.d);
      this.O.put(locala.c + "," + locala.d, locala);
    }
  }
  
  private void w()
  {
    this.az = new BuildableBitmapTextureAtlas(512, 128, TextureOptions.BILINEAR);
    if (this.ae == 0) {}
    for (this.at = a("rs/congrats", this.az);; this.at = a("rs/gameover", this.az))
    {
      this.au = a("rs/tryagain", this.az);
      this.av = a("rs/menu", this.az);
      c(this.az);
      return;
    }
  }
  
  private void x()
  {
    this.as = new Scene();
    this.as.setBackgroundEnabled(false);
    Rectangle localRectangle = new Rectangle(0.0F, 0.0F, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h);
    com.divmob.maegame.g.e.a(localRectangle, -13421773);
    localRectangle.setAlpha(0.7F);
    this.as.attachChild(localRectangle);
    Sprite localSprite1 = c("rs/result_dialog", 512, 1024);
    localSprite1.setPosition(0.0F, 60.0F);
    com.divmob.maegame.g.e.a(localSprite1, this.s);
    this.as.attachChild(localSprite1);
    Sprite localSprite2 = new Sprite(0.0F, 238.0F, this.at);
    localSprite1.attachChild(localSprite2);
    com.divmob.maegame.g.e.a(localSprite2, localSprite1.getWidth());
    Sprite localSprite3 = c("rs/u_scored", 256, 64);
    localSprite3.setPosition(0.0F, 305.0F);
    com.divmob.maegame.g.e.a(localSprite3, localSprite1.getWidth());
    localSprite1.attachChild(localSprite3);
    this.ay = new com.divmob.maegame.g.c(0.0F, 367.0F + localSprite1.getY(), "", this.al);
    this.as.attachChild(this.ay);
    this.aw = new Sprite(282.0F, 510.0F, this.au);
    this.ax = new Sprite(69.0F, 510.0F, this.av);
    this.as.registerTouchArea(this.aw);
    this.as.registerTouchArea(this.ax);
    this.as.setPosition(com.divmob.maegame.a.a.g, 0.0F);
    localSprite1.attachChild(this.aw);
    localSprite1.attachChild(this.ax);
    this.as.setOnAreaTouchListener(this);
  }
  
  private void y()
  {
    this.ay.a(this.W.c());
    this.ay.b(this.s);
    if (this.ae == 0)
    {
      A();
      com.divmob.maegame.d.a.a(this.aq);
    }
    for (;;)
    {
      a(this.as, false, false);
      runOnUiThread(new d(this));
      return;
      com.divmob.maegame.d.a.a(this.ap);
    }
  }
  
  private void z()
  {
    com.divmob.maegame.d.a.a(this.aq);
    if (this.W.a() < -1 + com.divmob.common.a.a.c[this.ag])
    {
      this.aI.setVisible(true);
      this.aI.a(this.W.c());
      this.aI.b(this.s);
      this.k.setVisible(true);
      this.m.setVisible(true);
      this.l.setVisible(false);
      this.n.setVisible(false);
    }
    for (;;)
    {
      a(this.aA, false, true);
      runOnUiThread(new e(this));
      return;
      this.aI.setVisible(false);
      this.k.setVisible(false);
      this.m.setVisible(false);
      this.l.setVisible(true);
      this.n.setVisible(true);
    }
  }
  
  protected void a(float paramFloat)
  {
    super.a(0.5F, com.divmob.maegame.b.a.b(0.5F));
  }
  
  protected void a(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.a(paramScene, paramBoolean1, paramBoolean2, com.divmob.maegame.b.a.c(0.3F));
  }
  
  public void b()
  {
    super.b();
    x();
    C();
    D();
    if (this.Z.a()) {
      a(this.aK, false, false);
    }
  }
  
  public void c()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= 3)
      {
        this.u.setBackground(new SpriteBackground(new b(this, 0.0F, 0.0F, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h, this.J)));
        this.u.setOnSceneTouchListener(this);
        this.V.a(this.u, 0);
        this.u.getChild(0).attachChild(this.S);
        this.T.a(this.u, 0);
        this.W.a(this.u, 2);
        this.c.setPosition(this.s - this.c.getWidth() - 3.0F, 7.0F);
        this.c.a(this.u, 2);
        Sprite localSprite = new Sprite(0.0F, -144 + com.divmob.maegame.a.a.h, this.M);
        localSprite.setWidth(this.s);
        this.u.getChild(2).attachChild(localSprite);
        r();
        this.u.registerUpdateHandler(new c(this));
        if (!this.W.e())
        {
          TextureRegion localTextureRegion = a("ceil", 512, 32);
          this.ab = new Sprite(0.0F, h - 20.0F, localTextureRegion);
          this.ab.setWidth(this.s);
          this.u.getChild(0).attachChild(this.ab);
        }
        return;
      }
      this.u.attachChild(new Entity());
    }
  }
  
  public void e()
  {
    if (this.ae == 0) {
      A();
    }
    finish();
  }
  
  public void g()
  {
    this.Z = new x(this);
    this.H = new BuildableBitmapTextureAtlas(512, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.L = a("cannon", this.H);
    c(this.H);
    BitmapTextureAtlas localBitmapTextureAtlas = new BitmapTextureAtlas(256, 128, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.K = a("bubbles", 3, 2, localBitmapTextureAtlas);
    a(localBitmapTextureAtlas);
    this.I = new BuildableBitmapTextureAtlas(1024, 1024, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    int i1;
    if (getIntent().getExtras().getInt("mode") > 0)
    {
      this.ae = 0;
      i1 = MathUtils.random(1, 6);
      this.J = a("bg_" + i1, this.I);
      switch (i1)
      {
      case 4: 
      case 5: 
      default: 
        this.M = a("rope_0", 512, 32);
      }
    }
    for (;;)
    {
      this.N = a("hud/hud", this.I);
      c(this.I);
      w();
      B();
      return;
      this.ae = 1;
      this.af = getIntent().getExtras().getInt("level");
      this.ag = getIntent().getExtras().getInt("world");
      i1 = 1 + this.ag;
      break;
      this.M = a("rope_2", 512, 32);
      continue;
      this.M = a("rope_1", 512, 32);
    }
  }
  
  public void h()
  {
    this.al = new com.divmob.maegame.g.d(this, "violetnumber", 0);
  }
  
  public void i()
  {
    try
    {
      this.am = a("fire.ogg");
      this.an = a("pop.ogg");
      this.ao = a("collide.ogg");
      this.ap = a("lost.ogg");
      this.aq = a("win.ogg");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void j()
  {
    this.U = false;
    this.O = new HashMap();
    this.P = new ArrayList();
    this.Q = new ArrayList();
    this.R = new ArrayList();
    this.V = new com.divmob.doodlebubble.b.a(this.L);
    TextureRegion[] arrayOfTextureRegion = new TextureRegion[6];
    int i1 = 0;
    int i2;
    if (i1 >= arrayOfTextureRegion.length)
    {
      i = new com.divmob.doodlebubble.c.d(this.K, arrayOfTextureRegion);
      this.T = new com.divmob.doodlebubble.a.b(this.K);
      this.S = new com.divmob.doodlebubble.a.a(this.K);
      this.S.setPosition(0.5F * com.divmob.maegame.a.a.g - 96.0F, com.divmob.maegame.a.a.h - 48.0F);
      this.W = new com.divmob.doodlebubble.e.a(this.N, this.al);
      i2 = getIntent().getExtras().getInt("mode");
      if (i2 <= 0) {
        break label297;
      }
      this.W.g();
      this.W.a(true, i2);
      switch (i2)
      {
      case 4: 
      default: 
        this.ad = 0;
      }
    }
    for (;;)
    {
      this.X = new int[com.divmob.common.a.a.a];
      return;
      arrayOfTextureRegion[i1] = a("feather_" + i1, 32, 64);
      i1++;
      break;
      this.ad = 1;
      continue;
      this.ad = 2;
      continue;
      label297:
      this.W.a(false, i2);
      this.W.a(this.af, this.ag);
    }
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, Scene.ITouchArea paramITouchArea, float paramFloat1, float paramFloat2)
  {
    if (paramTouchEvent.getAction() == 0)
    {
      if (!paramITouchArea.equals(this.aw)) {
        break label37;
      }
      a(0.0F);
      r();
    }
    for (;;)
    {
      return super.onAreaTouched(paramTouchEvent, paramITouchArea, paramFloat1, paramFloat2);
      label37:
      if ((paramITouchArea.equals(this.ax)) || (paramITouchArea.equals(this.aH))) {
        finish();
      } else if (paramITouchArea.equals(this.aG)) {
        if (this.W.a() >= -1 + com.divmob.common.a.a.c[this.W.b()])
        {
          finish();
        }
        else
        {
          this.W.d();
          r();
          a(0.0F);
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.aL = ((Button)findViewById(2131034120));
    this.aL.setOnClickListener(new h(this));
    this.aj = ((AdView)findViewById(2131034119));
    this.aj.loadAd(new AdRequest.Builder().build());
    Tracker localTracker = ((AnalyticsSampleApp)getApplication()).a(AnalyticsSampleApp.a.a);
    localTracker.setScreenName("Home");
    localTracker.send(new HitBuilders.AppViewBuilder().build());
    this.ai = new InterstitialAd(this);
    this.ai.setAdUnitId("ca-app-pub-8209338489199604/2505578976");
    this.ai.loadAd(new AdRequest.Builder().build());
    this.ah = new com.divmob.c.c(this, false, true);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.ah.e();
    this.aj.destroy();
  }
  
  protected void onPause()
  {
    this.aj.pause();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.aj.resume();
  }
  
  public boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent)
  {
    if (System.currentTimeMillis() - this.Y > 300L) {
      if (paramTouchEvent.getAction() == 1)
      {
        if (!this.U)
        {
          a(paramTouchEvent.getX(), paramTouchEvent.getY());
          return true;
        }
      }
      else if (paramTouchEvent.getY() > this.c.getY() + this.c.getHeight())
      {
        float f1 = paramTouchEvent.getX() - 0.5F * com.divmob.maegame.a.a.g;
        float f2 = Math.max(24.0F, com.divmob.maegame.a.a.h - paramTouchEvent.getY());
        float f3 = f1 / (float)Math.sqrt(f1 * f1 + f2 * f2);
        this.V.setRotation(-MathUtils.radToDeg((float)Math.acos(f3)));
        return true;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.GameActivity
 * JD-Core Version:    0.7.0.1
 */