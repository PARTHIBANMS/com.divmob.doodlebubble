package org.anddev.andengine.entity.scene.popup;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.handler.timer.TimerHandler;
import org.anddev.andengine.entity.scene.CameraScene;
import org.anddev.andengine.entity.scene.Scene;

public class PopupScene
  extends CameraScene
{
  public PopupScene(Camera paramCamera, Scene paramScene, float paramFloat)
  {
    this(paramCamera, paramScene, paramFloat, null);
  }
  
  public PopupScene(Camera paramCamera, Scene paramScene, float paramFloat, Runnable paramRunnable)
  {
    super(paramCamera);
    setBackgroundEnabled(false);
    paramScene.setChildScene(this, false, true, true);
    registerUpdateHandler(new TimerHandler(paramFloat, new PopupScene.1(this, paramScene, paramRunnable)));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.popup.PopupScene
 * JD-Core Version:    0.7.0.1
 */