package org.anddev.andengine.sensor.accelerometer;

class AccelerometerData$4
  implements AccelerometerData.IAxisSwap
{
  public void swapAxis(float[] paramArrayOfFloat)
  {
    float f1 = -paramArrayOfFloat[1];
    float f2 = -paramArrayOfFloat[0];
    paramArrayOfFloat[0] = f1;
    paramArrayOfFloat[1] = f2;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.accelerometer.AccelerometerData.4
 * JD-Core Version:    0.7.0.1
 */