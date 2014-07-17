package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.BaseDurationModifier;

public abstract class DurationEntityModifier
  extends BaseDurationModifier<IEntity>
  implements IEntityModifier
{
  public DurationEntityModifier(float paramFloat)
  {
    super(paramFloat);
  }
  
  public DurationEntityModifier(float paramFloat, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    super(paramFloat, paramIEntityModifierListener);
  }
  
  protected DurationEntityModifier(DurationEntityModifier paramDurationEntityModifier)
  {
    super(paramDurationEntityModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.DurationEntityModifier
 * JD-Core Version:    0.7.0.1
 */