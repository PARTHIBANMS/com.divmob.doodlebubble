package org.anddev.andengine.entity.sprite.batch;

import java.util.ArrayList;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.sprite.BaseSprite;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.region.buffer.SpriteBatchTextureRegionBuffer;
import org.anddev.andengine.opengl.vertex.SpriteBatchVertexBuffer;
import org.anddev.andengine.util.SmartList;

public class SpriteGroup
  extends DynamicSpriteBatch
{
  public SpriteGroup(ITexture paramITexture, int paramInt)
  {
    super(paramITexture, paramInt);
    setChildrenVisible(false);
  }
  
  public SpriteGroup(ITexture paramITexture, int paramInt, SpriteBatchVertexBuffer paramSpriteBatchVertexBuffer, SpriteBatchTextureRegionBuffer paramSpriteBatchTextureRegionBuffer)
  {
    super(paramITexture, paramInt, paramSpriteBatchVertexBuffer, paramSpriteBatchTextureRegionBuffer);
    setChildrenVisible(false);
  }
  
  private void assertCapacity()
  {
    if (getChildCount() >= this.mCapacity) {
      throw new IllegalStateException("This SpriteGroup has already reached its capacity (" + this.mCapacity + ") !");
    }
  }
  
  @Deprecated
  public void attachChild(IEntity paramIEntity)
    throws IllegalArgumentException
  {
    if ((paramIEntity instanceof BaseSprite))
    {
      attachChild((BaseSprite)paramIEntity);
      return;
    }
    throw new IllegalArgumentException("A SpriteGroup can only handle children of type BaseSprite or subclasses of BaseSprite, like Sprite, TiledSprite or AnimatedSprite.");
  }
  
  public void attachChild(BaseSprite paramBaseSprite)
  {
    assertCapacity();
    assertTexture(paramBaseSprite.getTextureRegion());
    super.attachChild(paramBaseSprite);
  }
  
  public void attachChildren(ArrayList<? extends BaseSprite> paramArrayList)
  {
    int i = paramArrayList.size();
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      attachChild((BaseSprite)paramArrayList.get(j));
    }
  }
  
  protected boolean onUpdateSpriteBatch()
  {
    SmartList localSmartList = this.mChildren;
    if (localSmartList == null) {
      return false;
    }
    int i = localSmartList.size();
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return true;
      }
      super.drawWithoutChecks((BaseSprite)localSmartList.get(j));
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.sprite.batch.SpriteGroup
 * JD-Core Version:    0.7.0.1
 */