package com.divmob.maegame.f.b;

import com.divmob.maegame.g.e;
import com.divmob.maegame.game.MBaseGameActivity;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class b
  extends Rectangle
{
  public Sprite[] a;
  private BitmapTextureAtlas[] b;
  private TextureRegion[] c;
  private int d;
  private MBaseGameActivity e;
  private int f;
  private int g;
  
  public b(MBaseGameActivity paramMBaseGameActivity, Scene paramScene, int paramInt, String paramString)
  {
    super(0.0F, 0.0F, 0.1F, 0.1F);
    this.e = paramMBaseGameActivity;
    this.d = paramInt;
    this.b = new BitmapTextureAtlas[paramInt];
    int j = 0;
    if (j >= this.b.length)
    {
      setBlendFunction(770, 771);
      this.c = new TextureRegion[this.b.length];
      this.a = new Sprite[this.c.length];
    }
    for (;;)
    {
      if (i >= this.b.length)
      {
        paramScene.attachChild(this);
        return;
        this.b[j] = new BitmapTextureAtlas(512, 512, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
        paramMBaseGameActivity.a(this.b[j]);
        j++;
        break;
      }
      this.c[i] = paramMBaseGameActivity.a(paramString, this.b[i]);
      this.a[i] = new Sprite(10.0F, 10.0F, this.c[i]);
      this.a[i].setBlendFunction(770, 771);
      attachChild(this.a[i]);
      i++;
    }
  }
  
  public int a()
  {
    return this.g;
  }
  
  public void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    this.g = -1;
    for (int i = 0;; i++)
    {
      if (i >= this.f) {}
      for (;;)
      {
        if (this.g >= 0) {
          this.g += paramInt * this.d;
        }
        return;
        if (!this.a[i].contains(paramFloat1, paramFloat2)) {
          break;
        }
        this.g = i;
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = 0;
    float f1 = this.e.s - paramFloat3 - paramFloat4;
    float f2 = this.e.t - paramFloat1 - paramFloat2;
    float f3 = f1 / paramInt2;
    float f4 = f2 / paramInt1;
    float f5 = 0.5F * (f3 - this.a[0].getWidth());
    float f6 = 0.5F * (f4 - this.a[0].getHeight());
    for (;;)
    {
      if (i >= this.a.length) {
        return;
      }
      this.a[i].setPosition(f5 + (paramFloat3 + f3 * (i % paramInt2)), f6 + (paramFloat1 + f4 * (i / paramInt2)));
      i++;
    }
  }
  
  public void a(int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    this.f = Math.min(paramInt2 - paramInt1 * this.d, this.d);
    int k;
    for (int i = 0;; i++)
    {
      int j = this.f;
      k = 0;
      if (i >= j)
      {
        if (k < this.a.length) {
          break;
        }
        return;
      }
      this.b[i].clearTextureAtlasSources();
      this.e.a(paramArrayOfString[(i + paramInt1 * this.d)], this.b[i]);
    }
    if (k < this.f) {
      e.d(this.a[k]);
    }
    for (;;)
    {
      k++;
      break;
      e.e(this.a[k]);
    }
  }
  
  public void setAlpha(float paramFloat)
  {
    super.setAlpha(paramFloat);
    for (int i = 0;; i++)
    {
      if (i >= this.a.length) {
        return;
      }
      this.a[i].setAlpha(paramFloat);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.b.b
 * JD-Core Version:    0.7.0.1
 */