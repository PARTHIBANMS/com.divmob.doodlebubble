package org.anddev.andengine.util.modifier;

import java.util.Comparator;

public abstract interface IModifier<T>
{
  public static final Comparator<IModifier<?>> MODIFIER_COMPARATOR_DURATION_DESCENDING = new IModifier.1();
  
  public abstract void addModifierListener(IModifierListener<T> paramIModifierListener);
  
  public abstract IModifier<T> deepCopy()
    throws IModifier.DeepCopyNotSupportedException;
  
  public abstract float getDuration();
  
  public abstract float getSecondsElapsed();
  
  public abstract boolean isFinished();
  
  public abstract boolean isRemoveWhenFinished();
  
  public abstract float onUpdate(float paramFloat, T paramT);
  
  public abstract boolean removeModifierListener(IModifierListener<T> paramIModifierListener);
  
  public abstract void reset();
  
  public abstract void setRemoveWhenFinished(boolean paramBoolean);
  
  public static class DeepCopyNotSupportedException
    extends RuntimeException
  {
    private static final long serialVersionUID = -5838035434002587320L;
  }
  
  public static abstract interface IModifierListener<T>
  {
    public abstract void onModifierFinished(IModifier<T> paramIModifier, T paramT);
    
    public abstract void onModifierStarted(IModifier<T> paramIModifier, T paramT);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.IModifier
 * JD-Core Version:    0.7.0.1
 */