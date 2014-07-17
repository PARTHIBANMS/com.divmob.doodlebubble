package com.divmob.doodlebubble;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierListener;
import org.anddev.andengine.util.modifier.IModifier;

class g
  implements IEntityModifier.IEntityModifierListener
{
  g(f paramf) {}
  
  public void a(IModifier<IEntity> paramIModifier, IEntity paramIEntity) {}
  
  public void b(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    this.a.setCurrentTileIndex(0);
    f.a(this.a).a(0.0F);
    GameActivity.f(f.a(this.a)).b();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.g
 * JD-Core Version:    0.7.0.1
 */