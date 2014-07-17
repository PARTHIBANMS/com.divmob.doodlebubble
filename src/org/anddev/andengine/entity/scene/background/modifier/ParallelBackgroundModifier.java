package org.anddev.andengine.entity.scene.background.modifier;

import org.anddev.andengine.entity.scene.background.IBackground;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.ParallelModifier;

public class ParallelBackgroundModifier
  extends ParallelModifier<IBackground>
  implements IBackgroundModifier
{
  public ParallelBackgroundModifier(IBackgroundModifier.IBackgroundModifierListener paramIBackgroundModifierListener, IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIBackgroundModifierListener, paramVarArgs);
  }
  
  protected ParallelBackgroundModifier(ParallelBackgroundModifier paramParallelBackgroundModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramParallelBackgroundModifier);
  }
  
  public ParallelBackgroundModifier(IBackgroundModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramVarArgs);
  }
  
  public ParallelBackgroundModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new ParallelBackgroundModifier(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.modifier.ParallelBackgroundModifier
 * JD-Core Version:    0.7.0.1
 */