package com.divmob.common;

import android.view.KeyEvent;
import com.divmob.maegame.f.a.d;
import com.divmob.maegame.g.e;
import com.divmob.maegame.game.XMLGame;
import java.util.Random;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.Scene.IOnAreaTouchListener;
import org.anddev.andengine.entity.scene.Scene.ITouchArea;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public abstract class ClassicGame
  extends XMLGame
  implements Scene.IOnAreaTouchListener
{
  protected Camera a;
  protected BuildableBitmapTextureAtlas b;
  protected com.divmob.maegame.f.a.b c;
  protected TiledTextureRegion d;
  protected TiledTextureRegion e;
  protected TextureRegion f;
  protected Sprite g;
  private Scene h;
  private TextureRegion i;
  private BuildableBitmapTextureAtlas j;
  private com.divmob.c.c k;
  private TextureRegion l;
  private TextureRegion m;
  private TextureRegion n;
  private Sprite o;
  private d p;
  private d q;
  
  private void k()
  {
    this.b = new BuildableBitmapTextureAtlas(256, 256, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.l = a("menu/pausetitle", this.b);
    this.m = a("menu/resumebtn_label", this.b);
    this.n = a("menu/quitbtn_label", this.b);
    this.i = a("menu/pause_btn", this.b);
    c(this.b);
    this.j = new BuildableBitmapTextureAtlas(512, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.d = a("menu/opt_snd_effect", 2, 1, this.j);
    this.e = a("menu/opt_music", 2, 1, this.j);
    this.f = a("menu/dialog", this.j);
    c(this.j);
  }
  
  private void o()
  {
    this.h = new Scene();
    this.h.setBackgroundEnabled(false);
    Rectangle localRectangle = new Rectangle(0.0F, 0.0F, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h);
    e.a(localRectangle, -13421773);
    localRectangle.setAlpha(0.7F);
    this.h.attachChild(localRectangle);
    Sprite localSprite1 = new Sprite(0.0F, 0.0F, this.f);
    e.a(localSprite1, com.divmob.maegame.a.a.g, com.divmob.maegame.a.a.h);
    this.h.attachChild(localSprite1);
    Sprite localSprite2 = new Sprite(0.0F, 16.0F, this.l);
    localSprite1.attachChild(localSprite2);
    this.o = new Sprite(0.0F, 110.0F, this.m);
    this.g = new Sprite(0.0F, 198.0F, this.n);
    e.a(localSprite2, localSprite1.getWidth());
    e.a(this.o, localSprite1.getWidth());
    e.a(this.g, localSprite1.getWidth());
    localSprite1.attachChild(this.o);
    localSprite1.attachChild(this.g);
    this.h.registerTouchArea(this.o);
    this.h.registerTouchArea(this.g);
    this.p = new b(this, 26.0F, 272.0F, this.d, this.v.a());
    this.q = new c(this, localSprite1.getWidth() - this.e.getTileWidth() - 26.0F, 272.0F, this.e, this.v.b());
    this.p.setScaleY(this.A);
    this.q.setScaleY(this.A);
    localSprite1.attachChild(this.p);
    this.h.registerTouchArea(this.p);
    this.h.registerTouchArea(this.q);
    this.h.setPosition(com.divmob.maegame.a.a.g, 0.0F);
    this.h.setOnAreaTouchListener(this);
  }
  
  public Camera a()
  {
    return this.a;
  }
  
  public void b()
  {
    this.c = new a(this, 0.0F, 0.0F, this.i);
    c();
    o();
    this.u.setOnAreaTouchListener(this);
  }
  
  public void c() {}
  
  protected void d()
  {
    this.h.clearEntityModifiers();
    a(this.h, true, false);
  }
  
  public void e() {}
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, Scene.ITouchArea paramITouchArea, float paramFloat1, float paramFloat2)
  {
    if (paramTouchEvent.getAction() == 0)
    {
      if (!paramITouchArea.equals(this.o)) {
        break label35;
      }
      if (this.u.hasChildScene()) {
        a(0.0F);
      }
    }
    for (;;)
    {
      return false;
      label35:
      if (paramITouchArea.equals(this.g)) {
        e();
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.k.e();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramKeyEvent.getAction() == 0) {}
    switch (paramInt)
    {
    default: 
      bool = super.onKeyDown(paramInt, paramKeyEvent);
    }
    do
    {
      return bool;
      if (!this.w) {
        break;
      }
      if (this.u.hasChildScene())
      {
        a(0.0F);
        return bool;
      }
      d();
    } while (new Random(System.currentTimeMillis()).nextInt(100) > 50);
    this.k.b();
    return bool;
  }
  
  public void onLoadComplete()
  {
    try
    {
      this.y.a();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onLoadResources()
  {
    super.onLoadResources();
    k();
    this.k = new com.divmob.c.c(this, false, true);
  }
  
  public void onPauseGame()
  {
    super.onPauseGame();
    try
    {
      if (this.w) {
        d();
      }
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.ClassicGame
 * JD-Core Version:    0.7.0.1
 */