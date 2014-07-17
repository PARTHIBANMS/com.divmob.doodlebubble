package org.anddev.andengine.entity;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.engine.handler.IUpdateHandler;
import org.anddev.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher;
import org.anddev.andengine.engine.handler.UpdateHandlerList;
import org.anddev.andengine.entity.modifier.EntityModifierList;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher;
import org.anddev.andengine.util.ParameterCallable;
import org.anddev.andengine.util.SmartList;
import org.anddev.andengine.util.Transformation;

public class Entity
  implements IEntity
{
  private static final int CHILDREN_CAPACITY_DEFAULT = 4;
  private static final int ENTITYMODIFIERS_CAPACITY_DEFAULT = 4;
  private static final ParameterCallable<IEntity> PARAMETERCALLABLE_DETACHCHILD = new Entity.1();
  private static final int UPDATEHANDLERS_CAPACITY_DEFAULT = 4;
  private static final float[] VERTICES_LOCAL_TO_SCENE_TMP;
  private static final float[] VERTICES_SCENE_TO_LOCAL_TMP = new float[2];
  protected float mAlpha = 1.0F;
  protected float mBlue = 1.0F;
  protected SmartList<IEntity> mChildren;
  protected boolean mChildrenIgnoreUpdate = false;
  protected boolean mChildrenVisible = true;
  private EntityModifierList mEntityModifiers;
  protected float mGreen = 1.0F;
  protected boolean mIgnoreUpdate = false;
  private final float mInitialX;
  private final float mInitialY;
  private final Transformation mLocalToParentTransformation = new Transformation();
  private boolean mLocalToParentTransformationDirty = true;
  private final Transformation mLocalToSceneTransformation = new Transformation();
  private IEntity mParent;
  private final Transformation mParentToLocalTransformation = new Transformation();
  private boolean mParentToLocalTransformationDirty = true;
  protected float mRed = 1.0F;
  protected float mRotation = 0.0F;
  protected float mRotationCenterX = 0.0F;
  protected float mRotationCenterY = 0.0F;
  protected float mScaleCenterX = 0.0F;
  protected float mScaleCenterY = 0.0F;
  protected float mScaleX = 1.0F;
  protected float mScaleY = 1.0F;
  private final Transformation mSceneToLocalTransformation = new Transformation();
  private UpdateHandlerList mUpdateHandlers;
  private Object mUserData;
  protected boolean mVisible = true;
  protected float mX;
  protected float mY;
  protected int mZIndex = 0;
  
  static
  {
    VERTICES_LOCAL_TO_SCENE_TMP = new float[2];
  }
  
  public Entity()
  {
    this(0.0F, 0.0F);
  }
  
  public Entity(float paramFloat1, float paramFloat2)
  {
    this.mInitialX = paramFloat1;
    this.mInitialY = paramFloat2;
    this.mX = paramFloat1;
    this.mY = paramFloat2;
  }
  
  private void allocateChildren()
  {
    this.mChildren = new SmartList(4);
  }
  
  private void allocateEntityModifiers()
  {
    this.mEntityModifiers = new EntityModifierList(this, 4);
  }
  
  private void allocateUpdateHandlers()
  {
    this.mUpdateHandlers = new UpdateHandlerList(4);
  }
  
  protected void applyRotation(GL10 paramGL10)
  {
    float f1 = this.mRotation;
    if (f1 != 0.0F)
    {
      float f2 = this.mRotationCenterX;
      float f3 = this.mRotationCenterY;
      paramGL10.glTranslatef(f2, f3, 0.0F);
      paramGL10.glRotatef(f1, 0.0F, 0.0F, 1.0F);
      paramGL10.glTranslatef(-f2, -f3, 0.0F);
    }
  }
  
  protected void applyScale(GL10 paramGL10)
  {
    float f1 = this.mScaleX;
    float f2 = this.mScaleY;
    if ((f1 != 1.0F) || (f2 != 1.0F))
    {
      float f3 = this.mScaleCenterX;
      float f4 = this.mScaleCenterY;
      paramGL10.glTranslatef(f3, f4, 0.0F);
      paramGL10.glScalef(f1, f2, 1.0F);
      paramGL10.glTranslatef(-f3, -f4, 0.0F);
    }
  }
  
  protected void applyTranslation(GL10 paramGL10)
  {
    paramGL10.glTranslatef(this.mX, this.mY, 0.0F);
  }
  
  public void attachChild(IEntity paramIEntity)
    throws IllegalStateException
  {
    if (paramIEntity.hasParent()) {
      throw new IllegalStateException("pEntity already has a parent!");
    }
    if (this.mChildren == null) {
      allocateChildren();
    }
    this.mChildren.add(paramIEntity);
    paramIEntity.setParent(this);
    paramIEntity.onAttached();
  }
  
  public boolean attachChild(IEntity paramIEntity, int paramInt)
    throws IllegalStateException
  {
    if (paramIEntity.hasParent()) {
      throw new IllegalStateException("pEntity already has a parent!");
    }
    if (this.mChildren == null) {
      allocateChildren();
    }
    try
    {
      this.mChildren.add(paramInt, paramIEntity);
      paramIEntity.setParent(this);
      paramIEntity.onAttached();
      return true;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {}
    return false;
  }
  
  public void callOnChildren(IEntity.IEntityCallable paramIEntityCallable)
  {
    if (this.mChildren == null) {
      return;
    }
    this.mChildren.call(paramIEntityCallable);
  }
  
  public void callOnChildren(IEntity.IEntityMatcher paramIEntityMatcher, IEntity.IEntityCallable paramIEntityCallable)
  {
    if (this.mChildren == null) {
      return;
    }
    this.mChildren.call(paramIEntityMatcher, paramIEntityCallable);
  }
  
  public void clearEntityModifiers()
  {
    if (this.mEntityModifiers == null) {
      return;
    }
    this.mEntityModifiers.clear();
  }
  
  public void clearUpdateHandlers()
  {
    if (this.mUpdateHandlers == null) {
      return;
    }
    this.mUpdateHandlers.clear();
  }
  
  public float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2)
  {
    return convertLocalToSceneCoordinates(paramFloat1, paramFloat2, VERTICES_LOCAL_TO_SCENE_TMP);
  }
  
  public float[] convertLocalToSceneCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = paramFloat2;
    getLocalToSceneTransformation().transform(paramArrayOfFloat);
    return paramArrayOfFloat;
  }
  
  public float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat)
  {
    return convertSceneToLocalCoordinates(paramArrayOfFloat, VERTICES_LOCAL_TO_SCENE_TMP);
  }
  
  public float[] convertLocalToSceneCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    paramArrayOfFloat2[0] = paramArrayOfFloat1[0];
    paramArrayOfFloat2[1] = paramArrayOfFloat1[1];
    getLocalToSceneTransformation().transform(paramArrayOfFloat2);
    return paramArrayOfFloat2;
  }
  
  public float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2)
  {
    return convertSceneToLocalCoordinates(paramFloat1, paramFloat2, VERTICES_SCENE_TO_LOCAL_TMP);
  }
  
  public float[] convertSceneToLocalCoordinates(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = paramFloat2;
    getSceneToLocalTransformation().transform(paramArrayOfFloat);
    return paramArrayOfFloat;
  }
  
  public float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat)
  {
    return convertSceneToLocalCoordinates(paramArrayOfFloat, VERTICES_SCENE_TO_LOCAL_TMP);
  }
  
  public float[] convertSceneToLocalCoordinates(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    paramArrayOfFloat2[0] = paramArrayOfFloat1[0];
    paramArrayOfFloat2[1] = paramArrayOfFloat1[1];
    getSceneToLocalTransformation().transform(paramArrayOfFloat2);
    return paramArrayOfFloat2;
  }
  
  public IEntity detachChild(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    if (this.mChildren == null) {
      return null;
    }
    return (IEntity)this.mChildren.remove(paramIEntityMatcher, PARAMETERCALLABLE_DETACHCHILD);
  }
  
  public boolean detachChild(IEntity paramIEntity)
  {
    if (this.mChildren == null) {
      return false;
    }
    return this.mChildren.remove(paramIEntity, PARAMETERCALLABLE_DETACHCHILD);
  }
  
  public void detachChildren()
  {
    if (this.mChildren == null) {
      return;
    }
    this.mChildren.clear(PARAMETERCALLABLE_DETACHCHILD);
  }
  
  public boolean detachChildren(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    if (this.mChildren == null) {
      return false;
    }
    return this.mChildren.removeAll(paramIEntityMatcher, PARAMETERCALLABLE_DETACHCHILD);
  }
  
  public boolean detachSelf()
  {
    IEntity localIEntity = this.mParent;
    if (localIEntity != null) {
      return localIEntity.detachChild(this);
    }
    return false;
  }
  
  protected void doDraw(GL10 paramGL10, Camera paramCamera) {}
  
  public IEntity findChild(IEntity.IEntityMatcher paramIEntityMatcher)
  {
    if (this.mChildren == null) {
      return null;
    }
    return (IEntity)this.mChildren.find(paramIEntityMatcher);
  }
  
  public float getAlpha()
  {
    return this.mAlpha;
  }
  
  public float getBlue()
  {
    return this.mBlue;
  }
  
  public IEntity getChild(int paramInt)
  {
    if (this.mChildren == null) {
      return null;
    }
    return (IEntity)this.mChildren.get(paramInt);
  }
  
  public int getChildCount()
  {
    if (this.mChildren == null) {
      return 0;
    }
    return this.mChildren.size();
  }
  
  public int getChildIndex(IEntity paramIEntity)
  {
    if ((this.mChildren == null) || (paramIEntity.getParent() != this)) {
      return -1;
    }
    return this.mChildren.indexOf(paramIEntity);
  }
  
  public IEntity getFirstChild()
  {
    if (this.mChildren == null) {
      return null;
    }
    return (IEntity)this.mChildren.get(0);
  }
  
  public float getGreen()
  {
    return this.mGreen;
  }
  
  public float getInitialX()
  {
    return this.mInitialX;
  }
  
  public float getInitialY()
  {
    return this.mInitialY;
  }
  
  public IEntity getLastChild()
  {
    if (this.mChildren == null) {
      return null;
    }
    return (IEntity)this.mChildren.get(-1 + this.mChildren.size());
  }
  
  public Transformation getLocalToParentTransformation()
  {
    Transformation localTransformation = this.mLocalToParentTransformation;
    if (this.mLocalToParentTransformationDirty)
    {
      localTransformation.setToIdentity();
      float f1 = this.mScaleX;
      float f2 = this.mScaleY;
      if ((f1 != 1.0F) || (f2 != 1.0F))
      {
        float f3 = this.mScaleCenterX;
        float f4 = this.mScaleCenterY;
        localTransformation.postTranslate(-f3, -f4);
        localTransformation.postScale(f1, f2);
        localTransformation.postTranslate(f3, f4);
      }
      float f5 = this.mRotation;
      if (f5 != 0.0F)
      {
        float f6 = this.mRotationCenterX;
        float f7 = this.mRotationCenterY;
        localTransformation.postTranslate(-f6, -f7);
        localTransformation.postRotate(f5);
        localTransformation.postTranslate(f6, f7);
      }
      localTransformation.postTranslate(this.mX, this.mY);
      this.mLocalToParentTransformationDirty = false;
    }
    return localTransformation;
  }
  
  public Transformation getLocalToSceneTransformation()
  {
    Transformation localTransformation = this.mLocalToSceneTransformation;
    localTransformation.setTo(getLocalToParentTransformation());
    IEntity localIEntity = this.mParent;
    if (localIEntity != null) {
      localTransformation.postConcat(localIEntity.getLocalToSceneTransformation());
    }
    return localTransformation;
  }
  
  public IEntity getParent()
  {
    return this.mParent;
  }
  
  public Transformation getParentToLocalTransformation()
  {
    Transformation localTransformation = this.mParentToLocalTransformation;
    if (this.mParentToLocalTransformationDirty)
    {
      localTransformation.setToIdentity();
      localTransformation.postTranslate(-this.mX, -this.mY);
      float f1 = this.mRotation;
      if (f1 != 0.0F)
      {
        float f6 = this.mRotationCenterX;
        float f7 = this.mRotationCenterY;
        localTransformation.postTranslate(-f6, -f7);
        localTransformation.postRotate(-f1);
        localTransformation.postTranslate(f6, f7);
      }
      float f2 = this.mScaleX;
      float f3 = this.mScaleY;
      if ((f2 != 1.0F) || (f3 != 1.0F))
      {
        float f4 = this.mScaleCenterX;
        float f5 = this.mScaleCenterY;
        localTransformation.postTranslate(-f4, -f5);
        localTransformation.postScale(1.0F / f2, 1.0F / f3);
        localTransformation.postTranslate(f4, f5);
      }
      this.mParentToLocalTransformationDirty = false;
    }
    return localTransformation;
  }
  
  public float getRed()
  {
    return this.mRed;
  }
  
  public float getRotation()
  {
    return this.mRotation;
  }
  
  public float getRotationCenterX()
  {
    return this.mRotationCenterX;
  }
  
  public float getRotationCenterY()
  {
    return this.mRotationCenterY;
  }
  
  public float getScaleCenterX()
  {
    return this.mScaleCenterX;
  }
  
  public float getScaleCenterY()
  {
    return this.mScaleCenterY;
  }
  
  public float getScaleX()
  {
    return this.mScaleX;
  }
  
  public float getScaleY()
  {
    return this.mScaleY;
  }
  
  public float[] getSceneCenterCoordinates()
  {
    return convertLocalToSceneCoordinates(0.0F, 0.0F);
  }
  
  public Transformation getSceneToLocalTransformation()
  {
    Transformation localTransformation = this.mSceneToLocalTransformation;
    localTransformation.setTo(getParentToLocalTransformation());
    IEntity localIEntity = this.mParent;
    if (localIEntity != null) {
      localTransformation.postConcat(localIEntity.getSceneToLocalTransformation());
    }
    return localTransformation;
  }
  
  public Object getUserData()
  {
    return this.mUserData;
  }
  
  public float getX()
  {
    return this.mX;
  }
  
  public float getY()
  {
    return this.mY;
  }
  
  public int getZIndex()
  {
    return this.mZIndex;
  }
  
  public boolean hasParent()
  {
    return this.mParent != null;
  }
  
  public boolean isChildrenIgnoreUpdate()
  {
    return this.mChildrenIgnoreUpdate;
  }
  
  public boolean isChildrenVisible()
  {
    return this.mChildrenVisible;
  }
  
  public boolean isIgnoreUpdate()
  {
    return this.mIgnoreUpdate;
  }
  
  public boolean isRotated()
  {
    return this.mRotation != 0.0F;
  }
  
  public boolean isScaled()
  {
    return (this.mScaleX != 1.0F) || (this.mScaleY != 1.0F);
  }
  
  public boolean isVisible()
  {
    return this.mVisible;
  }
  
  protected void onApplyTransformations(GL10 paramGL10)
  {
    applyTranslation(paramGL10);
    applyRotation(paramGL10);
    applyScale(paramGL10);
  }
  
  public void onAttached() {}
  
  public void onDetached() {}
  
  public final void onDraw(GL10 paramGL10, Camera paramCamera)
  {
    if (this.mVisible) {
      onManagedDraw(paramGL10, paramCamera);
    }
  }
  
  protected void onDrawChildren(GL10 paramGL10, Camera paramCamera)
  {
    if ((this.mChildren != null) && (this.mChildrenVisible)) {
      onManagedDrawChildren(paramGL10, paramCamera);
    }
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    paramGL10.glPushMatrix();
    onApplyTransformations(paramGL10);
    doDraw(paramGL10, paramCamera);
    onDrawChildren(paramGL10, paramCamera);
    paramGL10.glPopMatrix();
  }
  
  public void onManagedDrawChildren(GL10 paramGL10, Camera paramCamera)
  {
    SmartList localSmartList = this.mChildren;
    int i = localSmartList.size();
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      ((IEntity)localSmartList.get(j)).onDraw(paramGL10, paramCamera);
    }
  }
  
  protected void onManagedUpdate(float paramFloat)
  {
    if (this.mEntityModifiers != null) {
      this.mEntityModifiers.onUpdate(paramFloat);
    }
    if (this.mUpdateHandlers != null) {
      this.mUpdateHandlers.onUpdate(paramFloat);
    }
    SmartList localSmartList;
    int i;
    if ((this.mChildren != null) && (!this.mChildrenIgnoreUpdate))
    {
      localSmartList = this.mChildren;
      i = localSmartList.size();
    }
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      ((IEntity)localSmartList.get(j)).onUpdate(paramFloat);
    }
  }
  
  public final void onUpdate(float paramFloat)
  {
    if (!this.mIgnoreUpdate) {
      onManagedUpdate(paramFloat);
    }
  }
  
  public void registerEntityModifier(IEntityModifier paramIEntityModifier)
  {
    if (this.mEntityModifiers == null) {
      allocateEntityModifiers();
    }
    this.mEntityModifiers.add(paramIEntityModifier);
  }
  
  public void registerUpdateHandler(IUpdateHandler paramIUpdateHandler)
  {
    if (this.mUpdateHandlers == null) {
      allocateUpdateHandlers();
    }
    this.mUpdateHandlers.add(paramIUpdateHandler);
  }
  
  public void reset()
  {
    this.mVisible = true;
    this.mIgnoreUpdate = false;
    this.mChildrenVisible = true;
    this.mChildrenIgnoreUpdate = false;
    this.mX = this.mInitialX;
    this.mY = this.mInitialY;
    this.mRotation = 0.0F;
    this.mScaleX = 1.0F;
    this.mScaleY = 1.0F;
    this.mRed = 1.0F;
    this.mGreen = 1.0F;
    this.mBlue = 1.0F;
    this.mAlpha = 1.0F;
    if (this.mEntityModifiers != null) {
      this.mEntityModifiers.reset();
    }
    SmartList localSmartList;
    if (this.mChildren != null) {
      localSmartList = this.mChildren;
    }
    for (int i = -1 + localSmartList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      ((IEntity)localSmartList.get(i)).reset();
    }
  }
  
  public void setAlpha(float paramFloat)
  {
    this.mAlpha = paramFloat;
  }
  
  public boolean setChildIndex(IEntity paramIEntity, int paramInt)
  {
    if ((this.mChildren == null) || (paramIEntity.getParent() != this)) {
      return false;
    }
    try
    {
      this.mChildren.remove(paramIEntity);
      this.mChildren.add(paramInt, paramIEntity);
      return true;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {}
    return false;
  }
  
  public void setChildrenIgnoreUpdate(boolean paramBoolean)
  {
    this.mChildrenIgnoreUpdate = paramBoolean;
  }
  
  public void setChildrenVisible(boolean paramBoolean)
  {
    this.mChildrenVisible = paramBoolean;
  }
  
  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.mRed = paramFloat1;
    this.mGreen = paramFloat2;
    this.mBlue = paramFloat3;
  }
  
  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.mRed = paramFloat1;
    this.mGreen = paramFloat2;
    this.mBlue = paramFloat3;
    this.mAlpha = paramFloat4;
  }
  
  public void setIgnoreUpdate(boolean paramBoolean)
  {
    this.mIgnoreUpdate = paramBoolean;
  }
  
  public void setInitialPosition()
  {
    this.mX = this.mInitialX;
    this.mY = this.mInitialY;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setParent(IEntity paramIEntity)
  {
    this.mParent = paramIEntity;
  }
  
  public void setPosition(float paramFloat1, float paramFloat2)
  {
    this.mX = paramFloat1;
    this.mY = paramFloat2;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setPosition(IEntity paramIEntity)
  {
    setPosition(paramIEntity.getX(), paramIEntity.getY());
  }
  
  public void setRotation(float paramFloat)
  {
    this.mRotation = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setRotationCenter(float paramFloat1, float paramFloat2)
  {
    this.mRotationCenterX = paramFloat1;
    this.mRotationCenterY = paramFloat2;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setRotationCenterX(float paramFloat)
  {
    this.mRotationCenterX = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setRotationCenterY(float paramFloat)
  {
    this.mRotationCenterY = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScale(float paramFloat)
  {
    this.mScaleX = paramFloat;
    this.mScaleY = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScale(float paramFloat1, float paramFloat2)
  {
    this.mScaleX = paramFloat1;
    this.mScaleY = paramFloat2;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScaleCenter(float paramFloat1, float paramFloat2)
  {
    this.mScaleCenterX = paramFloat1;
    this.mScaleCenterY = paramFloat2;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScaleCenterX(float paramFloat)
  {
    this.mScaleCenterX = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScaleCenterY(float paramFloat)
  {
    this.mScaleCenterY = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScaleX(float paramFloat)
  {
    this.mScaleX = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setScaleY(float paramFloat)
  {
    this.mScaleY = paramFloat;
    this.mLocalToParentTransformationDirty = true;
    this.mParentToLocalTransformationDirty = true;
  }
  
  public void setUserData(Object paramObject)
  {
    this.mUserData = paramObject;
  }
  
  public void setVisible(boolean paramBoolean)
  {
    this.mVisible = paramBoolean;
  }
  
  public void setZIndex(int paramInt)
  {
    this.mZIndex = paramInt;
  }
  
  public void sortChildren()
  {
    if (this.mChildren == null) {
      return;
    }
    ZIndexSorter.getInstance().sort(this.mChildren);
  }
  
  public void sortChildren(Comparator<IEntity> paramComparator)
  {
    if (this.mChildren == null) {
      return;
    }
    ZIndexSorter.getInstance().sort(this.mChildren, paramComparator);
  }
  
  public boolean swapChildren(int paramInt1, int paramInt2)
  {
    try
    {
      Collections.swap(this.mChildren, paramInt1, paramInt2);
      return true;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {}
    return false;
  }
  
  public boolean swapChildren(IEntity paramIEntity1, IEntity paramIEntity2)
  {
    return swapChildren(getChildIndex(paramIEntity1), getChildIndex(paramIEntity2));
  }
  
  public boolean unregisterEntityModifier(IEntityModifier paramIEntityModifier)
  {
    if (this.mEntityModifiers == null) {
      return false;
    }
    return this.mEntityModifiers.remove(paramIEntityModifier);
  }
  
  public boolean unregisterEntityModifiers(IEntityModifier.IEntityModifierMatcher paramIEntityModifierMatcher)
  {
    if (this.mEntityModifiers == null) {
      return false;
    }
    return this.mEntityModifiers.removeAll(paramIEntityModifierMatcher);
  }
  
  public boolean unregisterUpdateHandler(IUpdateHandler paramIUpdateHandler)
  {
    if (this.mUpdateHandlers == null) {
      return false;
    }
    return this.mUpdateHandlers.remove(paramIUpdateHandler);
  }
  
  public boolean unregisterUpdateHandlers(IUpdateHandler.IUpdateHandlerMatcher paramIUpdateHandlerMatcher)
  {
    if (this.mUpdateHandlers == null) {
      return false;
    }
    return this.mUpdateHandlers.removeAll(paramIUpdateHandlerMatcher);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.Entity
 * JD-Core Version:    0.7.0.1
 */