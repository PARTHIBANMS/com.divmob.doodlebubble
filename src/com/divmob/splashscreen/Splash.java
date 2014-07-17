package com.divmob.splashscreen;

import android.content.res.Resources;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.divmob.maegame.g.e;
import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.options.EngineOptions;
import org.anddev.andengine.engine.options.EngineOptions.ScreenOrientation;
import org.anddev.andengine.engine.options.resolutionpolicy.FillResolutionPolicy;
import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.MoveXModifier;
import org.anddev.andengine.entity.modifier.SequenceEntityModifier;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.background.ColorBackground;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.view.RenderSurfaceView;
import org.anddev.andengine.ui.activity.BaseGameActivity;
import org.anddev.andengine.util.modifier.ease.EaseQuintInOut;

public class Splash
  extends BaseGameActivity
{
  private static final int a = 480;
  private static final int b = 720;
  private Camera c;
  private Scene d;
  private BitmapTextureAtlas e;
  private TextureRegion f;
  private Rectangle[] g;
  private long h;
  private float[] i;
  private float[] j;
  private int k = 256;
  private int l;
  
  private Rectangle a(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    return new Rectangle(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]), Integer.parseInt(arrayOfString[2]), Integer.parseInt(arrayOfString[3]));
  }
  
  private void a()
  {
    this.i = new float[this.g.length];
    for (int m = 0;; m++)
    {
      if (m >= this.i.length) {
        return;
      }
      this.i[m] = this.g[m].getX();
    }
  }
  
  private void a(int paramInt)
  {
    if (paramInt < 0) {}
    for (;;)
    {
      this.g[0].setPosition(paramInt, this.k + this.j[0]);
      Rectangle localRectangle1 = this.g[1];
      int m = paramInt + 18;
      localRectangle1.setPosition(m, this.k + this.j[1]);
      this.g[2].setPosition(m, this.k + this.j[2]);
      Rectangle localRectangle2 = this.g[3];
      int n = m + 18;
      localRectangle2.setPosition(n, this.k + this.j[3]);
      Rectangle localRectangle3 = this.g[4];
      int i1 = n + 23;
      localRectangle3.setPosition(i1, this.k + this.j[4]);
      this.g[5].setPosition(i1, this.k + this.j[5]);
      Rectangle localRectangle4 = this.g[6];
      int i2 = i1 + 23;
      localRectangle4.setPosition(i2, this.k + this.j[6]);
      Rectangle localRectangle5 = this.g[7];
      int i3 = i2 + 18;
      localRectangle5.setPosition(i3, this.k + this.j[7]);
      Rectangle localRectangle6 = this.g[8];
      int i4 = i3 + 18;
      localRectangle6.setPosition(i4, this.k + this.j[8]);
      Rectangle localRectangle7 = this.g[9];
      int i5 = i4 + 23;
      localRectangle7.setPosition(i5, this.k + this.j[9]);
      Rectangle localRectangle8 = this.g[10];
      int i6 = i5 + 18;
      localRectangle8.setPosition(i6, this.k + this.j[10]);
      Rectangle localRectangle9 = this.g[11];
      int i7 = i6 + 18;
      localRectangle9.setPosition(i7, this.k + this.j[11]);
      Rectangle localRectangle10 = this.g[12];
      int i8 = i7 + 23;
      localRectangle10.setPosition(i8, this.k + this.j[12]);
      Rectangle localRectangle11 = this.g[13];
      int i9 = i8 + 18;
      localRectangle11.setPosition(i9, this.k + this.j[13]);
      this.g[14].setPosition(i9, this.k + this.j[14]);
      Rectangle localRectangle12 = this.g[15];
      int i10 = i9 + 18;
      localRectangle12.setPosition(i10, this.k + this.j[15]);
      Rectangle localRectangle13 = this.g[16];
      int i11 = i10 + 23;
      localRectangle13.setPosition(i11, this.k + this.j[16]);
      Rectangle localRectangle14 = this.g[17];
      int i12 = i11 + 18;
      localRectangle14.setPosition(i12, this.k + this.j[17]);
      this.g[18].setPosition(i12, this.k + this.j[18]);
      this.g[19].setPosition(i12, this.k + this.j[19]);
      Rectangle localRectangle15 = this.g[20];
      int i13 = i12 + 18;
      localRectangle15.setPosition(i13, this.k + this.j[20]);
      this.g[21].setPosition(i13, this.k + this.j[21]);
      return;
      paramInt = 83;
    }
  }
  
  private void b()
  {
    a(-1000);
    for (int m = 0;; m++)
    {
      if (m >= this.g.length) {
        return;
      }
      this.g[m].clearEntityModifiers();
      Rectangle localRectangle = this.g[m];
      b localb = new b(this);
      IEntityModifier[] arrayOfIEntityModifier = new IEntityModifier[2];
      arrayOfIEntityModifier[0] = new DelayModifier(0.2F * m);
      arrayOfIEntityModifier[1] = new MoveXModifier(0.75F, 490.0F, this.i[m], EaseQuintInOut.getInstance());
      localRectangle.registerEntityModifier(new SequenceEntityModifier(localb, arrayOfIEntityModifier));
    }
  }
  
  public void onLoadComplete()
  {
    b();
  }
  
  public Engine onLoadEngine()
  {
    this.c = new Camera(0.0F, 0.0F, 480.0F, 720.0F);
    return new Engine(new EngineOptions(true, EngineOptions.ScreenOrientation.PORTRAIT, new FillResolutionPolicy(), this.c));
  }
  
  public void onLoadResources()
  {
    BitmapTextureAtlasTextureRegionFactory.setAssetBasePath("gfx/splash/");
    this.e = new BitmapTextureAtlas(16, 16, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.f = BitmapTextureAtlasTextureRegionFactory.createFromAsset(this.e, this, "triangle.png", 0, 0);
    this.mEngine.getTextureManager().loadTexture(this.e);
  }
  
  public Scene onLoadScene()
  {
    int m = 0;
    this.d = new Scene();
    this.d.setBackground(new ColorBackground(1.0F, 1.0F, 1.0F));
    this.l = 0;
    String[] arrayOfString = getResources().getStringArray(2131296256);
    this.g = new Rectangle[arrayOfString.length];
    this.j = new float[arrayOfString.length];
    if (m >= this.g.length)
    {
      a(1);
      a();
      a(-1000);
      this.d.registerUpdateHandler(new a(this));
      return this.d;
    }
    this.g[m] = a(arrayOfString[m]);
    this.j[m] = this.g[m].getY();
    if (m < 4) {
      e.a(this.g[m], -1963498);
    }
    for (;;)
    {
      if (m == 10) {
        this.g[m].attachChild(new Sprite(0.0F, 0.0F, this.f));
      }
      this.d.attachChild(this.g[m]);
      m++;
      break;
      if (m < 6) {
        e.a(this.g[m], -10092391);
      } else if (m < 9) {
        e.a(this.g[m], -16742969);
      } else if ((m < 12) && (m != 10)) {
        e.a(this.g[m], -9524445);
      } else if ((m < 16) && (m != 10)) {
        e.a(this.g[m], -232939);
      } else if (m != 10) {
        e.a(this.g[m], -2092708);
      }
    }
  }
  
  protected void onSetContentView()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(this);
    localRelativeLayout.setBackgroundColor(-1);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.mRenderSurfaceView = new RenderSurfaceView(this);
    this.mRenderSurfaceView.setEGLConfigChooser(false);
    this.mRenderSurfaceView.setRenderer(this.mEngine);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(super.createSurfaceViewLayoutParams());
    localLayoutParams1.addRule(13);
    localRelativeLayout.addView(this.mRenderSurfaceView, localLayoutParams1);
    setContentView(localRelativeLayout, localLayoutParams);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.splashscreen.Splash
 * JD-Core Version:    0.7.0.1
 */