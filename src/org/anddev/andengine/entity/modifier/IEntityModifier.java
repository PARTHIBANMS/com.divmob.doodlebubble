package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.IMatcher;
import org.anddev.andengine.util.modifier.IModifier;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.IModifier.IModifierListener;

public abstract interface IEntityModifier
  extends IModifier<IEntity>
{
  public abstract IEntityModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public static abstract interface IEntityModifierListener
    extends IModifier.IModifierListener<IEntity>
  {}
  
  public static abstract interface IEntityModifierMatcher
    extends IMatcher<IModifier<IEntity>>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.IEntityModifier
 * JD-Core Version:    0.7.0.1
 */