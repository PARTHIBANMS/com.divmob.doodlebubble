package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.l.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.d;

class GoogleMap$9
  extends l.a
{
  GoogleMap$9(GoogleMap paramGoogleMap, GoogleMap.OnMarkerDragListener paramOnMarkerDragListener) {}
  
  public void b(d paramd)
  {
    this.OX.onMarkerDragStart(new Marker(paramd));
  }
  
  public void c(d paramd)
  {
    this.OX.onMarkerDragEnd(new Marker(paramd));
  }
  
  public void d(d paramd)
  {
    this.OX.onMarkerDrag(new Marker(paramd));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.9
 * JD-Core Version:    0.7.0.1
 */