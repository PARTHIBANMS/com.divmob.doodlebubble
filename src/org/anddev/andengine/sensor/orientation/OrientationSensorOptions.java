package org.anddev.andengine.sensor.orientation;

import org.anddev.andengine.sensor.SensorDelay;

public class OrientationSensorOptions
{
  final SensorDelay mSensorDelay;
  
  public OrientationSensorOptions(SensorDelay paramSensorDelay)
  {
    this.mSensorDelay = paramSensorDelay;
  }
  
  public SensorDelay getSensorDelay()
  {
    return this.mSensorDelay;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.orientation.OrientationSensorOptions
 * JD-Core Version:    0.7.0.1
 */