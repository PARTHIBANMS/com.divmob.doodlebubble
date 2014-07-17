package org.anddev.andengine.sensor.orientation;

import android.hardware.SensorManager;
import java.util.Arrays;
import org.anddev.andengine.sensor.BaseSensorData;

public class OrientationData
  extends BaseSensorData
{
  private final float[] mAccelerometerValues = new float[3];
  private int mMagneticFieldAccuracy;
  private final float[] mMagneticFieldValues = new float[3];
  private final float[] mRotationMatrix = new float[16];
  
  public OrientationData(int paramInt)
  {
    super(3, paramInt);
  }
  
  private void updateOrientation()
  {
    SensorManager.getRotationMatrix(this.mRotationMatrix, null, this.mAccelerometerValues, this.mMagneticFieldValues);
    float[] arrayOfFloat;
    switch (this.mDisplayRotation)
    {
    case 0: 
    default: 
      arrayOfFloat = this.mValues;
      SensorManager.getOrientation(this.mRotationMatrix, arrayOfFloat);
    }
    for (int i = -1 + arrayOfFloat.length;; i--)
    {
      if (i < 0)
      {
        return;
        SensorManager.remapCoordinateSystem(this.mRotationMatrix, 2, 129, this.mRotationMatrix);
        break;
      }
      arrayOfFloat[i] = (57.295776F * arrayOfFloat[i]);
    }
  }
  
  public int getAccelerometerAccuracy()
  {
    return getAccuracy();
  }
  
  public int getMagneticFieldAccuracy()
  {
    return this.mMagneticFieldAccuracy;
  }
  
  public float getPitch()
  {
    return this.mValues[1];
  }
  
  public float getRoll()
  {
    return this.mValues[2];
  }
  
  public float getYaw()
  {
    return this.mValues[0];
  }
  
  public void setAccelerometerAccuracy(int paramInt)
  {
    super.setAccuracy(paramInt);
  }
  
  public void setAccelerometerValues(float[] paramArrayOfFloat)
  {
    System.arraycopy(paramArrayOfFloat, 0, this.mAccelerometerValues, 0, paramArrayOfFloat.length);
    updateOrientation();
  }
  
  @Deprecated
  public void setAccuracy(int paramInt)
  {
    super.setAccuracy(paramInt);
  }
  
  public void setMagneticFieldAccuracy(int paramInt)
  {
    this.mMagneticFieldAccuracy = paramInt;
  }
  
  public void setMagneticFieldValues(float[] paramArrayOfFloat)
  {
    System.arraycopy(paramArrayOfFloat, 0, this.mMagneticFieldValues, 0, paramArrayOfFloat.length);
    updateOrientation();
  }
  
  @Deprecated
  public void setValues(float[] paramArrayOfFloat)
  {
    super.setValues(paramArrayOfFloat);
  }
  
  public String toString()
  {
    return "Orientation: " + Arrays.toString(this.mValues);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.orientation.OrientationData
 * JD-Core Version:    0.7.0.1
 */