package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class FadeOutModifier
  extends AlphaModifier
{
  public FadeOutModifier(float paramFloat)
  {
    super(paramFloat, 1.0F, 0.0F, IEaseFunction.DEFAULT);
  }
  
  public FadeOutModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat, 1.0F, 0.0F, paramIEntityModifierListener, IEaseFunction.DEFAULT);
  }
  
  public FadeOutModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat, 1.0F, 0.0F, paramIEntityModifierListener, paramIEaseFunction);
  }
  
  public FadeOutModifier(float paramFloat, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat, 1.0F, 0.0F, paramIEaseFunction);
  }
  
  protected FadeOutModifier(FadeOutModifier paramFadeOutModifier)
  {
    super(paramFadeOutModifier);
  }
  
  public FadeOutModifier deepCopy()
  {
    return new FadeOutModifier(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.FadeOutModifier
 * JD-Core Version:    0.7.0.1
 */