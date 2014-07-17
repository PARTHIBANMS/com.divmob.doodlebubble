package com.divmob.splashscreen;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.modifier.IEntityModifier.IEntityModifierListener;
import org.anddev.andengine.util.modifier.IModifier;

class b
  implements IEntityModifier.IEntityModifierListener
{
  b(Splash paramSplash) {}
  
  public void a(IModifier<IEntity> paramIModifier, IEntity paramIEntity) {}
  
  public void b(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    Splash localSplash = this.a;
    Splash.a(localSplash, 1 + Splash.a(localSplash));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.splashscreen.b
 * JD-Core Version:    0.7.0.1
 */