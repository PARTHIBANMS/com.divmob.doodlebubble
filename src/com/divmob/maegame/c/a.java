package com.divmob.maegame.c;

import com.divmob.maegame.e.d;
import com.divmob.maegame.e.e;
import com.divmob.maegame.game.MBaseGameActivity;
import java.util.HashMap;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class a
  extends Sprite
{
  private String a;
  
  public a(MBaseGameActivity paramMBaseGameActivity, String paramString, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    super(paramFloat1, paramFloat2, paramMBaseGameActivity.l().a(paramString, paramInt1, paramInt2));
  }
  
  public a(MBaseGameActivity paramMBaseGameActivity, String paramString, int paramInt1, int paramInt2)
  {
    this(paramMBaseGameActivity, paramString, 0.0F, 0.0F, paramInt1, paramInt2);
  }
  
  public void a(MBaseGameActivity paramMBaseGameActivity, String paramString)
  {
    e locale = paramMBaseGameActivity.l();
    BitmapTextureAtlas localBitmapTextureAtlas = (BitmapTextureAtlas)locale.a.get(this.a);
    localBitmapTextureAtlas.clearTextureAtlasSources();
    TextureRegion localTextureRegion = d.a(localBitmapTextureAtlas, paramMBaseGameActivity, paramString, 0, 0, 1);
    locale.a.remove(this.a);
    locale.b.remove(this.a);
    locale.a.put(paramString, localBitmapTextureAtlas);
    locale.b.put(paramString, localTextureRegion);
    this.a = paramString;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.c.a
 * JD-Core Version:    0.7.0.1
 */