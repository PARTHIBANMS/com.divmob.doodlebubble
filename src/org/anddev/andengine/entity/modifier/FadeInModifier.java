package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class FadeInModifier
  extends AlphaModifier
{
  public FadeInModifier(float paramFloat)
  {
    super(paramFloat, 0.0F, 1.0F, IEaseFunction.DEFAULT);
  }
  
  public FadeInModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat, 0.0F, 1.0F, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public FadeInModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat, 0.0F, 1.0F, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public FadeInModifier(float paramFloat, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat, 0.0F, 1.0F, paramIEaseFunction);
  }
  
  protected FadeInModifier(FadeInModifier paramFadeInModifier)
  {
    super(paramFadeInModifier);
  }
  
  public FadeInModifier deepCopy()
  {
    return new FadeInModifier(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.FadeInModifier
 * JD-Core Version:    0.7.0.1
 */