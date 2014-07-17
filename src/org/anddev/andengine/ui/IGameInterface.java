package org.anddev.andengine.ui;

import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.entity.scene.Scene;

public abstract interface IGameInterface
{
  public abstract void onLoadComplete();
  
  public abstract Engine onLoadEngine();
  
  public abstract void onLoadResources();
  
  public abstract Scene onLoadScene();
  
  public abstract void onPauseGame();
  
  public abstract void onResumeGame();
  
  public abstract void onUnloadResources();
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.IGameInterface
 * JD-Core Version:    0.7.0.1
 */