package org.anddev.andengine.util.modifier;

public class LoopModifier<T>
  extends BaseModifier<T>
  implements IModifier.IModifierListener<T>
{
  public static final int LOOP_CONTINUOUS = -1;
  private final float mDuration;
  private boolean mFinishedCached;
  private int mLoop;
  private final int mLoopCount;
  private ILoopModifierListener<T> mLoopModifierListener;
  private final IModifier<T> mModifier;
  private boolean mModifierStartedCalled;
  private float mSecondsElapsed;
  
  public LoopModifier(IModifier<T> paramIModifier)
  {
    this(paramIModifier, -1);
  }
  
  public LoopModifier(IModifier<T> paramIModifier, int paramInt)
  {
    this(paramIModifier, paramInt, null, null);
  }
  
  public LoopModifier(IModifier<T> paramIModifier, int paramInt, IModifier.IModifierListener<T> paramIModifierListener)
  {
    this(paramIModifier, paramInt, null, paramIModifierListener);
  }
  
  public LoopModifier(IModifier<T> paramIModifier, int paramInt, ILoopModifierListener<T> paramILoopModifierListener)
  {
    this(paramIModifier, paramInt, paramILoopModifierListener, null);
  }
  
  public LoopModifier(IModifier<T> paramIModifier, int paramInt, ILoopModifierListener<T> paramILoopModifierListener, IModifier.IModifierListener<T> paramIModifierListener)
  {
    super(paramIModifierListener);
    this.mModifier = paramIModifier;
    this.mLoopCount = paramInt;
    this.mLoopModifierListener = paramILoopModifierListener;
    this.mLoop = 0;
    if (paramInt == -1) {}
    for (float f = (1.0F / 1.0F);; f = paramIModifier.getDuration() * paramInt)
    {
      this.mDuration = f;
      this.mModifier.addModifierListener(this);
      return;
    }
  }
  
  protected LoopModifier(LoopModifier<T> paramLoopModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    this(paramLoopModifier.mModifier.deepCopy(), paramLoopModifier.mLoopCount);
  }
  
  public LoopModifier<T> deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new LoopModifier(this);
  }
  
  public float getDuration()
  {
    return this.mDuration;
  }
  
  public ILoopModifierListener<T> getLoopModifierListener()
  {
    return this.mLoopModifierListener;
  }
  
  public float getSecondsElapsed()
  {
    return this.mSecondsElapsed;
  }
  
  public void onModifierFinished(IModifier<T> paramIModifier, T paramT)
  {
    if (this.mLoopModifierListener != null) {
      this.mLoopModifierListener.onLoopFinished(this, this.mLoop, this.mLoopCount);
    }
    if (this.mLoopCount == -1)
    {
      this.mSecondsElapsed = 0.0F;
      this.mModifier.reset();
      return;
    }
    this.mLoop = (1 + this.mLoop);
    if (this.mLoop >= this.mLoopCount)
    {
      this.mFinished = true;
      this.mFinishedCached = true;
      onModifierFinished(paramT);
      return;
    }
    this.mSecondsElapsed = 0.0F;
    this.mModifier.reset();
  }
  
  public void onModifierStarted(IModifier<T> paramIModifier, T paramT)
  {
    if (!this.mModifierStartedCalled)
    {
      this.mModifierStartedCalled = true;
      onModifierStarted(paramT);
    }
    if (this.mLoopModifierListener != null) {
      this.mLoopModifierListener.onLoopStarted(this, this.mLoop, this.mLoopCount);
    }
  }
  
  public float onUpdate(float paramFloat, T paramT)
  {
    if (this.mFinished) {
      return 0.0F;
    }
    this.mFinishedCached = false;
    for (float f1 = paramFloat;; f1 -= this.mModifier.onUpdate(f1, paramT)) {
      if ((f1 <= 0.0F) || (this.mFinishedCached))
      {
        this.mFinishedCached = false;
        float f2 = paramFloat - f1;
        this.mSecondsElapsed = (f2 + this.mSecondsElapsed);
        return f2;
      }
    }
  }
  
  public void reset()
  {
    this.mLoop = 0;
    this.mSecondsElapsed = 0.0F;
    this.mModifierStartedCalled = false;
    this.mModifier.reset();
  }
  
  public void setLoopModifierListener(ILoopModifierListener<T> paramILoopModifierListener)
  {
    this.mLoopModifierListener = paramILoopModifierListener;
  }
  
  public static abstract interface ILoopModifierListener<T>
  {
    public abstract void onLoopFinished(LoopModifier<T> paramLoopModifier, int paramInt1, int paramInt2);
    
    public abstract void onLoopStarted(LoopModifier<T> paramLoopModifier, int paramInt1, int paramInt2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.LoopModifier
 * JD-Core Version:    0.7.0.1
 */