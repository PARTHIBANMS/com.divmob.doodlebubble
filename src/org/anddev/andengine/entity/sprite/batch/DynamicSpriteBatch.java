package org.anddev.andengine.entity.sprite.batch;

import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.region.buffer.SpriteBatchTextureRegionBuffer;
import org.anddev.andengine.opengl.vertex.SpriteBatchVertexBuffer;

public abstract class DynamicSpriteBatch
  extends SpriteBatch
{
  public DynamicSpriteBatch(ITexture paramITexture, int paramInt)
  {
    super(paramITexture, paramInt);
  }
  
  public DynamicSpriteBatch(ITexture paramITexture, int paramInt, SpriteBatchVertexBuffer paramSpriteBatchVertexBuffer, SpriteBatchTextureRegionBuffer paramSpriteBatchTextureRegionBuffer)
  {
    super(paramITexture, paramInt, paramSpriteBatchVertexBuffer, paramSpriteBatchTextureRegionBuffer);
  }
  
  protected void begin(GL10 paramGL10)
  {
    super.begin(paramGL10);
    if (onUpdateSpriteBatch()) {
      submit();
    }
  }
  
  protected abstract boolean onUpdateSpriteBatch();
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.sprite.batch.DynamicSpriteBatch
 * JD-Core Version:    0.7.0.1
 */