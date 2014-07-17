package com.divmob.maegame.f.a;

import com.divmob.maegame.e.e;
import com.divmob.maegame.game.MBaseGameActivity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class d
  extends AnimatedSprite
{
  protected boolean b;
  
  public d(float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion.deepCopy());
    this.b = false;
    b();
  }
  
  public d(float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion, boolean paramBoolean)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion.deepCopy());
    this.b = paramBoolean;
    b();
  }
  
  public d(MBaseGameActivity paramMBaseGameActivity, float paramFloat1, float paramFloat2, String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this(paramFloat1, paramFloat2, paramMBaseGameActivity.l().a(paramString, 1, 2, paramInt1, paramInt2), paramBoolean);
  }
  
  public d(MBaseGameActivity paramMBaseGameActivity, String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this(paramMBaseGameActivity, 0.0F, 0.0F, paramString, paramBoolean, paramInt1, paramInt2);
  }
  
  public void a() {}
  
  public void a(Scene paramScene)
  {
    paramScene.attachChild(this);
    paramScene.registerTouchArea(this);
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
    paramScene.registerTouchArea(this);
  }
  
  public void a(TextureRegion paramTextureRegion)
  {
    Sprite localSprite = new Sprite(0.0F, 0.0F, paramTextureRegion);
    attachChild(localSprite);
    localSprite.setPosition(2.0F + this.mWidth, (this.mHeight - localSprite.getHeight()) / 2.0F);
  }
  
  protected void b()
  {
    if (this.b)
    {
      setCurrentTileIndex(0);
      return;
    }
    setCurrentTileIndex(1);
  }
  
  public void c()
  {
    this.b = true;
    setCurrentTileIndex(0);
  }
  
  public void d()
  {
    this.b = false;
    setCurrentTileIndex(1);
  }
  
  public boolean e()
  {
    return this.b;
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    switch (paramTouchEvent.getAction())
    {
    default: 
      return false;
    }
    if (this.b) {}
    for (boolean bool = false;; bool = true)
    {
      this.b = bool;
      b();
      a();
      return false;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.a.d
 * JD-Core Version:    0.7.0.1
 */