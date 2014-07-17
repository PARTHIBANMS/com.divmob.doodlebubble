package org.anddev.andengine.entity.scene.background.modifier;

import org.anddev.andengine.entity.scene.background.IBackground;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.SequenceModifier;
import org.anddev.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener;

public class SequenceBackgroundModifier
  extends SequenceModifier<IBackground>
  implements IBackgroundModifier
{
  public SequenceBackgroundModifier(IBackgroundModifier.IBackgroundModifierListener paramIBackgroundModifierListener, IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIBackgroundModifierListener, paramVarArgs);
  }
  
  public SequenceBackgroundModifier(ISubSequenceBackgroundModifierListener paramISubSequenceBackgroundModifierListener, IBackgroundModifier.IBackgroundModifierListener paramIBackgroundModifierListener, IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramISubSequenceBackgroundModifierListener, paramIBackgroundModifierListener, paramVarArgs);
  }
  
  public SequenceBackgroundModifier(ISubSequenceBackgroundModifierListener paramISubSequenceBackgroundModifierListener, IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramISubSequenceBackgroundModifierListener, paramVarArgs);
  }
  
  protected SequenceBackgroundModifier(SequenceBackgroundModifier paramSequenceBackgroundModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramSequenceBackgroundModifier);
  }
  
  public SequenceBackgroundModifier(IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramVarArgs);
  }
  
  public SequenceBackgroundModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new SequenceBackgroundModifier(this);
  }
  
  public static abstract interface ISubSequenceBackgroundModifierListener
    extends SequenceModifier.ISubSequenceModifierListener<IBackground>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.modifier.SequenceBackgroundModifier
 * JD-Core Version:    0.7.0.1
 */