package org.anddev.andengine.util.modifier;

public abstract class BaseDoubleValueChangeModifier<T>
  extends BaseSingleValueChangeModifier<T>
{
  private float mValueChangeBPerSecond;
  
  public BaseDoubleValueChangeModifier(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, null);
  }
  
  public BaseDoubleValueChangeModifier(float paramFloat1, float paramFloat2, float paramFloat3, IModifier.IModifierListener<T> paramIModifierListener)
  {
    super(paramFloat1, paramFloat2, paramIModifierListener);
    this.mValueChangeBPerSecond = (paramFloat3 / paramFloat1);
  }
  
  protected BaseDoubleValueChangeModifier(BaseDoubleValueChangeModifier<T> paramBaseDoubleValueChangeModifier)
  {
    super(paramBaseDoubleValueChangeModifier);
    this.mValueChangeBPerSecond = paramBaseDoubleValueChangeModifier.mValueChangeBPerSecond;
  }
  
  protected void onChangeValue(float paramFloat1, T paramT, float paramFloat2)
  {
    onChangeValues(paramFloat1, paramT, paramFloat2, paramFloat1 * this.mValueChangeBPerSecond);
  }
  
  protected abstract void onChangeValues(float paramFloat1, T paramT, float paramFloat2, float paramFloat3);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.BaseDoubleValueChangeModifier
 * JD-Core Version:    0.7.0.1
 */