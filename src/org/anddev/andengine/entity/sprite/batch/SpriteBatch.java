package org.anddev.andengine.entity.sprite.batch;

import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.sprite.BaseSprite;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.region.BaseTextureRegion;
import org.anddev.andengine.opengl.texture.region.buffer.SpriteBatchTextureRegionBuffer;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.opengl.vertex.SpriteBatchVertexBuffer;

public class SpriteBatch
  extends Entity
{
  protected final int mCapacity;
  private int mDestinationBlendFunction;
  protected int mIndex;
  private int mSourceBlendFunction;
  private final SpriteBatchTextureRegionBuffer mSpriteBatchTextureRegionBuffer;
  private final SpriteBatchVertexBuffer mSpriteBatchVertexBuffer;
  protected final ITexture mTexture;
  private int mVertices;
  
  public SpriteBatch(ITexture paramITexture, int paramInt)
  {
    this(paramITexture, paramInt, new SpriteBatchVertexBuffer(paramInt, 35044, true), new SpriteBatchTextureRegionBuffer(paramInt, 35044, true));
  }
  
  public SpriteBatch(ITexture paramITexture, int paramInt, SpriteBatchVertexBuffer paramSpriteBatchVertexBuffer, SpriteBatchTextureRegionBuffer paramSpriteBatchTextureRegionBuffer)
  {
    this.mTexture = paramITexture;
    this.mCapacity = paramInt;
    this.mSpriteBatchVertexBuffer = paramSpriteBatchVertexBuffer;
    this.mSpriteBatchTextureRegionBuffer = paramSpriteBatchTextureRegionBuffer;
    initBlendFunction();
  }
  
  private void assertCapacity()
  {
    if (this.mIndex == this.mCapacity) {
      throw new IllegalStateException("This SpriteBatch has already reached its capacity (" + this.mCapacity + ") !");
    }
  }
  
  private void assertCapacity(int paramInt)
  {
    if (paramInt >= this.mCapacity) {
      throw new IllegalStateException("This supplied pIndex: '" + paramInt + "' is exceeding the capacity: '" + this.mCapacity + "' of this SpriteBatch!");
    }
  }
  
  private void drawVertices(GL10 paramGL10, Camera paramCamera)
  {
    paramGL10.glDrawArrays(4, 0, this.mVertices);
  }
  
  private void initBlendFunction()
  {
    if (this.mTexture.getTextureOptions().mPreMultipyAlpha) {
      setBlendFunction(1, 771);
    }
  }
  
  private void onApplyTextureRegion(GL10 paramGL10)
  {
    if (GLHelper.EXTENSIONS_VERTEXBUFFEROBJECTS)
    {
      GL11 localGL11 = (GL11)paramGL10;
      this.mSpriteBatchTextureRegionBuffer.selectOnHardware(localGL11);
      this.mTexture.bind(paramGL10);
      GLHelper.texCoordZeroPointer(localGL11);
      return;
    }
    this.mTexture.bind(paramGL10);
    GLHelper.texCoordPointer(paramGL10, this.mSpriteBatchTextureRegionBuffer.getFloatBuffer());
  }
  
  private void onSubmit()
  {
    this.mVertices = (6 * this.mIndex);
    this.mSpriteBatchVertexBuffer.submit();
    this.mSpriteBatchTextureRegionBuffer.submit();
    this.mIndex = 0;
    this.mSpriteBatchVertexBuffer.setIndex(0);
    this.mSpriteBatchTextureRegionBuffer.setIndex(0);
  }
  
  protected void assertTexture(BaseTextureRegion paramBaseTextureRegion)
  {
    if (paramBaseTextureRegion.getTexture() != this.mTexture) {
      throw new IllegalArgumentException("The supplied Texture does match the Texture of this SpriteBatch!");
    }
  }
  
  protected void begin(GL10 paramGL10) {}
  
  protected void doDraw(GL10 paramGL10, Camera paramCamera)
  {
    onInitDraw(paramGL10);
    begin(paramGL10);
    onApplyVertices(paramGL10);
    onApplyTextureRegion(paramGL10);
    drawVertices(paramGL10, paramCamera);
    end(paramGL10);
  }
  
  public void draw(BaseSprite paramBaseSprite)
  {
    BaseTextureRegion localBaseTextureRegion;
    if (paramBaseSprite.isVisible())
    {
      assertCapacity();
      localBaseTextureRegion = paramBaseSprite.getTextureRegion();
      assertTexture(localBaseTextureRegion);
      if ((paramBaseSprite.getRotation() != 0.0F) || (paramBaseSprite.isScaled())) {
        break label79;
      }
      this.mSpriteBatchVertexBuffer.add(paramBaseSprite.getX(), paramBaseSprite.getY(), paramBaseSprite.getWidth(), paramBaseSprite.getHeight());
    }
    for (;;)
    {
      this.mSpriteBatchTextureRegionBuffer.add(localBaseTextureRegion);
      this.mIndex = (1 + this.mIndex);
      return;
      label79:
      this.mSpriteBatchVertexBuffer.add(paramBaseSprite.getWidth(), paramBaseSprite.getHeight(), paramBaseSprite.getLocalToParentTransformation());
    }
  }
  
  public void draw(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    assertCapacity();
    assertTexture(paramBaseTextureRegion);
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void draw(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    assertCapacity();
    assertTexture(paramBaseTextureRegion);
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void draw(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    assertCapacity();
    assertTexture(paramBaseTextureRegion);
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void draw(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    assertCapacity();
    assertTexture(paramBaseTextureRegion);
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void draw(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    assertCapacity();
    assertTexture(paramBaseTextureRegion);
    this.mSpriteBatchVertexBuffer.addInner(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void drawWithoutChecks(BaseSprite paramBaseSprite)
  {
    BaseTextureRegion localBaseTextureRegion;
    if (paramBaseSprite.isVisible())
    {
      localBaseTextureRegion = paramBaseSprite.getTextureRegion();
      if ((paramBaseSprite.getRotation() != 0.0F) || (paramBaseSprite.isScaled())) {
        break label70;
      }
      this.mSpriteBatchVertexBuffer.add(paramBaseSprite.getX(), paramBaseSprite.getY(), paramBaseSprite.getWidth(), paramBaseSprite.getHeight());
    }
    for (;;)
    {
      this.mSpriteBatchTextureRegionBuffer.add(localBaseTextureRegion);
      this.mIndex = (1 + this.mIndex);
      return;
      label70:
      this.mSpriteBatchVertexBuffer.add(paramBaseSprite.getWidth(), paramBaseSprite.getHeight(), paramBaseSprite.getLocalToParentTransformation());
    }
  }
  
  public void drawWithoutChecks(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void drawWithoutChecks(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void drawWithoutChecks(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void drawWithoutChecks(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this.mSpriteBatchVertexBuffer.add(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  public void drawWithoutChecks(BaseTextureRegion paramBaseTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    this.mSpriteBatchVertexBuffer.addInner(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8);
    this.mSpriteBatchTextureRegionBuffer.add(paramBaseTextureRegion);
    this.mIndex = (1 + this.mIndex);
  }
  
  protected void end(GL10 paramGL10) {}
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    if (this.mSpriteBatchVertexBuffer.isManaged()) {
      this.mSpriteBatchVertexBuffer.unloadFromActiveBufferObjectManager();
    }
    if (this.mSpriteBatchTextureRegionBuffer.isManaged()) {
      this.mSpriteBatchTextureRegionBuffer.unloadFromActiveBufferObjectManager();
    }
  }
  
  public int getIndex()
  {
    return this.mIndex;
  }
  
  protected void onApplyVertices(GL10 paramGL10)
  {
    if (GLHelper.EXTENSIONS_VERTEXBUFFEROBJECTS)
    {
      GL11 localGL11 = (GL11)paramGL10;
      this.mSpriteBatchVertexBuffer.selectOnHardware(localGL11);
      GLHelper.vertexZeroPointer(localGL11);
      return;
    }
    GLHelper.vertexPointer(paramGL10, this.mSpriteBatchVertexBuffer.getFloatBuffer());
  }
  
  protected void onInitDraw(GL10 paramGL10)
  {
    GLHelper.setColor(paramGL10, this.mRed, this.mGreen, this.mBlue, this.mAlpha);
    GLHelper.enableVertexArray(paramGL10);
    GLHelper.blendFunction(paramGL10, this.mSourceBlendFunction, this.mDestinationBlendFunction);
    GLHelper.enableTextures(paramGL10);
    GLHelper.enableTexCoordArray(paramGL10);
  }
  
  public void reset()
  {
    super.reset();
    initBlendFunction();
  }
  
  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    this.mSourceBlendFunction = paramInt1;
    this.mDestinationBlendFunction = paramInt2;
  }
  
  public void setIndex(int paramInt)
  {
    assertCapacity(paramInt);
    this.mIndex = paramInt;
    int i = 6 * (paramInt * 2);
    this.mSpriteBatchVertexBuffer.setIndex(i);
    this.mSpriteBatchTextureRegionBuffer.setIndex(i);
  }
  
  public void submit()
  {
    onSubmit();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.sprite.batch.SpriteBatch
 * JD-Core Version:    0.7.0.1
 */