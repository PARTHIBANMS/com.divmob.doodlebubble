package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.ILocationSourceDelegate.a;
import com.google.android.gms.maps.internal.g;

class GoogleMap$1
  extends ILocationSourceDelegate.a
{
  GoogleMap$1(GoogleMap paramGoogleMap, LocationSource paramLocationSource) {}
  
  public void activate(g paramg)
  {
    this.OM.activate(new GoogleMap.1.1(this, paramg));
  }
  
  public void deactivate()
  {
    this.OM.deactivate();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.1
 * JD-Core Version:    0.7.0.1
 */