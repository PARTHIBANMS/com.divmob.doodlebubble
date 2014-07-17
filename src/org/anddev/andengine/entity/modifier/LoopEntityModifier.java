package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.LoopModifier;
import org.anddev.andengine.util.modifier.LoopModifier.ILoopModifierListener;

public class LoopEntityModifier
  extends LoopModifier<IEntity>
  implements IEntityModifier
{
  public LoopEntityModifier(IEntityModifier.IEntityModifierListener paramIEntityModifierListener, int paramInt, ILoopEntityModifierListener paramILoopEntityModifierListener, IEntityModifier paramIEntityModifier)
  {
    super(paramIEntityModifier, paramInt, paramILoopEntityModifierListener, paramIEntityModifierListener);
  }
  
  public LoopEntityModifier(IEntityModifier paramIEntityModifier)
  {
    super(paramIEntityModifier);
  }
  
  public LoopEntityModifier(IEntityModifier paramIEntityModifier, int paramInt)
  {
    super(paramIEntityModifier, paramInt);
  }
  
  public LoopEntityModifier(IEntityModifier paramIEntityModifier, int paramInt, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramIEntityModifier, paramInt, paramIEntityModifierListener);
  }
  
  public LoopEntityModifier(IEntityModifier paramIEntityModifier, int paramInt, ILoopEntityModifierListener paramILoopEntityModifierListener)
  {
    super(paramIEntityModifier, paramInt, paramILoopEntityModifierListener);
  }
  
  protected LoopEntityModifier(LoopEntityModifier paramLoopEntityModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    super(paramLoopEntityModifier);
  }
  
  public LoopEntityModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new LoopEntityModifier(this);
  }
  
  public static abstract interface ILoopEntityModifierListener
    extends LoopModifier.ILoopModifierListener<IEntity>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.LoopEntityModifier
 * JD-Core Version:    0.7.0.1
 */