package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.maps.internal.g;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class GoogleMap$1$1
  implements LocationSource.OnLocationChangedListener
{
  GoogleMap$1$1(GoogleMap.1 param1, g paramg) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    try
    {
      this.OO.g(c.h(paramLocation));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.1.1
 * JD-Core Version:    0.7.0.1
 */