package org.anddev.andengine.sensor;

import java.util.Arrays;

public class BaseSensorData
{
  protected int mAccuracy;
  protected int mDisplayRotation;
  protected final float[] mValues;
  
  public BaseSensorData(int paramInt1, int paramInt2)
  {
    this.mValues = new float[paramInt1];
    this.mDisplayRotation = paramInt2;
  }
  
  public int getAccuracy()
  {
    return this.mAccuracy;
  }
  
  public float[] getValues()
  {
    return this.mValues;
  }
  
  public void setAccuracy(int paramInt)
  {
    this.mAccuracy = paramInt;
  }
  
  public void setValues(float[] paramArrayOfFloat)
  {
    System.arraycopy(paramArrayOfFloat, 0, this.mValues, 0, paramArrayOfFloat.length);
  }
  
  public String toString()
  {
    return "Values: " + Arrays.toString(this.mValues);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.BaseSensorData
 * JD-Core Version:    0.7.0.1
 */