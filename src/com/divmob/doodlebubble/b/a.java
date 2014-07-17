package com.divmob.doodlebubble.b;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class a
  extends Sprite
{
  public a(TextureRegion paramTextureRegion)
  {
    super(0.0F, 0.0F, paramTextureRegion);
    setPosition(-30 + com.divmob.maegame.a.a.g / 2, com.divmob.maegame.a.a.h - this.mHeight / 2.0F - 30.0F);
    setRotationCenter(30.0F, this.mHeight / 2.0F);
    setRotation(-90.0F);
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.b.a
 * JD-Core Version:    0.7.0.1
 */