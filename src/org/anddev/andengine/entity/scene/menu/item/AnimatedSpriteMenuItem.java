package org.anddev.andengine.entity.scene.menu.item;

import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class AnimatedSpriteMenuItem
  extends AnimatedSprite
  implements IMenuItem
{
  private final int mID;
  
  public AnimatedSpriteMenuItem(int paramInt, TiledTextureRegion paramTiledTextureRegion)
  {
    super(0.0F, 0.0F, paramTiledTextureRegion);
    this.mID = paramInt;
  }
  
  public int getID()
  {
    return this.mID;
  }
  
  public void onSelected() {}
  
  public void onUnselected() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.menu.item.AnimatedSpriteMenuItem
 * JD-Core Version:    0.7.0.1
 */