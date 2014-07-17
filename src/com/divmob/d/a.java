package com.divmob.d;

import android.content.res.AssetManager;
import android.graphics.Color;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import java.io.InputStream;
import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.modifier.DelayModifier;
import org.anddev.andengine.entity.modifier.MoveYModifier;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.background.ColorBackground;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.ui.activity.BaseGameActivity;
import org.anddev.andengine.util.modifier.ease.EaseSineOut;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
  extends Scene
{
  public static int a = 800;
  public static int b = 480;
  private static String[] c;
  private static int d;
  private static String[][] e;
  private static String[] f;
  private static String[] g;
  private static String[] h;
  private Sprite i;
  private Sprite j;
  private BaseGameActivity k;
  private TextureRegion[] l;
  private Sprite m;
  private boolean n;
  private float o;
  
  public a(BaseGameActivity paramBaseGameActivity, int paramInt1, int paramInt2, float paramFloat, boolean paramBoolean)
  {
    this.k = paramBaseGameActivity;
    a = paramInt1;
    b = paramInt2;
    this.o = paramFloat;
    setBackground(new ColorBackground(Color.red(6710886) / 255.0F, Color.green(6710886) / 255.0F, Color.blue(6710886) / 255.0F));
    d();
    b localb = new b(this, 0.0F, 0.0F, this.l[0]);
    registerTouchArea(localb);
    setOnSceneTouchListenerBindingEnabled(true);
    setTouchAreaBindingEnabled(true);
    setOnAreaTouchTraversalFrontToBack();
    setOnAreaTouchTraversalFrontToBack();
    c localc = new c(this, this, paramBaseGameActivity);
    localc.a(480.0F);
    TextureRegion[] arrayOfTextureRegion;
    if (paramBoolean)
    {
      localb.setPosition(a - localb.getWidth(), 0.0F);
      localc.a(0.5F * (a - localb.getWidth() - d), 40.0F);
      this.m.setPosition(0.5F * (a - localb.getWidth() - d), 0.0F);
      arrayOfTextureRegion = new TextureRegion[-1 + this.l.length];
    }
    for (int i1 = 0;; i1++)
    {
      if (i1 >= arrayOfTextureRegion.length)
      {
        localc.a(arrayOfTextureRegion);
        attachChild(localc);
        attachChild(localb);
        attachChild(this.m);
        setOnSceneTouchListener(new d(this, localc));
        this.j.setPosition(a - this.j.getWidth() - 5.0F, b - this.j.getHeight() - 5.0F - this.o);
        attachChild(this.j);
        return;
        localb.setPosition(0.0F, b - localb.getHeight() - this.o);
        localc.a(0.5F * (a - d), 40.0F);
        this.m.setPosition(0.5F * (a - d), 0.0F);
        break;
      }
      arrayOfTextureRegion[i1] = this.l[(1 + i1 % (-1 + this.l.length))];
    }
  }
  
  private void a(int paramInt)
  {
    this.k.runOnUiThread(new e(this, paramInt));
  }
  
  private void d()
  {
    e();
    BitmapTextureAtlasTextureRegionFactory.setAssetBasePath("gfx/apppromote/");
    BitmapTextureAtlas localBitmapTextureAtlas1 = new BitmapTextureAtlas(Integer.parseInt(h[0]), Integer.parseInt(h[1]), TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    TextureRegion localTextureRegion1 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(localBitmapTextureAtlas1, this.k, h[2], 0, 0);
    this.k.getEngine().getTextureManager().loadTextures(new ITexture[] { localBitmapTextureAtlas1 });
    this.m = new Sprite(0.0F, 0.0F, localTextureRegion1);
    this.l = new TextureRegion[1 + e.length];
    BitmapTextureAtlas localBitmapTextureAtlas2 = new BitmapTextureAtlas(512, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    TextureRegion localTextureRegion2 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(localBitmapTextureAtlas2, this.k, c[0], 0, 0);
    this.k.getEngine().getTextureManager().loadTextures(new ITexture[] { localBitmapTextureAtlas2 });
    this.l[0] = localTextureRegion2;
    for (int i1 = 0;; i1++)
    {
      if (i1 >= e.length)
      {
        BitmapTextureAtlas localBitmapTextureAtlas3 = new BitmapTextureAtlas(256, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
        this.j = new Sprite(0.0F, 0.0F, BitmapTextureAtlasTextureRegionFactory.createFromAsset(localBitmapTextureAtlas3, this.k, g[0], 0, 0));
        this.k.getEngine().getTextureManager().loadTextures(new ITexture[] { localBitmapTextureAtlas3 });
        BitmapTextureAtlas localBitmapTextureAtlas4 = new BitmapTextureAtlas(256, 128, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
        this.i = new Sprite(-1000.0F, 0.0F, BitmapTextureAtlasTextureRegionFactory.createFromAsset(localBitmapTextureAtlas4, this.k, f[0], 0, 0));
        this.k.getEngine().getTextureManager().loadTextures(new ITexture[] { localBitmapTextureAtlas4 });
        BitmapTextureAtlasTextureRegionFactory.setAssetBasePath("gfx/");
        return;
      }
      BitmapTextureAtlas localBitmapTextureAtlas5 = new BitmapTextureAtlas(512, 256, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
      TextureRegion localTextureRegion3 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(localBitmapTextureAtlas5, this.k, e[i1][0], 0, 0);
      this.l[(i1 + 1)] = localTextureRegion3;
      this.k.getEngine().getTextureManager().loadTextures(new ITexture[] { localBitmapTextureAtlas5 });
    }
  }
  
  private void e()
  {
    for (;;)
    {
      int i1;
      JSONObject localJSONObject1;
      String str;
      try
      {
        InputStream localInputStream = this.k.getAssets().open("gfx/apppromote/data.json");
        byte[] arrayOfByte = new byte[localInputStream.available()];
        localInputStream.read(arrayOfByte);
        localInputStream.close();
        JSONArray localJSONArray1 = new JSONArray(new String(arrayOfByte));
        i1 = 0;
        if (i1 >= localJSONArray1.length()) {
          return;
        }
        localJSONObject1 = localJSONArray1.getJSONObject(i1);
        str = localJSONObject1.getString("name");
        if (str.equals("mainapp"))
        {
          c = new String[3];
          c[0] = localJSONObject1.getString("file");
          c[1] = localJSONObject1.getString("width");
          c[2] = localJSONObject1.getString("height");
        }
        else if (str.equals("playbtn"))
        {
          f = new String[3];
          f[0] = localJSONObject1.getString("file");
          f[1] = localJSONObject1.getString("width");
          f[2] = localJSONObject1.getString("height");
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (str.equals("loading"))
      {
        g = new String[5];
        g[0] = localJSONObject1.getString("file");
        g[1] = localJSONObject1.getString("width");
        g[2] = localJSONObject1.getString("height");
      }
      else
      {
        if (str.equals("promoteapp"))
        {
          d = localJSONObject1.getInt("width");
          JSONArray localJSONArray2 = localJSONObject1.getJSONArray("data");
          e = new String[localJSONArray2.length()][];
          for (int i2 = 0; i2 < localJSONArray2.length(); i2++)
          {
            JSONObject localJSONObject2 = localJSONArray2.getJSONObject(i2);
            String[][] arrayOfString = e;
            String[] arrayOfString1 = new String[2];
            arrayOfString1[0] = localJSONObject2.getString("file");
            arrayOfString1[1] = localJSONObject2.getString("link");
            arrayOfString[i2] = arrayOfString1;
          }
        }
        h = new String[3];
        h[0] = localJSONObject1.getString("width");
        h[1] = localJSONObject1.getString("height");
        h[2] = localJSONObject1.getString("file");
      }
      i1++;
    }
  }
  
  public void a()
  {
    this.n = true;
    if (this.i.getX() <= -1000.0F) {
      this.i.setPosition(a - this.i.getWidth() - 10.0F, b - this.i.getHeight() - 10.0F - this.o);
    }
    attachChild(this.i);
  }
  
  public void a(float paramFloat)
  {
    registerEntityModifier(new DelayModifier(paramFloat, new f(this)));
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    this.i.setPosition(paramFloat1, paramFloat2 - this.o);
  }
  
  public void a(boolean paramBoolean)
  {
    this.n = paramBoolean;
    this.j.setVisible(false);
    this.j.setIgnoreUpdate(true);
    if (this.i.getX() <= -1000.0F) {
      this.i.setPosition(a - this.i.getWidth() - 10.0F, b - this.i.getHeight() - 10.0F - this.o);
    }
    attachChild(this.i);
  }
  
  public void b() {}
  
  public void onPlayClicked() {}
  
  public class a
    extends Entity
    implements GestureDetector.OnGestureListener
  {
    private Sprite[] a;
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private MoveYModifier j;
    private float k;
    private float l;
    private GestureDetector m;
    
    public a(BaseGameActivity paramBaseGameActivity)
    {
      paramBaseGameActivity.runOnUiThread(new g(this));
    }
    
    private void a()
    {
      for (int n = 0;; n++)
      {
        if (n >= this.a.length) {
          return;
        }
        this.a[n].setPosition(this.k, this.mY + this.l + n * this.f);
      }
    }
    
    private void b(float paramFloat1, float paramFloat2)
    {
      this.i = paramFloat2;
      float f1 = this.mY + 0.3F * paramFloat2;
      float f2;
      float f3;
      if (paramFloat2 > 0.0F)
      {
        f2 = Math.min(0.0F, f1);
        f3 = Math.abs(f2 - this.mY);
        if ((f2 != 0.0F) && (f2 != -this.e + this.c - this.l)) {
          break label126;
        }
      }
      label126:
      for (this.j = new MoveYModifier(f3 / 400.0F, this.mY, f2, EaseSineOut.getInstance());; this.j = new MoveYModifier(f3 / 1200.0F, this.mY, f2, EaseSineOut.getInstance()))
      {
        registerEntityModifier(this.j);
        return;
        f2 = Math.max(-this.e + this.c - this.l, f1);
        break;
      }
    }
    
    public void a(float paramFloat)
    {
      this.c = paramFloat;
    }
    
    public void a(float paramFloat1, float paramFloat2)
    {
      this.k = paramFloat1;
      this.l = paramFloat2;
    }
    
    public void a(int paramInt) {}
    
    public void a(TouchEvent paramTouchEvent)
    {
      this.g = paramTouchEvent.getX();
      this.h = paramTouchEvent.getY();
      if ((this.g < this.d) && (this.m != null))
      {
        this.m.onTouchEvent(paramTouchEvent.getMotionEvent());
        if (((paramTouchEvent.isActionUp()) || (paramTouchEvent.isActionOutside()) || (paramTouchEvent.isActionCancel())) && ((getY() > this.l) || (getY() + this.e < a.b - this.l))) {
          b(0.0F, 1000.0F * this.i);
        }
      }
    }
    
    public void a(TextureRegion[] paramArrayOfTextureRegion)
    {
      int n = 0;
      this.f = paramArrayOfTextureRegion[0].getHeight();
      this.d = paramArrayOfTextureRegion[0].getWidth();
      this.e = (paramArrayOfTextureRegion.length * this.f);
      this.a = new Sprite[paramArrayOfTextureRegion.length];
      for (;;)
      {
        if (n >= paramArrayOfTextureRegion.length)
        {
          a();
          return;
        }
        this.a[n] = new Sprite(0.0F, 0.0F, paramArrayOfTextureRegion[n]);
        attachChild(this.a[n]);
        n++;
      }
    }
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      unregisterEntityModifier(this.j);
      this.j = null;
      return true;
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      b(paramFloat1, paramFloat2);
      return true;
    }
    
    public void onLongPress(MotionEvent paramMotionEvent) {}
    
    protected void onManagedUpdate(float paramFloat)
    {
      super.onManagedUpdate(paramFloat);
      if (new Float(this.mY).isNaN()) {
        setPosition(0.0F, 1000.0F * -this.i);
      }
    }
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      this.i = (-paramFloat2);
      this.mY -= paramFloat2;
      if (this.mY > 0.5F * this.f) {
        this.mY = (0.5F * this.f);
      }
      if (this.mY < -this.e + this.c - 0.5F * this.f - this.l) {
        this.mY = (-this.e + this.c - 0.5F * this.f - this.l);
      }
      return true;
    }
    
    public void onShowPress(MotionEvent paramMotionEvent) {}
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      for (int n = 0;; n++)
      {
        if (n >= this.a.length) {
          return false;
        }
        if (this.a[n].contains(this.g, this.h))
        {
          a(n);
          return true;
        }
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.d.a
 * JD-Core Version:    0.7.0.1
 */