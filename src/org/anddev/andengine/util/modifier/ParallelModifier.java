package org.anddev.andengine.util.modifier;

import java.util.Arrays;

public class ParallelModifier<T>
  extends BaseModifier<T>
  implements IModifier.IModifierListener<T>
{
  private final float mDuration;
  private boolean mFinishedCached;
  private final IModifier<T>[] mModifiers;
  private float mSecondsElapsed;
  
  public ParallelModifier(IModifier.IModifierListener<T> paramIModifierListener, IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    super(paramIModifierListener);
    if (paramVarArgs.length == 0) {
      throw new IllegalArgumentException("pModifiers must not be empty!");
    }
    Arrays.sort(paramVarArgs, MODIFIER_COMPARATOR_DURATION_DESCENDING);
    this.mModifiers = paramVarArgs;
    IModifier<T> localIModifier = paramVarArgs[0];
    this.mDuration = localIModifier.getDuration();
    localIModifier.addModifierListener(this);
  }
  
  protected ParallelModifier(ParallelModifier<T> paramParallelModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    IModifier[] arrayOfIModifier1 = paramParallelModifier.mModifiers;
    this.mModifiers = new IModifier[arrayOfIModifier1.length];
    IModifier[] arrayOfIModifier2 = this.mModifiers;
    for (int i = -1 + arrayOfIModifier2.length;; i--)
    {
      if (i < 0)
      {
        IModifier localIModifier = arrayOfIModifier2[0];
        this.mDuration = localIModifier.getDuration();
        localIModifier.addModifierListener(this);
        return;
      }
      arrayOfIModifier2[i] = arrayOfIModifier1[i].deepCopy();
    }
  }
  
  public ParallelModifier(IModifier<T>... paramVarArgs)
    throws IllegalArgumentException
  {
    this(null, paramVarArgs);
  }
  
  public ParallelModifier<T> deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new ParallelModifier(this);
  }
  
  public float getDuration()
  {
    return this.mDuration;
  }
  
  public float getSecondsElapsed()
  {
    return this.mSecondsElapsed;
  }
  
  public void onModifierFinished(IModifier<T> paramIModifier, T paramT)
  {
    this.mFinished = true;
    this.mFinishedCached = true;
    onModifierFinished(paramT);
  }
  
  public void onModifierStarted(IModifier<T> paramIModifier, T paramT)
  {
    onModifierStarted(paramT);
  }
  
  public float onUpdate(float paramFloat, T paramT)
  {
    if (this.mFinished) {
      return 0.0F;
    }
    IModifier[] arrayOfIModifier = this.mModifiers;
    this.mFinishedCached = false;
    float f1 = paramFloat;
    if ((f1 <= 0.0F) || (this.mFinishedCached))
    {
      this.mFinishedCached = false;
      float f2 = paramFloat - f1;
      this.mSecondsElapsed = (f2 + this.mSecondsElapsed);
      return f2;
    }
    int i = -1 + arrayOfIModifier.length;
    float f3 = 0.0F;
    for (;;)
    {
      if (i < 0)
      {
        f1 -= f3;
        break;
      }
      f3 = Math.max(f3, arrayOfIModifier[i].onUpdate(paramFloat, paramT));
      i--;
    }
  }
  
  public void reset()
  {
    this.mFinished = false;
    this.mSecondsElapsed = 0.0F;
    IModifier[] arrayOfIModifier = this.mModifiers;
    for (int i = -1 + arrayOfIModifier.length;; i--)
    {
      if (i < 0) {
        return;
      }
      arrayOfIModifier[i].reset();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.ParallelModifier
 * JD-Core Version:    0.7.0.1
 */