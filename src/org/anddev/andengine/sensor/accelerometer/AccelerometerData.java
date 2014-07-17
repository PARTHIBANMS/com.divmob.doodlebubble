package org.anddev.andengine.sensor.accelerometer;

import java.util.Arrays;
import org.anddev.andengine.sensor.BaseSensorData;

public class AccelerometerData
  extends BaseSensorData
{
  private static final IAxisSwap[] AXISSWAPS = new IAxisSwap[4];
  
  static
  {
    AXISSWAPS[0] = new AccelerometerData.1();
    AXISSWAPS[1] = new AccelerometerData.2();
    AXISSWAPS[2] = new AccelerometerData.3();
    AXISSWAPS[3] = new AccelerometerData.4();
  }
  
  public AccelerometerData(int paramInt)
  {
    super(3, paramInt);
  }
  
  public float getX()
  {
    return this.mValues[0];
  }
  
  public float getY()
  {
    return this.mValues[1];
  }
  
  public float getZ()
  {
    return this.mValues[2];
  }
  
  public void setValues(float[] paramArrayOfFloat)
  {
    super.setValues(paramArrayOfFloat);
    AXISSWAPS[this.mDisplayRotation].swapAxis(this.mValues);
  }
  
  public void setX(float paramFloat)
  {
    this.mValues[0] = paramFloat;
  }
  
  public void setY(float paramFloat)
  {
    this.mValues[1] = paramFloat;
  }
  
  public void setZ(float paramFloat)
  {
    this.mValues[2] = paramFloat;
  }
  
  public String toString()
  {
    return "Accelerometer: " + Arrays.toString(this.mValues);
  }
  
  private static abstract interface IAxisSwap
  {
    public abstract void swapAxis(float[] paramArrayOfFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.accelerometer.AccelerometerData
 * JD-Core Version:    0.7.0.1
 */