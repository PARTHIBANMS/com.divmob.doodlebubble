package org.anddev.andengine.util.modifier;

import org.anddev.andengine.util.modifier.util.ModifierUtils;

public class SequenceModifier<T>
  extends BaseModifier<T>
  implements IModifier.IModifierListener<T>
{
  private int mCurrentSubSequenceModifierIndex;
  private final float mDuration;
  private boolean mFinishedCached;
  private float mSecondsElapsed;
  private ISubSequenceModifierListener<T> mSubSequenceModifierListener;
  private final IModifier<T>[] mSubSequenceModifiers;
  
  public SequenceModifier(IModifier.IModifierListener<T> paramIModifierListener, IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    this(null, paramIModifierListener, paramVarArgs);
  }
  
  public SequenceModifier(ISubSequenceModifierListener<T> paramISubSequenceModifierListener, IModifier.IModifierListener<T> paramIModifierListener, IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIModifierListener);
    if (paramVarArgs.length == 0) {
      throw new IllegalArgumentException("pModifiers must not be empty!");
    }
    this.mSubSequenceModifierListener = paramISubSequenceModifierListener;
    this.mSubSequenceModifiers = paramVarArgs;
    this.mDuration = ModifierUtils.getSequenceDurationOfModifier(paramVarArgs);
    paramVarArgs[0].addModifierListener(this);
  }
  
  public SequenceModifier(ISubSequenceModifierListener<T> paramISubSequenceModifierListener, IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    this(paramISubSequenceModifierListener, null, paramVarArgs);
  }
  
  protected SequenceModifier(SequenceModifier<T> paramSequenceModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    this.mDuration = paramSequenceModifier.mDuration;
    IModifier[] arrayOfIModifier1 = paramSequenceModifier.mSubSequenceModifiers;
    this.mSubSequenceModifiers = new IModifier[arrayOfIModifier1.length];
    IModifier[] arrayOfIModifier2 = this.mSubSequenceModifiers;
    for (int i = -1 + arrayOfIModifier2.length;; i--)
    {
      if (i < 0)
      {
        arrayOfIModifier2[0].addModifierListener(this);
        return;
      }
      arrayOfIModifier2[i] = arrayOfIModifier1[i].deepCopy();
    }
  }
  
  public SequenceModifier(IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    this(null, null, paramVarArgs);
  }
  
  public SequenceModifier<T> deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new SequenceModifier(this);
  }
  
  public float getDuration()
  {
    return this.mDuration;
  }
  
  public float getSecondsElapsed()
  {
    return this.mSecondsElapsed;
  }
  
  public ISubSequenceModifierListener<T> getSubSequenceModifierListener()
  {
    return this.mSubSequenceModifierListener;
  }
  
  public void onModifierFinished(IModifier<T> paramIModifier, T paramT)
  {
    if (this.mSubSequenceModifierListener != null) {
      this.mSubSequenceModifierListener.onSubSequenceFinished(paramIModifier, paramT, this.mCurrentSubSequenceModifierIndex);
    }
    paramIModifier.removeModifierListener(this);
    this.mCurrentSubSequenceModifierIndex = (1 + this.mCurrentSubSequenceModifierIndex);
    if (this.mCurrentSubSequenceModifierIndex < this.mSubSequenceModifiers.length)
    {
      this.mSubSequenceModifiers[this.mCurrentSubSequenceModifierIndex].addModifierListener(this);
      return;
    }
    this.mFinished = true;
    this.mFinishedCached = true;
    onModifierFinished(paramT);
  }
  
  public void onModifierStarted(IModifier<T> paramIModifier, T paramT)
  {
    if (this.mCurrentSubSequenceModifierIndex == 0) {
      onModifierStarted(paramT);
    }
    if (this.mSubSequenceModifierListener != null) {
      this.mSubSequenceModifierListener.onSubSequenceStarted(paramIModifier, paramT, this.mCurrentSubSequenceModifierIndex);
    }
  }
  
  public float onUpdate(float paramFloat, T paramT)
  {
    if (this.mFinished) {
      return 0.0F;
    }
    this.mFinishedCached = false;
    for (float f1 = paramFloat;; f1 -= this.mSubSequenceModifiers[this.mCurrentSubSequenceModifierIndex].onUpdate(f1, paramT)) {
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
    IModifier[] arrayOfIModifier;
    if (isFinished())
    {
      this.mSubSequenceModifiers[(-1 + this.mSubSequenceModifiers.length)].removeModifierListener(this);
      this.mCurrentSubSequenceModifierIndex = 0;
      this.mFinished = false;
      this.mSecondsElapsed = 0.0F;
      this.mSubSequenceModifiers[0].addModifierListener(this);
      arrayOfIModifier = this.mSubSequenceModifiers;
    }
    for (int i = -1 + arrayOfIModifier.length;; i--)
    {
      if (i < 0)
      {
        return;
        this.mSubSequenceModifiers[this.mCurrentSubSequenceModifierIndex].removeModifierListener(this);
        break;
      }
      arrayOfIModifier[i].reset();
    }
  }
  
  public void setSubSequenceModifierListener(ISubSequenceModifierListener<T> paramISubSequenceModifierListener)
  {
    this.mSubSequenceModifierListener = paramISubSequenceModifierListener;
  }
  
  public static abstract interface ISubSequenceModifierListener<T>
  {
    public abstract void onSubSequenceFinished(IModifier<T> paramIModifier, T paramT, int paramInt);
    
    public abstract void onSubSequenceStarted(IModifier<T> paramIModifier, T paramT, int paramInt);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.SequenceModifier
 * JD-Core Version:    0.7.0.1
 */