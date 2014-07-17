package org.anddev.andengine.ui.activity;

import android.app.Activity;
import org.anddev.andengine.engine.Engine;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.handler.timer.TimerHandler;
import org.anddev.andengine.engine.options.EngineOptions;
import org.anddev.andengine.engine.options.EngineOptions.ScreenOrientation;
import org.anddev.andengine.engine.options.resolutionpolicy.IResolutionPolicy;
import org.anddev.andengine.engine.options.resolutionpolicy.RatioResolutionPolicy;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.scene.SplashScene;
import org.anddev.andengine.opengl.texture.TextureManager;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasFactory;
import org.anddev.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.bitmap.BitmapTexture.BitmapTextureFormat;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public abstract class BaseSplashActivity
  extends BaseGameActivity
{
  private Camera mCamera;
  private TextureRegion mLoadingScreenTextureRegion;
  private IBitmapTextureAtlasSource mSplashTextureAtlasSource;
  
  protected abstract Class<? extends Activity> getFollowUpActivity();
  
  protected abstract EngineOptions.ScreenOrientation getScreenOrientation();
  
  protected Camera getSplashCamera(int paramInt1, int paramInt2)
  {
    return new Camera(0.0F, 0.0F, paramInt1, paramInt2);
  }
  
  protected abstract float getSplashDuration();
  
  protected IResolutionPolicy getSplashResolutionPolicy(int paramInt1, int paramInt2)
  {
    return new RatioResolutionPolicy(paramInt1, paramInt2);
  }
  
  protected float getSplashScaleFrom()
  {
    return 1.0F;
  }
  
  protected float getSplashScaleTo()
  {
    return 1.0F;
  }
  
  protected abstract IBitmapTextureAtlasSource onGetSplashTextureAtlasSource();
  
  public void onLoadComplete() {}
  
  public Engine onLoadEngine()
  {
    this.mSplashTextureAtlasSource = onGetSplashTextureAtlasSource();
    int i = this.mSplashTextureAtlasSource.getWidth();
    int j = this.mSplashTextureAtlasSource.getHeight();
    this.mCamera = getSplashCamera(i, j);
    return new Engine(new EngineOptions(true, getScreenOrientation(), getSplashResolutionPolicy(i, j), this.mCamera));
  }
  
  public void onLoadResources()
  {
    BitmapTextureAtlas localBitmapTextureAtlas = BitmapTextureAtlasFactory.createForTextureAtlasSourceSize(BitmapTexture.BitmapTextureFormat.RGBA_8888, this.mSplashTextureAtlasSource, TextureOptions.BILINEAR_PREMULTIPLYALPHA);
    this.mLoadingScreenTextureRegion = BitmapTextureAtlasTextureRegionFactory.createFromSource(localBitmapTextureAtlas, this.mSplashTextureAtlasSource, 0, 0);
    getEngine().getTextureManager().loadTexture(localBitmapTextureAtlas);
  }
  
  public Scene onLoadScene()
  {
    float f = getSplashDuration();
    SplashScene localSplashScene = new SplashScene(this.mCamera, this.mLoadingScreenTextureRegion, f, getSplashScaleFrom(), getSplashScaleTo());
    localSplashScene.registerUpdateHandler(new TimerHandler(f, new BaseSplashActivity.1(this)));
    return localSplashScene;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.ui.activity.BaseSplashActivity
 * JD-Core Version:    0.7.0.1
 */