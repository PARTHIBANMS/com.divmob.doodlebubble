package com.divmob.maegame.game;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.divmob.maegame.e.d;
import com.divmob.maegame.e.e;
import java.util.ArrayList;
import org.anddev.andengine.audio.music.Music;
import org.anddev.andengine.audio.music.MusicFactory;
import org.anddev.andengine.audio.sound.Sound;
import org.anddev.andengine.audio.sound.SoundFactory;
import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.engine.options.EngineOptions;
import org.anddev.andengine.engine.options.EngineOptions.ScreenOrientation;
import org.anddev.andengine.engine.options.resolutionpolicy.FillResolutionPolicy;
import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.background.SpriteBackground;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.entity.util.FPSCounter;
import org.anddev.andengine.opengl.font.Font;
import org.anddev.andengine.opengl.font.FontFactory;
import org.anddev.andengine.opengl.font.FontManager;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.buildable.builder.BlackPawnTextureBuilder;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.ui.activity.BaseGameActivity;

public abstract class MBaseGameActivity
  extends BaseGameActivity
  implements a
{
  public float A;
  protected FPSCounter B;
  public int s;
  public int t;
  protected Scene u;
  protected com.divmob.maegame.d.b v;
  protected boolean w;
  public ArrayList<com.divmob.maegame.f.a.a> x;
  protected com.divmob.maegame.d.a y;
  protected e z;
  
  private Engine a(EngineOptions.ScreenOrientation paramScreenOrientation)
  {
    EngineOptions localEngineOptions = new EngineOptions(true, paramScreenOrientation, new FillResolutionPolicy(), a());
    localEngineOptions.setNeedsSound(true);
    localEngineOptions.setNeedsMusic(true);
    return new Engine(localEngineOptions);
  }
  
  protected Sound a(String paramString)
    throws Exception
  {
    return SoundFactory.createSoundFromAsset(getSoundManager(), this, paramString);
  }
  
  protected EngineOptions.ScreenOrientation a(EngineOptions.ScreenOrientation paramScreenOrientation, int paramInt)
  {
    if (paramScreenOrientation == EngineOptions.ScreenOrientation.LANDSCAPE)
    {
      com.divmob.maegame.a.a.g = 720;
      com.divmob.maegame.a.a.h = 480;
      this.s = 720;
    }
    for (this.t = 480;; this.t = 720)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      float f = getApplicationContext().getResources().getDisplayMetrics().density;
      int i = (int)(localDisplayMetrics.widthPixels - 0.0F * f);
      int j = (int)(localDisplayMetrics.heightPixels - f * paramInt);
      this.A = (i / this.s / (j / this.t));
      return paramScreenOrientation;
      com.divmob.maegame.a.a.g = 480;
      com.divmob.maegame.a.a.h = 720;
      this.s = 480;
    }
  }
  
  protected Font a(String paramString, int paramInt)
  {
    return a(paramString, paramInt, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
  }
  
  protected Font a(String paramString, int paramInt1, int paramInt2, int paramInt3, TextureOptions paramTextureOptions)
  {
    BitmapTextureAtlas localBitmapTextureAtlas = new BitmapTextureAtlas(paramInt2, paramInt2, paramTextureOptions);
    Font localFont = FontFactory.createFromAsset(localBitmapTextureAtlas, this, paramString, paramInt1, true, -1);
    a(localBitmapTextureAtlas);
    this.mEngine.getFontManager().loadFont(localFont);
    return localFont;
  }
  
  protected Font a(String paramString, int paramInt, TextureOptions paramTextureOptions)
  {
    return a(paramString, paramInt, 512, 512, paramTextureOptions);
  }
  
  protected TextureRegion a(String paramString, int paramInt1, int paramInt2)
  {
    return this.z.a(paramString, paramInt1, paramInt2);
  }
  
  public TextureRegion a(String paramString, BitmapTextureAtlas paramBitmapTextureAtlas)
  {
    return d.a(paramBitmapTextureAtlas, this, paramString + ".png", 0, 0, 1);
  }
  
  public TextureRegion a(String paramString, BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas)
  {
    return d.a(paramBuildableBitmapTextureAtlas, this, paramString + ".png", 1);
  }
  
  protected TiledTextureRegion a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return this.z.a(paramString, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public TiledTextureRegion a(String paramString, int paramInt1, int paramInt2, BitmapTextureAtlas paramBitmapTextureAtlas)
  {
    return d.a(paramBitmapTextureAtlas, this, paramString + ".png", 0, 0, paramInt1, paramInt2, 1);
  }
  
  public TiledTextureRegion a(String paramString, int paramInt1, int paramInt2, BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas)
  {
    return d.a(paramBuildableBitmapTextureAtlas, this, paramString + ".png", paramInt1, paramInt2, 1);
  }
  
  protected void a(float paramFloat)
  {
    b(paramFloat);
  }
  
  protected void a(float paramFloat, IEntityModifier paramIEntityModifier)
  {
    b(paramFloat);
    this.u.getChildScene().registerEntityModifier(paramIEntityModifier.deepCopy());
  }
  
  protected void a(Scene paramScene, boolean paramBoolean)
  {
    a(paramScene, paramBoolean, true);
  }
  
  protected void a(Scene paramScene, boolean paramBoolean, IEntityModifier paramIEntityModifier)
  {
    a(paramScene, paramBoolean, true, paramIEntityModifier);
  }
  
  protected void a(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2)
  {
    b(paramScene, paramBoolean1, paramBoolean2);
  }
  
  protected void a(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2, IEntityModifier paramIEntityModifier)
  {
    b(paramScene, paramBoolean1, paramBoolean2);
    paramScene.clearEntityModifiers();
    paramScene.registerEntityModifier(paramIEntityModifier);
  }
  
  protected void a(Sprite paramSprite)
  {
    this.u.setBackground(new SpriteBackground(paramSprite));
  }
  
  public void a(BitmapTextureAtlas paramBitmapTextureAtlas)
  {
    this.mEngine.getTextureManager().loadTexture(paramBitmapTextureAtlas);
  }
  
  protected void a(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas)
  {
    try
    {
      paramBuildableBitmapTextureAtlas.build(new BlackPawnTextureBuilder(1));
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void a(TextureRegion paramTextureRegion)
  {
    this.u.setBackground(new SpriteBackground(b(paramTextureRegion)));
  }
  
  protected Music b(String paramString)
    throws Exception
  {
    return MusicFactory.createMusicFromAsset(getMusicManager(), this, paramString);
  }
  
  protected Sprite b(TextureRegion paramTextureRegion)
  {
    return new b(this, 0.0F, 0.0F, this.s, this.t, paramTextureRegion);
  }
  
  protected void b(float paramFloat)
  {
    this.w = true;
    this.u.getChildScene().registerEntityModifier(new DelayModifier(paramFloat, new c(this)));
  }
  
  protected void b(String paramString, int paramInt1, int paramInt2)
  {
    a(this.z.a(paramString, paramInt1, paramInt2));
  }
  
  protected void b(Scene paramScene, boolean paramBoolean)
  {
    b(paramScene, paramBoolean, true);
  }
  
  protected void b(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.w = paramBoolean1;
    if (paramBoolean2)
    {
      this.u.setChildScene(paramScene, false, false, true);
      return;
    }
    this.u.setChildScene(paramScene, false, true, true);
  }
  
  public void b(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas)
  {
    this.mEngine.getTextureManager().loadTexture(paramBuildableBitmapTextureAtlas);
  }
  
  protected Sprite c(String paramString, int paramInt1, int paramInt2)
  {
    return new Sprite(0.0F, 0.0F, a(paramString, paramInt1, paramInt2));
  }
  
  protected void c(BuildableBitmapTextureAtlas paramBuildableBitmapTextureAtlas)
  {
    a(paramBuildableBitmapTextureAtlas);
    this.mEngine.getTextureManager().loadTexture(paramBuildableBitmapTextureAtlas);
  }
  
  public e l()
  {
    return this.z;
  }
  
  protected void m()
  {
    com.divmob.maegame.d.a locala = this.y;
    if (com.divmob.maegame.d.a.a) {}
    for (boolean bool = false;; bool = true)
    {
      locala.a(bool);
      this.v.a(com.divmob.maegame.d.a.a);
      return;
    }
  }
  
  protected void n()
  {
    com.divmob.maegame.d.a locala = this.y;
    if (com.divmob.maegame.d.a.b) {}
    for (boolean bool = false;; bool = true)
    {
      locala.b(bool);
      this.v.b(com.divmob.maegame.d.a.b);
      return;
    }
  }
  
  public Engine onLoadEngine()
  {
    this.z = new e(this);
    return a(f());
  }
  
  public void onLoadResources()
  {
    BitmapTextureAtlasTextureRegionFactory.setAssetBasePath("gfx/");
    FontFactory.setAssetBasePath("fonts/");
    SoundFactory.setAssetBasePath("mfx/");
    MusicFactory.setAssetBasePath("mfx/");
    this.v = new com.divmob.maegame.d.b(this);
    this.y = new com.divmob.maegame.d.a();
    this.y.a(this.v.a(), this.v.b());
    g();
    h();
    i();
  }
  
  public Scene onLoadScene()
  {
    this.B = new FPSCounter();
    this.mEngine.registerUpdateHandler(this.B);
    this.u = new Scene();
    this.w = true;
    j();
    b();
    return this.u;
  }
  
  public void onPauseGame()
  {
    super.onPauseGame();
    try
    {
      this.v.a(com.divmob.maegame.d.a.a, com.divmob.maegame.d.a.b);
      this.y.b();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onResumeGame()
  {
    super.onResumeGame();
    try
    {
      if (this.v != null) {
        this.y.b(this.v.b());
      }
      this.y.a();
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.game.MBaseGameActivity
 * JD-Core Version:    0.7.0.1
 */