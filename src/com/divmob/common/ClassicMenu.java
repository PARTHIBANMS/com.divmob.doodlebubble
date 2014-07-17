package com.divmob.common;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.KeyEvent;
import com.divmob.maegame.d.b;
import com.divmob.maegame.menu.MMenu;
import java.util.ArrayList;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public abstract class ClassicMenu
  extends MMenu
{
  protected static final int a = 0;
  protected static final int b = 1;
  private com.divmob.c.i C;
  protected Camera c;
  protected BuildableBitmapTextureAtlas d;
  protected TextureRegion e;
  protected TiledTextureRegion f;
  protected TiledTextureRegion g;
  protected TiledTextureRegion h;
  protected TextureRegion i;
  protected TiledTextureRegion j;
  protected TiledTextureRegion k;
  protected TextureRegion l;
  protected Sprite m;
  protected com.divmob.maegame.f.a.a n;
  protected AnimatedSprite o;
  protected Scene p;
  protected com.divmob.maegame.f.a.a q;
  private BuildableBitmapTextureAtlas r;
  
  private void k()
  {
    this.p = new Scene();
    this.p.setBackgroundEnabled(false);
    Sprite localSprite1 = new Sprite(0.0F, 0.0F, a("menu/about_dialog", 512, 512));
    com.divmob.maegame.g.e.a(localSprite1, this.s, this.t);
    Sprite localSprite2 = new Sprite(109.0F, 15.0F, a("menu/about_title", 512, 64));
    localSprite1.attachChild(localSprite2);
    com.divmob.maegame.g.e.a(localSprite2, localSprite1.getWidth());
    this.q = new f(this, this, 151.0F + localSprite1.getX(), 376.0F + localSprite1.getY(), this.h);
    this.p.attachChild(localSprite1);
    this.q.a(this.p);
    this.p.setOnSceneTouchListener(this);
    this.p.setPosition(this.s, 0.0F);
  }
  
  private void o()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.x.size()) {
        return;
      }
      ((com.divmob.maegame.f.a.a)this.x.get(i1)).b();
    }
  }
  
  private void p()
  {
    if (hasWindowFocus())
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle("Exit?");
      localBuilder.setMessage("Do you really want to quit?");
      localBuilder.setPositiveButton("Yes", new g(this));
      localBuilder.setNegativeButton("Keep playing", new h(this));
      localBuilder.create().show();
    }
  }
  
  public Camera a()
  {
    return this.c;
  }
  
  protected void a_()
  {
    a(this.p, true, true);
  }
  
  public void b()
  {
    c();
    k();
  }
  
  public void b_()
  {
    com.divmob.b.a.a locala = new com.divmob.b.a.a(this);
    locala.setButton(getString(2131099683), new i(this));
    locala.setButton2(getString(2131099684), new j(this));
    locala.show();
  }
  
  public void c()
  {
    for (int i1 = 0;; i1++)
    {
      if (i1 >= 2)
      {
        this.m = new Sprite(0.0F, 17.0F, this.i);
        this.o = new d(this, 100.0F, 513.0F, this.f);
        this.n = new e(this, this, 115.0F, 618.0F, this.g);
        d();
        com.divmob.maegame.g.e.a(this.m, this.s);
        this.u.getChild(1).attachChild(this.o);
        this.u.registerTouchArea(this.o);
        this.n.a(this.u, 1);
        this.u.getChild(1).attachChild(this.m);
        this.u.setOnSceneTouchListener(this);
        this.u.setOnSceneTouchListenerBindingEnabled(false);
        return;
      }
      this.u.attachChild(new Entity());
    }
  }
  
  public void d() {}
  
  protected void e() {}
  
  protected void onDestroy()
  {
    this.C.d();
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {}
    switch (paramInt)
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    if (this.u.hasChildScene())
    {
      a(0.0F);
      return true;
    }
    this.C.b();
    return true;
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
    this.d = new BuildableBitmapTextureAtlas(1024, 1024, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.i = a("menu/menu_logo", this.d);
    this.f = a("menu/menu_opt_btn", 1, 2, this.d);
    this.g = a("menu/menu_about_btn", 1, 2, this.d);
    this.h = a("menu/back_btn", 1, 2, this.d);
    this.e = a("menu/menu_bg", this.d);
    c(this.d);
    this.r = new BuildableBitmapTextureAtlas(512, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.j = a("menu/opt_snd_effect", 2, 1, this.r);
    this.k = a("menu/opt_music", 2, 1, this.r);
    this.l = a("menu/dialog", this.r);
    c(this.r);
    this.C = new com.divmob.c.i(this, false, 1);
  }
  
  public void onResumeGame()
  {
    super.onResumeGame();
    try
    {
      this.v = new b(this);
      if (!this.v.a()) {
        this.o.setCurrentTileIndex(1);
      }
      for (;;)
      {
        this.v.b();
        this.y.b(this.v.b());
        this.y.a();
        return;
        this.o.setCurrentTileIndex(0);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent)
  {
    switch (paramTouchEvent.getAction())
    {
    default: 
      return true;
    }
    for (int i1 = 0;; i1++)
    {
      if (i1 >= this.x.size())
      {
        o();
        return true;
      }
      com.divmob.maegame.f.a.a locala = (com.divmob.maegame.f.a.a)this.x.get(i1);
      if (locala.c())
      {
        locala.a();
        o();
        return true;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.ClassicMenu
 * JD-Core Version:    0.7.0.1
 */