package org.anddev.andengine.entity.shape;

import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.opengl.vertex.VertexBuffer;

public abstract class Shape
  extends Entity
  implements IShape
{
  public static final int BLENDFUNCTION_DESTINATION_DEFAULT = 771;
  public static final int BLENDFUNCTION_DESTINATION_PREMULTIPLYALPHA_DEFAULT = 771;
  public static final int BLENDFUNCTION_SOURCE_DEFAULT = 770;
  public static final int BLENDFUNCTION_SOURCE_PREMULTIPLYALPHA_DEFAULT = 1;
  private boolean mCullingEnabled = false;
  protected int mDestinationBlendFunction = 771;
  protected int mSourceBlendFunction = 770;
  
  public Shape(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  protected void doDraw(GL10 paramGL10, Camera paramCamera)
  {
    onInitDraw(paramGL10);
    onApplyVertices(paramGL10);
    drawVertices(paramGL10, paramCamera);
  }
  
  protected abstract void drawVertices(GL10 paramGL10, Camera paramCamera);
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    VertexBuffer localVertexBuffer = getVertexBuffer();
    if (localVertexBuffer.isManaged()) {
      localVertexBuffer.unloadFromActiveBufferObjectManager();
    }
  }
  
  public float getHeightScaled()
  {
    return getHeight() * this.mScaleY;
  }
  
  protected abstract VertexBuffer getVertexBuffer();
  
  public float getWidthScaled()
  {
    return getWidth() * this.mScaleX;
  }
  
  protected abstract boolean isCulled(Camera paramCamera);
  
  public boolean isCullingEnabled()
  {
    return this.mCullingEnabled;
  }
  
  public boolean isVertexBufferManaged()
  {
    return getVertexBuffer().isManaged();
  }
  
  protected void onApplyVertices(GL10 paramGL10)
  {
    if (GLHelper.EXTENSIONS_VERTEXBUFFEROBJECTS)
    {
      GL11 localGL11 = (GL11)paramGL10;
      getVertexBuffer().selectOnHardware(localGL11);
      GLHelper.vertexZeroPointer(localGL11);
      return;
    }
    GLHelper.vertexPointer(paramGL10, getVertexBuffer().getFloatBuffer());
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  protected void onInitDraw(GL10 paramGL10)
  {
    GLHelper.setColor(paramGL10, this.mRed, this.mGreen, this.mBlue, this.mAlpha);
    GLHelper.enableVertexArray(paramGL10);
    GLHelper.blendFunction(paramGL10, this.mSourceBlendFunction, this.mDestinationBlendFunction);
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    if ((!this.mCullingEnabled) || (!isCulled(paramCamera))) {
      super.onManagedDraw(paramGL10, paramCamera);
    }
  }
  
  protected abstract void onUpdateVertexBuffer();
  
  public void reset()
  {
    super.reset();
    this.mSourceBlendFunction = 770;
    this.mDestinationBlendFunction = 771;
  }
  
  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    this.mSourceBlendFunction = paramInt1;
    this.mDestinationBlendFunction = paramInt2;
  }
  
  public void setCullingEnabled(boolean paramBoolean)
  {
    this.mCullingEnabled = paramBoolean;
  }
  
  public void setVertexBufferManaged(boolean paramBoolean)
  {
    getVertexBuffer().setManaged(paramBoolean);
  }
  
  protected void updateVertexBuffer()
  {
    onUpdateVertexBuffer();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.shape.Shape
 * JD-Core Version:    0.7.0.1
 */