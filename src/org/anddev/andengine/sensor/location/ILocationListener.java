package org.anddev.andengine.sensor.location;

import android.location.Location;
import android.os.Bundle;

public abstract interface ILocationListener
{
  public abstract void onLocationChanged(Location paramLocation);
  
  public abstract void onLocationLost();
  
  public abstract void onLocationProviderDisabled();
  
  public abstract void onLocationProviderEnabled();
  
  public abstract void onLocationProviderStatusChanged(LocationProviderStatus paramLocationProviderStatus, Bundle paramBundle);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.sensor.location.ILocationListener
 * JD-Core Version:    0.7.0.1
 */