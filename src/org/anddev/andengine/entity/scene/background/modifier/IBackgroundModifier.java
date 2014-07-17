package org.anddev.andengine.entity.scene.background.modifier;

import org.anddev.andengine.entity.scene.background.IBackground;
import org.anddev.andengine.util.modifier.IModifier;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.IModifier.IModifierListener;

public abstract interface IBackgroundModifier
  extends IModifier<IBackground>
{
  public abstract IBackgroundModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public static abstract interface IBackgroundModifierListener
    extends IModifier.IModifierListener<IBackground>
  {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.background.modifier.IBackgroundModifier
 * JD-Core Version:    0.7.0.1
 */