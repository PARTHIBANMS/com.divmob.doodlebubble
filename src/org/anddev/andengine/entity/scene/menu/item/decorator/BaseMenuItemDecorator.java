package org.anddev.andengine.entity.scene.menu.item.decorator;

import java.util.Comparator;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.handler.IUpdateHandler;
import org.anddev.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.IEntity.IEntityCallable;
import org.anddev.andengine.entity.IEntity.IEntityMatcher;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher;
import org.anddev.andengine.entity.scene.menu.item.IMenuItem;
import org.anddev.andengine.entity.shape.IShape;
import org.anddev.andengine.input.touch.TouchEvent;
import org.anddev.andengine.util.Transformation;

public abstract class BaseMenuItemDecorator
  implements IMenuItem
{
  private final IMenuItem mMenuItem;
  
  public BaseMenuItemDecorator(IMenuItem paramIMenuItem)
  {
    this.mMenuItem = paramIMenuItem;
  }
  
  public void attachChild(IEntity paramIEntity)
  {
    this.mMenuItem.attachChild(paramIEntity);
  }
  
  public boolean attachChild(IEntity paramIEntity, int paramInt)
  {
    return this.mMenuItem.attachChild(paramIEntity, paramInt);
  }
  
  public void callOnChildren(IEntity.IEntityCallable paramIEntityCallable)
  {
    callOnChildren(paramIEntityCallable);
  }
  
  public void callOnChildren(IEntity.IEntityMatcher paramIEntityMatcher, IEntity.IEntityCallable paramIEntityCallable)
  {
    this.mMenuItem.callOnChildren(paramIEntityMatcher, paramIEntityCallable);
  }
  
  public void clearEntityModifiers()
  {
    this.mMenuItem.clearEntityModifiers();
  }
  
  public void clearUpdateHandlers()
  {
    this.mMenuItem.clearUpdateHandlers();
  }
  
  public boolean collidesWith(IShape paramIShape)
  {
    return this.mMenuItem.collidesWith(paramIShape);
  }
  
  public boolean contains(float paramFloat1, float paramFloat2)
  {
    return this.mMenuItem.contains(paramFloat1, paramFloat2);
  }
  
  public float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2)
  {
    return this.mMenuItem.convertLocalToSceneCoordinates(paramFloat1, paramFloat2);
  }
  
  public float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat)
  {
    return this.mMenuItem.convertLocalToSceneCoordinates(paramFloat1, paramFloat2, paramArrayOfFloat);
  }
  
  public float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat)
  {
    return this.mMenuItem.convertLocalToSceneCoordinates(paramArrayOfFloat);
  }
  
  public float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    return this.mMenuItem.convertLocalToSceneCoordinates(paramArrayOfFloat1, paramArrayOfFloat2);
  }
  
  public float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2)
  {
    return this.mMenuItem.convertSceneToLocalCoordinates(paramFloat1, paramFloat2);
  }
  
  public float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat)
  {
    return this.mMenuItem.convertSceneToLocalCoordinates(paramFloat1, paramFloat2, paramArrayOfFloat);
  }
  
  public float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat)
  {
    return this.mMenuItem.convertSceneToLocalCoordinates(paramArrayOfFloat);
  }
  
  public float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    return this.mMenuItem.convertSceneToLocalCoordinates(paramArrayOfFloat1, paramArrayOfFloat2);
  }
  
  public IEntity detachChild(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    return this.mMenuItem.detachChild(paramIEntityMatcher);
  }
  
  public boolean detachChild(IEntity paramIEntity)
  {
    return this.mMenuItem.detachChild(paramIEntity);
  }
  
  public void detachChildren()
  {
    this.mMenuItem.detachChildren();
  }
  
  public boolean detachChildren(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    return this.mMenuItem.detachChildren(paramIEntityMatcher);
  }
  
  public boolean detachSelf()
  {
    return this.mMenuItem.detachSelf();
  }
  
  public IEntity findChild(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    return this.mMenuItem.findChild(paramIEntityMatcher);
  }
  
  public float getAlpha()
  {
    return this.mMenuItem.getAlpha();
  }
  
  public float getBaseHeight()
  {
    return this.mMenuItem.getBaseHeight();
  }
  
  public float getBaseWidth()
  {
    return this.mMenuItem.getBaseWidth();
  }
  
  public float getBlue()
  {
    return this.mMenuItem.getBlue();
  }
  
  public IEntity getChild(int paramInt)
  {
    return this.mMenuItem.getChild(paramInt);
  }
  
  public int getChildCount()
  {
    return this.mMenuItem.getChildCount();
  }
  
  public int getChildIndex(IEntity paramIEntity)
  {
    return this.mMenuItem.getChildIndex(paramIEntity);
  }
  
  public IEntity getFirstChild()
  {
    return this.mMenuItem.getFirstChild();
  }
  
  public float getGreen()
  {
    return this.mMenuItem.getGreen();
  }
  
  public float getHeight()
  {
    return this.mMenuItem.getHeight();
  }
  
  public float getHeightScaled()
  {
    return this.mMenuItem.getHeightScaled();
  }
  
  public int getID()
  {
    return this.mMenuItem.getID();
  }
  
  public float getInitialX()
  {
    return this.mMenuItem.getInitialX();
  }
  
  public float getInitialY()
  {
    return this.mMenuItem.getInitialY();
  }
  
  public IEntity getLastChild()
  {
    return this.mMenuItem.getLastChild();
  }
  
  public Transformation getLocalToSceneTransformation()
  {
    return this.mMenuItem.getLocalToSceneTransformation();
  }
  
  public IEntity getParent()
  {
    return this.mMenuItem.getParent();
  }
  
  public float getRed()
  {
    return this.mMenuItem.getRed();
  }
  
  public float getRotation()
  {
    return this.mMenuItem.getRotation();
  }
  
  public float getRotationCenterX()
  {
    return this.mMenuItem.getRotationCenterX();
  }
  
  public float getRotationCenterY()
  {
    return this.mMenuItem.getRotationCenterY();
  }
  
  public float getScaleCenterX()
  {
    return this.mMenuItem.getScaleCenterX();
  }
  
  public float getScaleCenterY()
  {
    return this.mMenuItem.getScaleCenterY();
  }
  
  public float getScaleX()
  {
    return this.mMenuItem.getScaleX();
  }
  
  public float getScaleY()
  {
    return this.mMenuItem.getScaleY();
  }
  
  public float[] getSceneCenterCoordinates()
  {
    return this.mMenuItem.getSceneCenterCoordinates();
  }
  
  public Transformation getSceneToLocalTransformation()
  {
    return this.mMenuItem.getSceneToLocalTransformation();
  }
  
  public Object getUserData()
  {
    return this.mMenuItem.getUserData();
  }
  
  public float getWidth()
  {
    return this.mMenuItem.getWidth();
  }
  
  public float getWidthScaled()
  {
    return this.mMenuItem.getWidthScaled();
  }
  
  public float getX()
  {
    return this.mMenuItem.getX();
  }
  
  public float getY()
  {
    return this.mMenuItem.getY();
  }
  
  public int getZIndex()
  {
    return this.mMenuItem.getZIndex();
  }
  
  public boolean hasParent()
  {
    return this.mMenuItem.hasParent();
  }
  
  public boolean isChildrenIgnoreUpdate()
  {
    return this.mMenuItem.isChildrenIgnoreUpdate();
  }
  
  public boolean isChildrenVisible()
  {
    return this.mMenuItem.isChildrenVisible();
  }
  
  public boolean isCullingEnabled()
  {
    return this.mMenuItem.isCullingEnabled();
  }
  
  public boolean isIgnoreUpdate()
  {
    return this.mMenuItem.isIgnoreUpdate();
  }
  
  public boolean isRotated()
  {
    return this.mMenuItem.isRotated();
  }
  
  public boolean isScaled()
  {
    return this.mMenuItem.isScaled();
  }
  
  public boolean isVisible()
  {
    return this.mMenuItem.isVisible();
  }
  
  public boolean onAreaTouched(TouchEvent paramTouchEvent, float paramFloat1, float paramFloat2)
  {
    return this.mMenuItem.onAreaTouched(paramTouchEvent, paramFloat1, paramFloat2);
  }
  
  public void onAttached()
  {
    this.mMenuItem.onAttached();
  }
  
  public void onDetached()
  {
    this.mMenuItem.onDetached();
  }
  
  public void onDraw(GL10 paramGL10, Camera paramCamera)
  {
    this.mMenuItem.onDraw(paramGL10, paramCamera);
  }
  
  protected abstract void onMenuItemReset(IMenuItem paramIMenuItem);
  
  protected abstract void onMenuItemSelected(IMenuItem paramIMenuItem);
  
  protected abstract void onMenuItemUnselected(IMenuItem paramIMenuItem);
  
  public final void onSelected()
  {
    this.mMenuItem.onSelected();
    onMenuItemSelected(this.mMenuItem);
  }
  
  public final void onUnselected()
  {
    this.mMenuItem.onUnselected();
    onMenuItemUnselected(this.mMenuItem);
  }
  
  public void onUpdate(float paramFloat)
  {
    this.mMenuItem.onUpdate(paramFloat);
  }
  
  public void registerEntityModifier(IEntityModifier paramIEntityModifier)
  {
    this.mMenuItem.registerEntityModifier(paramIEntityModifier);
  }
  
  public void registerUpdateHandler(IUpdateHandler paramIUpdateHandler)
  {
    this.mMenuItem.registerUpdateHandler(paramIUpdateHandler);
  }
  
  public void reset()
  {
    this.mMenuItem.reset();
    onMenuItemReset(this.mMenuItem);
  }
  
  public void setAlpha(float paramFloat)
  {
    this.mMenuItem.setAlpha(paramFloat);
  }
  
  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    this.mMenuItem.setBlendFunction(paramInt1, paramInt2);
  }
  
  public boolean setChildIndex(IEntity paramIEntity, int paramInt)
  {
    return this.mMenuItem.setChildIndex(paramIEntity, paramInt);
  }
  
  public void setChildrenIgnoreUpdate(boolean paramBoolean)
  {
    this.mMenuItem.setChildrenIgnoreUpdate(paramBoolean);
  }
  
  public void setChildrenVisible(boolean paramBoolean)
  {
    this.mMenuItem.setChildrenVisible(paramBoolean);
  }
  
  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.mMenuItem.setColor(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.mMenuItem.setColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void setCullingEnabled(boolean paramBoolean)
  {
    this.mMenuItem.setCullingEnabled(paramBoolean);
  }
  
  public void setIgnoreUpdate(boolean paramBoolean)
  {
    this.mMenuItem.setIgnoreUpdate(paramBoolean);
  }
  
  public void setInitialPosition()
  {
    this.mMenuItem.setInitialPosition();
  }
  
  public void setParent(IEntity paramIEntity)
  {
    this.mMenuItem.setParent(paramIEntity);
  }
  
  public void setPosition(float paramFloat1, float paramFloat2)
  {
    this.mMenuItem.setPosition(paramFloat1, paramFloat2);
  }
  
  public void setPosition(IEntity paramIEntity)
  {
    this.mMenuItem.setPosition(paramIEntity);
  }
  
  public void setRotation(float paramFloat)
  {
    this.mMenuItem.setRotation(paramFloat);
  }
  
  public void setRotationCenter(float paramFloat1, float paramFloat2)
  {
    this.mMenuItem.setRotationCenter(paramFloat1, paramFloat2);
  }
  
  public void setRotationCenterX(float paramFloat)
  {
    this.mMenuItem.setRotationCenterX(paramFloat);
  }
  
  public void setRotationCenterY(float paramFloat)
  {
    this.mMenuItem.setRotationCenterY(paramFloat);
  }
  
  public void setScale(float paramFloat)
  {
    this.mMenuItem.setScale(paramFloat);
  }
  
  public void setScale(float paramFloat1, float paramFloat2)
  {
    this.mMenuItem.setScale(paramFloat1, paramFloat2);
  }
  
  public void setScaleCenter(float paramFloat1, float paramFloat2)
  {
    this.mMenuItem.setScaleCenter(paramFloat1, paramFloat2);
  }
  
  public void setScaleCenterX(float paramFloat)
  {
    this.mMenuItem.setScaleCenterX(paramFloat);
  }
  
  public void setScaleCenterY(float paramFloat)
  {
    this.mMenuItem.setScaleCenterY(paramFloat);
  }
  
  public void setScaleX(float paramFloat)
  {
    this.mMenuItem.setScaleX(paramFloat);
  }
  
  public void setScaleY(float paramFloat)
  {
    this.mMenuItem.setScaleY(paramFloat);
  }
  
  public void setUserData(Object paramObject)
  {
    this.mMenuItem.setUserData(paramObject);
  }
  
  public void setVisible(boolean paramBoolean)
  {
    this.mMenuItem.setVisible(paramBoolean);
  }
  
  public void setZIndex(int paramInt)
  {
    this.mMenuItem.setZIndex(paramInt);
  }
  
  public void sortChildren()
  {
    this.mMenuItem.sortChildren();
  }
  
  public void sortChildren(Comparator<IEntity> paramComparator)
  {
    this.mMenuItem.sortChildren(paramComparator);
  }
  
  public boolean swapChildren(int paramInt1, int paramInt2)
  {
    return this.mMenuItem.swapChildren(paramInt1, paramInt2);
  }
  
  public boolean swapChildren(IEntity paramIEntity1, IEntity paramIEntity2)
  {
    return this.mMenuItem.swapChildren(paramIEntity1, paramIEntity2);
  }
  
  public boolean unregisterEntityModifier(IEntityModifier paramIEntityModifier)
  {
    return this.mMenuItem.unregisterEntityModifier(paramIEntityModifier);
  }
  
  public boolean unregisterEntityModifiers(IEntityModifier.IEntityModifierMatcher paramIEntityModifierMatcher)
  {
    return this.mMenuItem.unregisterEntityModifiers(paramIEntityModifierMatcher);
  }
  
  public boolean unregisterUpdateHandler(IUpdateHandler paramIUpdateHandler)
  {
    return this.mMenuItem.unregisterUpdateHandler(paramIUpdateHandler);
  }
  
  public boolean unregisterUpdateHandlers(IUpdateHandler.IUpdateHandlerMatcher paramIUpdateHandlerMatcher)
  {
    return this.mMenuItem.unregisterUpdateHandlers(paramIUpdateHandlerMatcher);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.menu.item.decorator.BaseMenuItemDecorator
 * JD-Core Version:    0.7.0.1
 */