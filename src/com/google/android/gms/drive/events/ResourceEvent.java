package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public abstract interface ResourceEvent
  extends DriveEvent
{
  public abstract DriveId getDriveId();
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.events.ResourceEvent
 * JD-Core Version:    0.7.0.1
 */