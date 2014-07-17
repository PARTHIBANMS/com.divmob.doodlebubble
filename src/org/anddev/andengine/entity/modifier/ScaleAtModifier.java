package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class ScaleAtModifier
  extends ScaleModifier
{
  private final float mScaleCenterX;
  private final float mScaleCenterY;
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, IEaseFunction.DEFAULT);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, IEaseFunction.DEFAULT);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, paramIEaseFunction);
    this.mScaleCenterX = paramFloat6;
    this.mScaleCenterY = paramFloat7;
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, null, paramIEaseFunction);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public ScaleAtModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, null, paramIEaseFunction);
  }
  
  protected ScaleAtModifier(ScaleAtModifier paramScaleAtModifier)
  {
    super(paramScaleAtModifier);
    this.mScaleCenterX = paramScaleAtModifier.mScaleCenterX;
    this.mScaleCenterY = paramScaleAtModifier.mScaleCenterY;
  }
  
  public ScaleAtModifier deepCopy()
  {
    return new ScaleAtModifier(this);
  }
  
  protected void onManagedInitialize(IEntity paramIEntity)
  {
    super.onManagedInitialize(paramIEntity);
    paramIEntity.setScaleCenter(this.mScaleCenterX, this.mScaleCenterY);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.ScaleAtModifier
 * JD-Core Version:    0.7.0.1
 */