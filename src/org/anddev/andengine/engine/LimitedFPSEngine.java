package org.anddev.andengine.engine;

import org.anddev.andengine.engine.options.EngineOptions;

public class LimitedFPSEngine
  extends Engine
{
  private final long mPreferredFrameLengthNanoseconds;
  
  public LimitedFPSEngine(EngineOptions paramEngineOptions, int paramInt)
  {
    super(paramEngineOptions);
    this.mPreferredFrameLengthNanoseconds = (1000000000L / paramInt);
  }
  
  public void onUpdate(long paramLong)
    throws InterruptedException
  {
    long l = this.mPreferredFrameLengthNanoseconds - paramLong;
    if (l <= 0L)
    {
      super.onUpdate(paramLong);
      return;
    }
    Thread.sleep((int)(l / 1000000L));
    super.onUpdate(l + paramLong);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.LimitedFPSEngine
 * JD-Core Version:    0.7.0.1
 */