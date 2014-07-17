package com.divmob.d;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierListener;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.util.modifier.IModifier;

class f
  implements IEntityModifier.IEntityModifierListener
{
  f(a parama) {}
  
  public void a(IModifier<IEntity> paramIModifier, IEntity paramIEntity) {}
  
  public void b(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    a.c(this.a).setVisible(false);
    a.c(this.a).setIgnoreUpdate(true);
    this.a.a();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.d.f
 * JD-Core Version:    0.7.0.1
 */