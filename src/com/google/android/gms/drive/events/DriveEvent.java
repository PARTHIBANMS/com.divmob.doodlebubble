package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract interface DriveEvent
  extends SafeParcelable
{
  public static final int TYPE_CHANGE = 1;
  
  public abstract int getType();
  
  public static abstract interface Listener<E extends DriveEvent>
  {
    public abstract void onEvent(E paramE);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.events.DriveEvent
 * JD-Core Version:    0.7.0.1
 */