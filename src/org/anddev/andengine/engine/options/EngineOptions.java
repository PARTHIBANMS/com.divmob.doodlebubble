package org.anddev.andengine.engine.options;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.options.resolutionpolicy.IResolutionPolicy;

public class EngineOptions
{
  private final Camera mCamera;
  private final boolean mFullscreen;
  private boolean mNeedsMusic;
  private boolean mNeedsSound;
  private final RenderOptions mRenderOptions = new RenderOptions();
  private final IResolutionPolicy mResolutionPolicy;
  private final ScreenOrientation mScreenOrientation;
  private final TouchOptions mTouchOptions = new TouchOptions();
  private int mUpdateThreadPriority = 0;
  private WakeLockOptions mWakeLockOptions = WakeLockOptions.SCREEN_BRIGHT;
  
  public EngineOptions(boolean paramBoolean, ScreenOrientation paramScreenOrientation, IResolutionPolicy paramIResolutionPolicy, Camera paramCamera)
  {
    this.mFullscreen = paramBoolean;
    this.mScreenOrientation = paramScreenOrientation;
    this.mResolutionPolicy = paramIResolutionPolicy;
    this.mCamera = paramCamera;
  }
  
  public Camera getCamera()
  {
    return this.mCamera;
  }
  
  public RenderOptions getRenderOptions()
  {
    return this.mRenderOptions;
  }
  
  public IResolutionPolicy getResolutionPolicy()
  {
    return this.mResolutionPolicy;
  }
  
  public ScreenOrientation getScreenOrientation()
  {
    return this.mScreenOrientation;
  }
  
  public TouchOptions getTouchOptions()
  {
    return this.mTouchOptions;
  }
  
  public int getUpdateThreadPriority()
  {
    return this.mUpdateThreadPriority;
  }
  
  public WakeLockOptions getWakeLockOptions()
  {
    return this.mWakeLockOptions;
  }
  
  public boolean isFullscreen()
  {
    return this.mFullscreen;
  }
  
  public boolean needsMusic()
  {
    return this.mNeedsMusic;
  }
  
  public boolean needsSound()
  {
    return this.mNeedsSound;
  }
  
  public EngineOptions setNeedsMusic(boolean paramBoolean)
  {
    this.mNeedsMusic = paramBoolean;
    return this;
  }
  
  public EngineOptions setNeedsSound(boolean paramBoolean)
  {
    this.mNeedsSound = paramBoolean;
    return this;
  }
  
  public void setUpdateThreadPriority(int paramInt)
  {
    this.mUpdateThreadPriority = paramInt;
  }
  
  public EngineOptions setWakeLockOptions(WakeLockOptions paramWakeLockOptions)
  {
    this.mWakeLockOptions = paramWakeLockOptions;
    return this;
  }
  
  public static enum ScreenOrientation
  {
    PORTRAIT,  LANDSCAPE;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.options.EngineOptions
 * JD-Core Version:    0.7.0.1
 */