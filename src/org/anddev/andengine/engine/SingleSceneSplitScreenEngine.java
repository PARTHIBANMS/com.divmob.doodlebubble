package org.anddev.andengine.engine;

import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.options.EngineOptions;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.util.GLHelper;

public class SingleSceneSplitScreenEngine
  extends Engine
{
  private final Camera mSecondCamera;
  
  public SingleSceneSplitScreenEngine(EngineOptions paramEngineOptions, Camera paramCamera)
  {
    super(paramEngineOptions);
    this.mSecondCamera = paramCamera;
  }
  
  protected void convertSurfaceToSceneTouchEvent(Camera paramCamera, TouchEvent paramTouchEvent)
  {
    int i = this.mSurfaceWidth >> 1;
    if (paramCamera == getFirstCamera())
    {
      paramCamera.convertSurfaceToSceneTouchEvent(paramTouchEvent, i, this.mSurfaceHeight);
      return;
    }
    paramTouchEvent.offset(-i, 0.0F);
    paramCamera.convertSurfaceToSceneTouchEvent(paramTouchEvent, i, this.mSurfaceHeight);
  }
  
  @Deprecated
  public Camera getCamera()
  {
    return this.mCamera;
  }
  
  protected Camera getCameraFromSurfaceTouchEvent(TouchEvent paramTouchEvent)
  {
    if (paramTouchEvent.getX() <= this.mSurfaceWidth >> 1) {
      return getFirstCamera();
    }
    return getSecondCamera();
  }
  
  public Camera getFirstCamera()
  {
    return this.mCamera;
  }
  
  public Camera getSecondCamera()
  {
    return this.mSecondCamera;
  }
  
  protected void onDrawScene(GL10 paramGL10)
  {
    Camera localCamera1 = getFirstCamera();
    Camera localCamera2 = getSecondCamera();
    int i = this.mSurfaceWidth >> 1;
    int j = this.mSurfaceHeight;
    GLHelper.enableScissorTest(paramGL10);
    paramGL10.glScissor(0, 0, i, j);
    paramGL10.glViewport(0, 0, i, j);
    this.mScene.onDraw(paramGL10, localCamera1);
    localCamera1.onDrawHUD(paramGL10);
    paramGL10.glScissor(i, 0, i, j);
    paramGL10.glViewport(i, 0, i, j);
    this.mScene.onDraw(paramGL10, localCamera2);
    localCamera2.onDrawHUD(paramGL10);
    GLHelper.disableScissorTest(paramGL10);
  }
  
  protected void onUpdateCameraSurface()
  {
    int i = this.mSurfaceWidth >> 1;
    getFirstCamera().setSurfaceSize(0, 0, i, this.mSurfaceHeight);
    getSecondCamera().setSurfaceSize(i, 0, i, this.mSurfaceHeight);
  }
  
  protected void updateUpdateHandlers(float paramFloat)
  {
    super.updateUpdateHandlers(paramFloat);
    getSecondCamera().onUpdate(paramFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.SingleSceneSplitScreenEngine
 * JD-Core Version:    0.7.0.1
 */