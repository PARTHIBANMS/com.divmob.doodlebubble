package com.divmob.maegame.g;

import android.content.res.AssetManager;
import com.divmob.maegame.game.MBaseGameActivity;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class d
{
  public static final int a = 0;
  public static final int b = 1;
  private static final int c = 5;
  private static final int d = 3;
  private BitmapTextureAtlas e;
  private int[] f;
  private float g;
  private TiledTextureRegion h;
  private int i;
  
  public d(MBaseGameActivity paramMBaseGameActivity, String paramString, int paramInt)
  {
    for (;;)
    {
      try
      {
        arrayOfString = new BufferedReader(new InputStreamReader(paramMBaseGameActivity.getAssets().open("gfx/" + paramString + ".txt"), "UTF-8")).readLine().split(",");
        this.f = new int[-4 + arrayOfString.length];
        if (j < this.f.length) {
          continue;
        }
        this.e = new BitmapTextureAtlas(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]), TextureOptions.BILINEAR);
        this.h = paramMBaseGameActivity.a(paramString, Integer.parseInt(arrayOfString[2]), Integer.parseInt(arrayOfString[3]), this.e);
        paramMBaseGameActivity.a(this.e);
      }
      catch (Exception localException)
      {
        String[] arrayOfString;
        localException.printStackTrace();
        continue;
      }
      this.g = 0.0F;
      this.i = paramInt;
      return;
      this.f[j] = Integer.parseInt(arrayOfString[(j + 4)]);
      j++;
    }
  }
  
  private void b(AnimatedSprite paramAnimatedSprite, int paramInt)
  {
    if (paramInt >= 97) {
      paramInt -= 32;
    }
    if (paramInt == 33)
    {
      paramAnimatedSprite.setCurrentTileIndex(26);
      this.g += 3 + this.f[26];
      return;
    }
    paramAnimatedSprite.setCurrentTileIndex(paramInt - 65);
    this.g += 3 + this.f[(paramInt - 65)];
  }
  
  private void c(AnimatedSprite paramAnimatedSprite, int paramInt)
  {
    paramAnimatedSprite.setCurrentTileIndex(paramInt - 33);
    try
    {
      this.g += 3 + this.f[(paramInt - 33)];
      return;
    }
    catch (Exception localException)
    {
      this.g += 3 + this.f[0];
    }
  }
  
  public AnimatedSprite a()
  {
    return new AnimatedSprite(0.0F, 0.0F, this.h.deepCopy());
  }
  
  public void a(AnimatedSprite paramAnimatedSprite, int paramInt)
  {
    if (paramInt == 32)
    {
      this.g = (5.0F + this.g);
      return;
    }
    paramAnimatedSprite.setPosition(this.g, 0.0F);
    switch (this.i)
    {
    default: 
      return;
    case 0: 
      c(paramAnimatedSprite, paramInt);
      return;
    }
    b(paramAnimatedSprite, paramInt);
  }
  
  public void b()
  {
    this.g = 0.0F;
  }
  
  public float c()
  {
    return this.g;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.d
 * JD-Core Version:    0.7.0.1
 */