package com.divmob.doodlebubble;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierListener;
import org.anddev.andengine.util.modifier.IModifier;

class t
  implements IEntityModifier.IEntityModifierListener
{
  t(MenuActivity paramMenuActivity) {}
  
  public void a(IModifier<IEntity> paramIModifier, IEntity paramIEntity) {}
  
  public void b(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    MenuActivity.g(this.a);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.t
 * JD-Core Version:    0.7.0.1
 */