package org.anddev.andengine.util.modifier;

import org.anddev.andengine.util.SmartList;

public abstract class BaseModifier<T>
  implements IModifier<T>
{
  protected boolean mFinished;
  private final SmartList<IModifier.IModifierListener<T>> mModifierListeners = new SmartList(2);
  private boolean mRemoveWhenFinished = true;
  
  public BaseModifier() {}
  
  public BaseModifier(IModifier.IModifierListener<T> paramIModifierListener)
  {
    addModifierListener(paramIModifierListener);
  }
  
  public void addModifierListener(IModifier.IModifierListener<T> paramIModifierListener)
  {
    if (paramIModifierListener != null) {
      this.mModifierListeners.add(paramIModifierListener);
    }
  }
  
  public abstract IModifier<T> deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public boolean isFinished()
  {
    return this.mFinished;
  }
  
  public final boolean isRemoveWhenFinished()
  {
    return this.mRemoveWhenFinished;
  }
  
  protected void onModifierFinished(T paramT)
  {
    SmartList localSmartList = this.mModifierListeners;
    for (int i = -1 + localSmartList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      ((IModifier.IModifierListener)localSmartList.get(i)).onModifierFinished(this, paramT);
    }
  }
  
  protected void onModifierStarted(T paramT)
  {
    SmartList localSmartList = this.mModifierListeners;
    for (int i = -1 + localSmartList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      ((IModifier.IModifierListener)localSmartList.get(i)).onModifierStarted(this, paramT);
    }
  }
  
  public boolean removeModifierListener(IModifier.IModifierListener<T> paramIModifierListener)
  {
    if (paramIModifierListener == null) {
      return false;
    }
    return this.mModifierListeners.remove(paramIModifierListener);
  }
  
  public final void setRemoveWhenFinished(boolean paramBoolean)
  {
    this.mRemoveWhenFinished = paramBoolean;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.BaseModifier
 * JD-Core Version:    0.7.0.1
 */