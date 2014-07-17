package org.anddev.andengine.entity;

import java.util.Comparator;
import org.anddev.andengine.engine.handler.IUpdateHandler;
import org.anddev.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher;
import org.anddev.andengine.opengl.IDrawable;
import org.anddev.andengine.util.IMatcher;
import org.anddev.andengine.util.ParameterCallable;
import org.anddev.andengine.util.Transformation;

public abstract interface IEntity
  extends IUpdateHandler, IDrawable
{
  public abstract void attachChild(IEntity paramIEntity);
  
  public abstract boolean attachChild(IEntity paramIEntity, int paramInt);
  
  public abstract void callOnChildren(IEntityCallable paramIEntityCallable);
  
  public abstract void callOnChildren(IEntityMatcher paramIEntityMatcher, IEntityCallable paramIEntityCallable);
  
  public abstract void clearEntityModifiers();
  
  public abstract void clearUpdateHandlers();
  
  public abstract float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2);
  
  public abstract float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat);
  
  public abstract float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat);
  
  public abstract float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2);
  
  public abstract float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2);
  
  public abstract float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat);
  
  public abstract float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat);
  
  public abstract float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2);
  
  public abstract IEntity detachChild(IEntityMatcher paramIEntityMatcher);
  
  public abstract boolean detachChild(IEntity paramIEntity);
  
  public abstract void detachChildren();
  
  public abstract boolean detachChildren(IEntityMatcher paramIEntityMatcher);
  
  public abstract boolean detachSelf();
  
  public abstract IEntity findChild(IEntityMatcher paramIEntityMatcher);
  
  public abstract float getAlpha();
  
  public abstract float getBlue();
  
  public abstract IEntity getChild(int paramInt);
  
  public abstract int getChildCount();
  
  public abstract int getChildIndex(IEntity paramIEntity);
  
  public abstract IEntity getFirstChild();
  
  public abstract float getGreen();
  
  public abstract float getInitialX();
  
  public abstract float getInitialY();
  
  public abstract IEntity getLastChild();
  
  public abstract Transformation getLocalToSceneTransformation();
  
  public abstract IEntity getParent();
  
  public abstract float getRed();
  
  public abstract float getRotation();
  
  public abstract float getRotationCenterX();
  
  public abstract float getRotationCenterY();
  
  public abstract float getScaleCenterX();
  
  public abstract float getScaleCenterY();
  
  public abstract float getScaleX();
  
  public abstract float getScaleY();
  
  public abstract float[] getSceneCenterCoordinates();
  
  public abstract Transformation getSceneToLocalTransformation();
  
  public abstract Object getUserData();
  
  public abstract float getX();
  
  public abstract float getY();
  
  public abstract int getZIndex();
  
  public abstract boolean hasParent();
  
  public abstract boolean isChildrenIgnoreUpdate();
  
  public abstract boolean isChildrenVisible();
  
  public abstract boolean isIgnoreUpdate();
  
  public abstract boolean isRotated();
  
  public abstract boolean isScaled();
  
  public abstract boolean isVisible();
  
  public abstract void onAttached();
  
  public abstract void onDetached();
  
  public abstract void registerEntityModifier(IEntityModifier paramIEntityModifier);
  
  public abstract void registerUpdateHandler(IUpdateHandler paramIUpdateHandler);
  
  public abstract void setAlpha(float paramFloat);
  
  public abstract boolean setChildIndex(IEntity paramIEntity, int paramInt);
  
  public abstract void setChildrenIgnoreUpdate(boolean paramBoolean);
  
  public abstract void setChildrenVisible(boolean paramBoolean);
  
  public abstract void setColor(float paramFloat1, float paramFloat2, float paramFloat3);
  
  public abstract void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  
  public abstract void setIgnoreUpdate(boolean paramBoolean);
  
  public abstract void setInitialPosition();
  
  public abstract void setParent(IEntity paramIEntity);
  
  public abstract void setPosition(float paramFloat1, float paramFloat2);
  
  public abstract void setPosition(IEntity paramIEntity);
  
  public abstract void setRotation(float paramFloat);
  
  public abstract void setRotationCenter(float paramFloat1, float paramFloat2);
  
  public abstract void setRotationCenterX(float paramFloat);
  
  public abstract void setRotationCenterY(float paramFloat);
  
  public abstract void setScale(float paramFloat);
  
  public abstract void setScale(float paramFloat1, float paramFloat2);
  
  public abstract void setScaleCenter(float paramFloat1, float paramFloat2);
  
  public abstract void setScaleCenterX(float paramFloat);
  
  public abstract void setScaleCenterY(float paramFloat);
  
  public abstract void setScaleX(float paramFloat);
  
  public abstract void setScaleY(float paramFloat);
  
  public abstract void setUserData(Object paramObject);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(int paramInt);
  
  public abstract void sortChildren();
  
  public abstract void sortChildren(Comparator<IEntity> paramComparator);
  
  public abstract boolean swapChildren(int paramInt1, int paramInt2);
  
  public abstract boolean swapChildren(IEntity paramIEntity1, IEntity paramIEntity2);
  
  public abstract boolean unregisterEntityModifier(IEntityModifier paramIEntityModifier);
  
  public abstract boolean unregisterEntityModifiers(IEntityModifier.IEntityModifierMatcher paramIEntityModifierMatcher);
  
  public abstract boolean unregisterUpdateHandler(IUpdateHandler paramIUpdateHandler);
  
  public abstract boolean unregisterUpdateHandlers(IUpdateHandler.IUpdateHandlerMatcher paramIUpdateHandlerMatcher);
  
  public static abstract interface IEntityCallable
    extends ParameterCallable<IEntity>
  {
    public abstract void call(IEntity paramIEntity);
  }
  
  public static abstract interface IEntityMatcher
    extends IMatcher<IEntity>
  {
    public abstract boolean matches(IEntity paramIEntity);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.IEntity
 * JD-Core Version:    0.7.0.1
 */