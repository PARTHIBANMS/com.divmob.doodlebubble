package com.google.android.gms.maps;

import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.maps.internal.d.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.d;

class GoogleMap$11
  extends d.a
{
  GoogleMap$11(GoogleMap paramGoogleMap, GoogleMap.InfoWindowAdapter paramInfoWindowAdapter) {}
  
  public b f(d paramd)
  {
    return c.h(this.OZ.getInfoWindow(new Marker(paramd)));
  }
  
  public b g(d paramd)
  {
    return c.h(this.OZ.getInfoContents(new Marker(paramd)));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.11
 * JD-Core Version:    0.7.0.1
 */