package org.anddev.andengine.entity.scene.background.modifier;

import org.anddev.andengine.entity.scene.background.IBackground;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.LoopModifier;
import org.anddev.andengine.util.modifier.LoopModifier.ILoopModifierListener;

public class LoopBackgroundModifier
  extends LoopModifier<IBackground>
  implements IBackgroundModifier
{
  public LoopBackgroundModifier(IBackgroundModifier paramIBackgroundModifier)
  {
    super(paramIBackgroundModifier);
  }
  
  public LoopBackgroundModifier(IBackgroundModifier paramIBackgroundModifier, int paramInt)
  {
    super(paramIBackgroundModifier, paramInt);
  }
  
  public LoopBackgroundModifier(IBackgroundModifier paramIBackgroundModifier, int paramInt, IBackgroundModifier.IBackgroundModifierListener paramIBackgroundModifierListener)
  {
    super(paramIBackgroundModifier, paramInt, paramIBackgroundModifierListener);
  }
  
  public LoopBackgroundModifier(IBackgroundModifier paramIBackgroundModifier, int paramInt, ILoopBackgroundModifierListener paramILoopBackgroundModifierListener)
  {
    super(paramIBackgroundModifier, paramInt, paramILoopBackgroundModifierListener, null);
  }
  
  public LoopBackgroundModifier(IBackgroundModifier paramIBackgroundModifier, int paramInt, ILoopBackgroundModifierListener paramILoopBackgroundModifierListener, IBackgroundModifier.IBackgroundModifierListener paramIBackgroundModifierListener)
  {
    super(paramIBackgroundModifier, paramInt, paramILoopBackgroundModifierListener, paramIBackgroundModifierListener);
  }
  
  protected LoopBackgroundModifier(LoopBackgroundModifier paramLoopBackgroundModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramLoopBackgroundModifier);
  }
  
  public LoopBackgroundModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new LoopBackgroundModifier(this);
  }
  
  public static abstract interface ILoopBackgroundModifierListener
    extends LoopModifier.ILoopModifierListener<IBackground>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.modifier.LoopBackgroundModifier
 * JD-Core Version:    0.7.0.1
 */