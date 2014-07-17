package com.divmob.doodlebubble;

import com.divmob.maegame.g.c;
import com.divmob.maegame.g.d;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class i
  extends AnimatedSprite
{
  public boolean a;
  private c b;
  
  public i(TiledTextureRegion paramTiledTextureRegion, d paramd)
  {
    super(0.0F, 0.0F, paramTiledTextureRegion.deepCopy());
    this.b = new c(0.0F, 0.0F, "", paramd);
    attachChild(this.b);
  }
  
  public void a()
  {
    this.a = true;
    setCurrentTileIndex(0);
  }
  
  public void a(int paramInt)
  {
    this.b.a(paramInt);
    this.b.setPosition((this.mWidth - this.b.getWidth()) / 2.0F, 53.0F);
  }
  
  public void b()
  {
    this.a = false;
    setCurrentTileIndex(1);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.i
 * JD-Core Version:    0.7.0.1
 */