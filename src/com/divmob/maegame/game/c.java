package com.divmob.maegame.game;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierListener;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.util.modifier.IModifier;

class c
  implements IEntityModifier.IEntityModifierListener
{
  c(MBaseGameActivity paramMBaseGameActivity) {}
  
  public void a(IModifier<IEntity> paramIModifier, IEntity paramIEntity) {}
  
  public void b(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    this.a.u.clearChildScene();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.game.c
 * JD-Core Version:    0.7.0.1
 */