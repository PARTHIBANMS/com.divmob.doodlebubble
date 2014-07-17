package org.anddev.andengine.util.modifier;

public abstract class BaseDurationModifier<T>
  extends BaseModifier<T>
{
  protected final float mDuration;
  private float mSecondsElapsed;
  
  public BaseDurationModifier(float paramFloat)
  {
    this.mDuration = paramFloat;
  }
  
  public BaseDurationModifier(float paramFloat, IModifier.IModifierListener<T> paramIModifierListener)
  {
    super(paramIModifierListener);
    this.mDuration = paramFloat;
  }
  
  protected BaseDurationModifier(BaseDurationModifier<T> paramBaseDurationModifier)
  {
    this(paramBaseDurationModifier.mDuration);
  }
  
  public float getDuration()
  {
    return this.mDuration;
  }
  
  public float getSecondsElapsed()
  {
    return this.mSecondsElapsed;
  }
  
  protected abstract void onManagedInitialize(T paramT);
  
  protected abstract void onManagedUpdate(float paramFloat, T paramT);
  
  public final float onUpdate(float paramFloat, T paramT)
  {
    if (this.mFinished)
    {
      paramFloat = 0.0F;
      return paramFloat;
    }
    if (this.mSecondsElapsed == 0.0F)
    {
      onManagedInitialize(paramT);
      onModifierStarted(paramT);
    }
    if (paramFloat + this.mSecondsElapsed < this.mDuration) {}
    for (;;)
    {
      this.mSecondsElapsed = (paramFloat + this.mSecondsElapsed);
      onManagedUpdate(paramFloat, paramT);
      if ((this.mDuration == -1.0F) || (this.mSecondsElapsed < this.mDuration)) {
        break;
      }
      this.mSecondsElapsed = this.mDuration;
      this.mFinished = true;
      onModifierFinished(paramT);
      return paramFloat;
      paramFloat = this.mDuration - this.mSecondsElapsed;
    }
  }
  
  public void reset()
  {
    this.mFinished = false;
    this.mSecondsElapsed = 0.0F;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.BaseDurationModifier
 * JD-Core Version:    0.7.0.1
 */