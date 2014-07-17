package org.anddev.andengine.entity.sprite;

import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.primitive.BaseRectangle;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.region.BaseTextureRegion;
import org.anddev.andengine.opengl.texture.region.buffer.TextureRegionBuffer;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.opengl.vertex.RectangleVertexBuffer;

public abstract class BaseSprite
  extends BaseRectangle
{
  protected final BaseTextureRegion mTextureRegion;
  
  public BaseSprite(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, BaseTextureRegion paramBaseTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.mTextureRegion = paramBaseTextureRegion;
    initBlendFunction();
  }
  
  public BaseSprite(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, BaseTextureRegion paramBaseTextureRegion, RectangleVertexBuffer paramRectangleVertexBuffer)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramRectangleVertexBuffer);
    this.mTextureRegion = paramBaseTextureRegion;
    initBlendFunction();
  }
  
  private void initBlendFunction()
  {
    if (this.mTextureRegion.getTexture().getTextureOptions().mPreMultipyAlpha) {
      setBlendFunction(1, 771);
    }
  }
  
  protected void doDraw(GL10 paramGL10, Camera paramCamera)
  {
    this.mTextureRegion.onApply(paramGL10);
    super.doDraw(paramGL10, paramCamera);
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    TextureRegionBuffer localTextureRegionBuffer = this.mTextureRegion.getTextureBuffer();
    if (localTextureRegionBuffer.isManaged()) {
      localTextureRegionBuffer.unloadFromActiveBufferObjectManager();
    }
  }
  
  public BaseTextureRegion getTextureRegion()
  {
    return this.mTextureRegion;
  }
  
  protected void onInitDraw(GL10 paramGL10)
  {
    super.onInitDraw(paramGL10);
    GLHelper.enableTextures(paramGL10);
    GLHelper.enableTexCoordArray(paramGL10);
  }
  
  public void reset()
  {
    super.reset();
    initBlendFunction();
  }
  
  public void setFlippedHorizontal(boolean paramBoolean)
  {
    this.mTextureRegion.setFlippedHorizontal(paramBoolean);
  }
  
  public void setFlippedVertical(boolean paramBoolean)
  {
    this.mTextureRegion.setFlippedVertical(paramBoolean);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.sprite.BaseSprite
 * JD-Core Version:    0.7.0.1
 */