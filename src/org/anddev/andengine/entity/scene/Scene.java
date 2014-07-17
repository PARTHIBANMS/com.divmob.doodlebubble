package org.anddev.andengine.entity.scene;

import android.util.SparseArray;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.handler.runnable.RunnableHandler;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.background.ColorBackground;
import org.anddev.andengine.entity.scene.background.IBackground;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.util.IMatcher;
import org.anddev.andengine.util.SmartList;

public class Scene
  extends Entity
{
  private static final int TOUCHAREAS_CAPACITY_DEFAULT = 4;
  private IBackground mBackground = new ColorBackground(0.0F, 0.0F, 0.0F);
  private boolean mBackgroundEnabled = true;
  protected Scene mChildScene;
  private boolean mChildSceneModalDraw;
  private boolean mChildSceneModalTouch;
  private boolean mChildSceneModalUpdate;
  private IOnAreaTouchListener mOnAreaTouchListener;
  private boolean mOnAreaTouchTraversalBackToFront = true;
  private IOnSceneTouchListener mOnSceneTouchListener;
  private boolean mOnSceneTouchListenerBindingEnabled = false;
  private final SparseArray<IOnSceneTouchListener> mOnSceneTouchListenerBindings = new SparseArray();
  protected Scene mParentScene;
  private final RunnableHandler mRunnableHandler = new RunnableHandler();
  private float mSecondsElapsedTotal;
  private boolean mTouchAreaBindingEnabled = false;
  private final SparseArray<ITouchArea> mTouchAreaBindings = new SparseArray();
  protected SmartList<ITouchArea> mTouchAreas = new SmartList(4);
  
  public Scene() {}
  
  @Deprecated
  public Scene(int paramInt)
  {
    for (;;)
    {
      if (i >= paramInt) {
        return;
      }
      attachChild(new Entity());
      i++;
    }
  }
  
  private Boolean onAreaTouchEvent(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2, ITouchArea paramITouchArea)
  {
    float[] arrayOfFloat = paramITouchArea.convertSceneToLocalCoordinates(paramFloat1, paramFloat2);
    float f1 = arrayOfFloat[0];
    float f2 = arrayOfFloat[1];
    if (paramITouchArea.onAreaTouched(paramTouchEvent, f1, f2)) {
      return Boolean.TRUE;
    }
    if (this.mOnAreaTouchListener != null) {
      return Boolean.valueOf(this.mOnAreaTouchListener.onAreaTouched(paramTouchEvent, paramITouchArea, f1, f2));
    }
    return null;
  }
  
  private void setParentScene(Scene paramScene)
  {
    this.mParentScene = paramScene;
  }
  
  public void back()
  {
    clearChildScene();
    if (this.mParentScene != null)
    {
      this.mParentScene.clearChildScene();
      this.mParentScene = null;
    }
  }
  
  public void clearChildScene()
  {
    this.mChildScene = null;
  }
  
  public void clearTouchAreas()
  {
    this.mTouchAreas.clear();
  }
  
  public IBackground getBackground()
  {
    return this.mBackground;
  }
  
  public Scene getChildScene()
  {
    return this.mChildScene;
  }
  
  public IOnAreaTouchListener getOnAreaTouchListener()
  {
    return this.mOnAreaTouchListener;
  }
  
  public IOnSceneTouchListener getOnSceneTouchListener()
  {
    return this.mOnSceneTouchListener;
  }
  
  public float getSecondsElapsedTotal()
  {
    return this.mSecondsElapsedTotal;
  }
  
  public ArrayList<ITouchArea> getTouchAreas()
  {
    return this.mTouchAreas;
  }
  
  public boolean hasChildScene()
  {
    return this.mChildScene != null;
  }
  
  public boolean hasOnAreaTouchListener()
  {
    return this.mOnAreaTouchListener != null;
  }
  
  public boolean hasOnSceneTouchListener()
  {
    return this.mOnSceneTouchListener != null;
  }
  
  public boolean isBackgroundEnabled()
  {
    return this.mBackgroundEnabled;
  }
  
  public boolean isOnSceneTouchListenerBindingEnabled()
  {
    return this.mOnSceneTouchListenerBindingEnabled;
  }
  
  public boolean isTouchAreaBindingEnabled()
  {
    return this.mTouchAreaBindingEnabled;
  }
  
  protected boolean onChildSceneTouchEvent(TouchEvent paramTouchEvent)
  {
    return this.mChildScene.onSceneTouchEvent(paramTouchEvent);
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    Scene localScene = this.mChildScene;
    if ((localScene == null) || (!this.mChildSceneModalDraw))
    {
      if (this.mBackgroundEnabled)
      {
        paramCamera.onApplySceneBackgroundMatrix(paramGL10);
        GLHelper.setModelViewIdentityMatrix(paramGL10);
        this.mBackground.onDraw(paramGL10, paramCamera);
      }
      paramCamera.onApplySceneMatrix(paramGL10);
      GLHelper.setModelViewIdentityMatrix(paramGL10);
      super.onManagedDraw(paramGL10, paramCamera);
    }
    if (localScene != null) {
      localScene.onDraw(paramGL10, paramCamera);
    }
  }
  
  protected void onManagedUpdate(float paramFloat)
  {
    this.mSecondsElapsedTotal = (paramFloat + this.mSecondsElapsedTotal);
    this.mRunnableHandler.onUpdate(paramFloat);
    Scene localScene = this.mChildScene;
    if ((localScene == null) || (!this.mChildSceneModalUpdate))
    {
      this.mBackground.onUpdate(paramFloat);
      super.onManagedUpdate(paramFloat);
    }
    if (localScene != null) {
      localScene.onUpdate(paramFloat);
    }
  }
  
  public boolean onSceneTouchEvent(TouchEvent paramTouchEvent)
  {
    int i = paramTouchEvent.getAction();
    boolean bool = paramTouchEvent.isActionDown();
    if (!bool)
    {
      if ((this.mOnSceneTouchListenerBindingEnabled) && ((IOnSceneTouchListener)this.mOnSceneTouchListenerBindings.get(paramTouchEvent.getPointerID()) != null))
      {
        switch (i)
        {
        }
        for (;;)
        {
          Boolean localBoolean5 = Boolean.valueOf(this.mOnSceneTouchListener.onSceneTouchEvent(this, paramTouchEvent));
          if ((localBoolean5 == null) || (!localBoolean5.booleanValue())) {
            break;
          }
          return true;
          this.mOnSceneTouchListenerBindings.remove(paramTouchEvent.getPointerID());
        }
      }
      if (this.mTouchAreaBindingEnabled)
      {
        SparseArray localSparseArray = this.mTouchAreaBindings;
        ITouchArea localITouchArea3 = (ITouchArea)localSparseArray.get(paramTouchEvent.getPointerID());
        if (localITouchArea3 != null)
        {
          float f3 = paramTouchEvent.getX();
          float f4 = paramTouchEvent.getY();
          switch (i)
          {
          }
          for (;;)
          {
            Boolean localBoolean4 = onAreaTouchEvent(paramTouchEvent, f3, f4, localITouchArea3);
            if ((localBoolean4 == null) || (!localBoolean4.booleanValue())) {
              break;
            }
            return true;
            localSparseArray.remove(paramTouchEvent.getPointerID());
          }
        }
      }
    }
    if (this.mChildScene != null)
    {
      if (onChildSceneTouchEvent(paramTouchEvent)) {
        return true;
      }
      if (this.mChildSceneModalTouch) {
        return false;
      }
    }
    float f1 = paramTouchEvent.getX();
    float f2 = paramTouchEvent.getY();
    SmartList localSmartList = this.mTouchAreas;
    int j;
    int m;
    if (localSmartList != null)
    {
      j = localSmartList.size();
      if (j > 0)
      {
        if (!this.mOnAreaTouchTraversalBackToFront) {
          break label446;
        }
        m = 0;
        if (m < j) {
          break label362;
        }
      }
    }
    for (;;)
    {
      if (this.mOnSceneTouchListener != null)
      {
        Boolean localBoolean1 = Boolean.valueOf(this.mOnSceneTouchListener.onSceneTouchEvent(this, paramTouchEvent));
        if ((localBoolean1 != null) && (localBoolean1.booleanValue()))
        {
          if ((this.mOnSceneTouchListenerBindingEnabled) && (bool)) {
            this.mOnSceneTouchListenerBindings.put(paramTouchEvent.getPointerID(), this.mOnSceneTouchListener);
          }
          return true;
          label362:
          ITouchArea localITouchArea2 = (ITouchArea)localSmartList.get(m);
          if (localITouchArea2.contains(f1, f2))
          {
            Boolean localBoolean3 = onAreaTouchEvent(paramTouchEvent, f1, f2, localITouchArea2);
            if ((localBoolean3 != null) && (localBoolean3.booleanValue()))
            {
              if ((this.mTouchAreaBindingEnabled) && (bool)) {
                this.mTouchAreaBindings.put(paramTouchEvent.getPointerID(), localITouchArea2);
              }
              return true;
            }
          }
          m++;
          break;
          label446:
          for (int k = j - 1; k >= 0; k--)
          {
            ITouchArea localITouchArea1 = (ITouchArea)localSmartList.get(k);
            if (localITouchArea1.contains(f1, f2))
            {
              Boolean localBoolean2 = onAreaTouchEvent(paramTouchEvent, f1, f2, localITouchArea1);
              if ((localBoolean2 != null) && (localBoolean2.booleanValue()))
              {
                if ((this.mTouchAreaBindingEnabled) && (bool)) {
                  this.mTouchAreaBindings.put(paramTouchEvent.getPointerID(), localITouchArea1);
                }
                return true;
              }
            }
          }
          continue;
        }
        return false;
      }
    }
    return false;
  }
  
  public void postRunnable(Runnable paramRunnable)
  {
    this.mRunnableHandler.postRunnable(paramRunnable);
  }
  
  public void registerTouchArea(ITouchArea paramITouchArea)
  {
    this.mTouchAreas.add(paramITouchArea);
  }
  
  public void reset()
  {
    super.reset();
    clearChildScene();
  }
  
  public void setBackground(IBackground paramIBackground)
  {
    this.mBackground = paramIBackground;
  }
  
  public void setBackgroundEnabled(boolean paramBoolean)
  {
    this.mBackgroundEnabled = paramBoolean;
  }
  
  public void setChildScene(Scene paramScene)
  {
    setChildScene(paramScene, false, false, false);
  }
  
  public void setChildScene(Scene paramScene, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    paramScene.setParentScene(this);
    this.mChildScene = paramScene;
    this.mChildSceneModalDraw = paramBoolean1;
    this.mChildSceneModalUpdate = paramBoolean2;
    this.mChildSceneModalTouch = paramBoolean3;
  }
  
  public void setChildSceneModal(Scene paramScene)
  {
    setChildScene(paramScene, true, true, true);
  }
  
  public void setOnAreaTouchListener(IOnAreaTouchListener paramIOnAreaTouchListener)
  {
    this.mOnAreaTouchListener = paramIOnAreaTouchListener;
  }
  
  public void setOnAreaTouchTraversalBackToFront()
  {
    this.mOnAreaTouchTraversalBackToFront = true;
  }
  
  public void setOnAreaTouchTraversalFrontToBack()
  {
    this.mOnAreaTouchTraversalBackToFront = false;
  }
  
  public void setOnSceneTouchListener(IOnSceneTouchListener paramIOnSceneTouchListener)
  {
    this.mOnSceneTouchListener = paramIOnSceneTouchListener;
  }
  
  public void setOnSceneTouchListenerBindingEnabled(boolean paramBoolean)
  {
    if ((this.mOnSceneTouchListenerBindingEnabled) && (!paramBoolean)) {
      this.mOnSceneTouchListenerBindings.clear();
    }
    this.mOnSceneTouchListenerBindingEnabled = paramBoolean;
  }
  
  public void setParent(IEntity paramIEntity) {}
  
  public void setTouchAreaBindingEnabled(boolean paramBoolean)
  {
    if ((this.mTouchAreaBindingEnabled) && (!paramBoolean)) {
      this.mTouchAreaBindings.clear();
    }
    this.mTouchAreaBindingEnabled = paramBoolean;
  }
  
  public boolean unregisterTouchArea(ITouchArea paramITouchArea)
  {
    return this.mTouchAreas.remove(paramITouchArea);
  }
  
  public boolean unregisterTouchAreas(Scene.ITouchArea.ITouchAreaMatcher paramITouchAreaMatcher)
  {
    return this.mTouchAreas.removeAll(paramITouchAreaMatcher);
  }
  
  public static abstract interface IOnAreaTouchListener
  {
    public abstract boolean onAreaTouched(TouchEvent paramTouchEvent, Scene.ITouchArea paramITouchArea, float paramFloat1, float paramFloat2);
  }
  
  public static abstract interface IOnSceneTouchListener
  {
    public abstract boolean onSceneTouchEvent(Scene paramScene, TouchEvent paramTouchEvent);
  }
  
  public static abstract interface ITouchArea
  {
    public abstract boolean contains(float paramFloat1, float paramFloat2);
    
    public abstract float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2);
    
    public abstract float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2);
    
    public abstract boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2);
    
    public static abstract interface ITouchAreaMatcher
      extends IMatcher<Scene.ITouchArea>
    {}
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.Scene
 * JD-Core Version:    0.7.0.1
 */