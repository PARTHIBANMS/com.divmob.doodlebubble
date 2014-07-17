package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseModifier;

public abstract class EntityModifier
  extends BaseModifier<IEntity>
  implements IEntityModifier
{
  public EntityModifier() {}
  
  public EntityModifier(IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramIEntityModifierListener);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.EntityModifier
 * JD-Core Version:    0.7.0.1
 */