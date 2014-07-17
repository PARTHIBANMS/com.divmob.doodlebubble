package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.ParallelModifier;

public class ParallelEntityModifier
  extends ParallelModifier<IEntity>
  implements IEntityModifier
{
  public ParallelEntityModifier(IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIEntityModifierListener, paramVarArgs);
  }
  
  protected ParallelEntityModifier(ParallelEntityModifier paramParallelEntityModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramParallelEntityModifier);
  }
  
  public ParallelEntityModifier(IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramVarArgs);
  }
  
  public ParallelEntityModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new ParallelEntityModifier(this);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.ParallelEntityModifier
 * JD-Core Version:    0.7.0.1
 */