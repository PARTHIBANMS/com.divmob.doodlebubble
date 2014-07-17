package com.divmob.maegame.e;

import java.util.HashMap;
import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.ui.activity.BaseGameActivity;

public class e
{
  public HashMap<String, BitmapTextureAtlas> a;
  public HashMap<String, TextureRegion> b;
  public HashMap<String, TiledTextureRegion> c;
  private BaseGameActivity d;
  
  public e(BaseGameActivity paramBaseGameActivity)
  {
    this.d = paramBaseGameActivity;
    this.a = new HashMap();
    this.b = new HashMap();
    this.c = new HashMap();
  }
  
  private static void a(BaseGameActivity paramBaseGameActivity, BitmapTextureAtlas paramBitmapTextureAtlas)
  {
    paramBaseGameActivity.getEngine().getTextureManager().loadTexture(paramBitmapTextureAtlas);
  }
  
  public TextureRegion a(String paramString, int paramInt1, int paramInt2)
  {
    if (this.b.containsKey(paramString)) {
      return (TextureRegion)this.b.get(paramString);
    }
    BitmapTextureAtlas localBitmapTextureAtlas = new BitmapTextureAtlas(paramInt1, paramInt2, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    TextureRegion localTextureRegion = d.a(localBitmapTextureAtlas, this.d, paramString + ".png", 0, 0, 1);
    this.b.put(paramString, localTextureRegion);
    a(this.d, localBitmapTextureAtlas);
    return localTextureRegion;
  }
  
  public TiledTextureRegion a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.c.containsKey(paramString)) {
      return (TiledTextureRegion)this.c.get(paramString);
    }
    BitmapTextureAtlas localBitmapTextureAtlas = new BitmapTextureAtlas(paramInt3, paramInt4, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    TiledTextureRegion localTiledTextureRegion = d.a(localBitmapTextureAtlas, this.d, paramString + ".png", 0, 0, paramInt1, paramInt2, 1);
    this.c.put(paramString, localTiledTextureRegion);
    a(this.d, localBitmapTextureAtlas);
    return localTiledTextureRegion;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.e.e
 * JD-Core Version:    0.7.0.1
 */