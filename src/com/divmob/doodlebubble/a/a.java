package com.divmob.doodlebubble.a;

import com.divmob.doodlebubble.GameActivity;
import com.divmob.maegame.g.e;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class a
  extends AnimatedSprite
{
  public static final float a = 24.0F;
  public static final float b = 42.0F;
  public int c;
  public int d;
  public boolean e;
  private boolean f;
  
  public a(TiledTextureRegion paramTiledTextureRegion)
  {
    super(0.0F, 0.0F, paramTiledTextureRegion.deepCopy());
    g();
  }
  
  private void g()
  {
    this.e = false;
    this.f = false;
  }
  
  public void a()
  {
    e.e(this);
  }
  
  public void a(float paramFloat)
  {
    this.mY = (paramFloat + this.mY);
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 0) {
      paramInt = 0;
    }
    if (paramInt >= com.divmob.common.a.a.a) {
      paramInt = -1 + com.divmob.common.a.a.a;
    }
    setCurrentTileIndex(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    this.c = paramInt1;
    this.d = paramInt2;
    setPosition((float)(24.0D + 48.0D * paramInt2 - 24.0D * (paramInt1 % 2)), GameActivity.h + 42.0F * paramInt1);
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
  }
  
  public boolean a(AnimatedSprite paramAnimatedSprite)
  {
    boolean bool1 = false;
    if (paramAnimatedSprite != null)
    {
      float f1 = this.mX - paramAnimatedSprite.getX();
      float f2 = this.mY - paramAnimatedSprite.getY();
      boolean bool2 = f1 * f1 + f2 * f2 < 1849.0F;
      bool1 = false;
      if (bool2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void b()
  {
    e.d(this);
    g();
  }
  
  public void c()
  {
    this.f = true;
  }
  
  public boolean d()
  {
    return (this.c == 0) || (this.f);
  }
  
  public void e()
  {
    this.f = false;
  }
  
  public int f()
  {
    return getCurrentTileIndex();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.a.a
 * JD-Core Version:    0.7.0.1
 */