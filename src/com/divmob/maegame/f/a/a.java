package com.divmob.maegame.f.a;

import com.divmob.maegame.e.e;
import com.divmob.maegame.game.MBaseGameActivity;
import java.util.ArrayList;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class a
  extends AnimatedSprite
{
  private boolean a = false;
  
  public a(MBaseGameActivity paramMBaseGameActivity, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    this(paramMBaseGameActivity, null, paramFloat1, paramFloat2, paramTiledTextureRegion);
  }
  
  public a(MBaseGameActivity paramMBaseGameActivity, String paramString, int paramInt1, int paramInt2)
  {
    this(paramMBaseGameActivity, null, paramString, paramInt1, paramInt2);
  }
  
  public a(MBaseGameActivity paramMBaseGameActivity, Scene paramScene, float paramFloat1, float paramFloat2, String paramString, int paramInt1, int paramInt2)
  {
    this(paramMBaseGameActivity, paramScene, paramFloat1, paramFloat2, paramMBaseGameActivity.l().a(paramString, 1, 2, paramInt1, paramInt2));
  }
  
  public a(MBaseGameActivity paramMBaseGameActivity, Scene paramScene, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
    if (paramMBaseGameActivity.x == null) {
      paramMBaseGameActivity.x = new ArrayList();
    }
    paramMBaseGameActivity.x.add(this);
    if (paramScene != null) {
      a(paramScene);
    }
  }
  
  public a(MBaseGameActivity paramMBaseGameActivity, Scene paramScene, String paramString, int paramInt1, int paramInt2)
  {
    this(paramMBaseGameActivity, paramScene, 0.0F, 0.0F, paramString, paramInt1, paramInt2);
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
  
  public void a(TouchEvent paramTouchEvent)
  {
    if (contains(paramTouchEvent.getX(), paramTouchEvent.getY()))
    {
      this.a = true;
      setCurrentTileIndex(1);
      return;
    }
    this.a = false;
  }
  
  public void b()
  {
    setCurrentTileIndex(0);
    this.a = false;
  }
  
  public boolean c()
  {
    return this.a;
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    boolean bool2;
    switch (paramTouchEvent.getAction())
    {
    default: 
      this.a = false;
      setCurrentTileIndex(1);
      bool2 = true;
    }
    boolean bool1;
    do
    {
      return bool2;
      setCurrentTileIndex(0);
      this.a = false;
      bool1 = contains(paramFloat1 + this.mX, paramFloat2 + this.mY);
      bool2 = false;
    } while (!bool1);
    this.a = true;
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.a.a
 * JD-Core Version:    0.7.0.1
 */