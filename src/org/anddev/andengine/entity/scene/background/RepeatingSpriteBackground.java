package org.anddev.andengine.entity.scene.background;

import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.bitmap.BitmapTexture.BitmapTextureFormat;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class RepeatingSpriteBackground
  extends SpriteBackground
{
  private BitmapTextureAtlas mBitmapTextureAtlas;
  private final float mScale;
  
  public RepeatingSpriteBackground(float paramFloat1, float paramFloat2, TextureManager paramTextureManager, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource)
    throws IllegalArgumentException
  {
    this(paramFloat1, paramFloat2, paramTextureManager, paramIBitmapTextureAtlasSource, 1.0F);
  }
  
  public RepeatingSpriteBackground(float paramFloat1, float paramFloat2, TextureManager paramTextureManager, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, float paramFloat3)
    throws IllegalArgumentException
  {
    super(null);
    this.mScale = paramFloat3;
    this.mEntity = loadSprite(paramFloat1, paramFloat2, paramTextureManager, paramIBitmapTextureAtlasSource);
  }
  
  private Sprite loadSprite(float paramFloat1, float paramFloat2, TextureManager paramTextureManager, IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource)
    throws IllegalArgumentException
  {
    this.mBitmapTextureAtlas = new BitmapTextureAtlas(paramIBitmapTextureAtlasSource.getWidth(), paramIBitmapTextureAtlasSource.getHeight(), BitmapTexture.BitmapTextureFormat.RGBA_8888, TextureOptions.REPEATING_NEAREST_PREMULTIPLYALPHA);
    TextureRegion localTextureRegion = BitmapTextureAtlasTextureRegionFactory.createFromSource(this.mBitmapTextureAtlas, paramIBitmapTextureAtlasSource, 0, 0);
    int i = Math.round(paramFloat1 / this.mScale);
    int j = Math.round(paramFloat2 / this.mScale);
    localTextureRegion.setWidth(i);
    localTextureRegion.setHeight(j);
    paramTextureManager.loadTexture(this.mBitmapTextureAtlas);
    Sprite localSprite = new Sprite(0.0F, 0.0F, i, j, localTextureRegion);
    localSprite.setScaleCenter(0.0F, 0.0F);
    localSprite.setScale(this.mScale);
    return localSprite;
  }
  
  public BitmapTextureAtlas getBitmapTextureAtlas()
  {
    return this.mBitmapTextureAtlas;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.RepeatingSpriteBackground
 * JD-Core Version:    0.7.0.1
 */