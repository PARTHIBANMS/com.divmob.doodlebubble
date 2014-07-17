package com.divmob.common;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.options.EngineOptions.ScreenOrientation;

public abstract class PortrailGame
  extends ClassicGame
{
  public EngineOptions.ScreenOrientation f()
  {
    EngineOptions.ScreenOrientation localScreenOrientation = a(EngineOptions.ScreenOrientation.PORTRAIT, 50);
    this.a = new Camera(0.0F, 0.0F, this.s, this.t);
    return localScreenOrientation;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.PortrailGame
 * JD-Core Version:    0.7.0.1
 */