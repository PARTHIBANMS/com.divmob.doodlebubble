package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.SequenceModifier;
import org.anddev.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener;

public class SequenceEntityModifier
  extends SequenceModifier<IEntity>
  implements IEntityModifier
{
  public SequenceEntityModifier(IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIEntityModifierListener, paramVarArgs);
  }
  
  public SequenceEntityModifier(ISubSequenceShapeModifierListener paramISubSequenceShapeModifierListener, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramISubSequenceShapeModifierListener, paramIEntityModifierListener, paramVarArgs);
  }
  
  public SequenceEntityModifier(ISubSequenceShapeModifierListener paramISubSequenceShapeModifierListener, IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramISubSequenceShapeModifierListener, paramVarArgs);
  }
  
  protected SequenceEntityModifier(SequenceEntityModifier paramSequenceEntityModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramSequenceEntityModifier);
  }
  
  public SequenceEntityModifier(IEntityModifier... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramVarArgs);
  }
  
  public SequenceEntityModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new SequenceEntityModifier(this);
  }
  
  public static abstract interface ISubSequenceShapeModifierListener
    extends SequenceModifier.ISubSequenceModifierListener<IEntity>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.SequenceEntityModifier
 * JD-Core Version:    0.7.0.1
 */