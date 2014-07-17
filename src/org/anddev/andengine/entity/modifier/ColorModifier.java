package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class ColorModifier
  extends TripleValueSpanEntityModifier
{
  public ColorModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, null, IEaseFunction.DEFAULT);
  }
  
  public ColorModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public ColorModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public ColorModifier(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, null, paramIEaseFunction);
  }
  
  protected ColorModifier(ColorModifier paramColorModifier)
  {
    super(paramColorModifier);
  }
  
  public ColorModifier deepCopy()
  {
    return new ColorModifier(this);
  }
  
  protected void onSetInitialValues(IEntity paramIEntity, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramIEntity.setColor(paramFloat1, paramFloat2, paramFloat3);
  }
  
  protected void onSetValues(IEntity paramIEntity, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramIEntity.setColor(paramFloat2, paramFloat3, paramFloat4);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.ColorModifier
 * JD-Core Version:    0.7.0.1
 */