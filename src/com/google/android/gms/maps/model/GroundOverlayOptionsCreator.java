package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class GroundOverlayOptionsCreator
  implements Parcelable.Creator<GroundOverlayOptions>
{
  public static final int CONTENT_DESCRIPTION;
  
  static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.c(paramParcel, 1, paramGroundOverlayOptions.getVersionCode());
    b.a(paramParcel, 2, paramGroundOverlayOptions.he(), false);
    b.a(paramParcel, 3, paramGroundOverlayOptions.getLocation(), paramInt, false);
    b.a(paramParcel, 4, paramGroundOverlayOptions.getWidth());
    b.a(paramParcel, 5, paramGroundOverlayOptions.getHeight());
    b.a(paramParcel, 6, paramGroundOverlayOptions.getBounds(), paramInt, false);
    b.a(paramParcel, 7, paramGroundOverlayOptions.getBearing());
    b.a(paramParcel, 8, paramGroundOverlayOptions.getZIndex());
    b.a(paramParcel, 9, paramGroundOverlayOptions.isVisible());
    b.a(paramParcel, 10, paramGroundOverlayOptions.getTransparency());
    b.a(paramParcel, 11, paramGroundOverlayOptions.getAnchorU());
    b.a(paramParcel, 12, paramGroundOverlayOptions.getAnchorV());
    b.D(paramParcel, i);
  }
  
  public GroundOverlayOptions createFromParcel(Parcel paramParcel)
  {
    int i = a.o(paramParcel);
    int j = 0;
    IBinder localIBinder = null;
    LatLng localLatLng = null;
    float f1 = 0.0F;
    float f2 = 0.0F;
    LatLngBounds localLatLngBounds = null;
    float f3 = 0.0F;
    float f4 = 0.0F;
    boolean bool = false;
    float f5 = 0.0F;
    float f6 = 0.0F;
    float f7 = 0.0F;
    while (paramParcel.dataPosition() < i)
    {
      int k = a.n(paramParcel);
      switch (a.S(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        j = a.g(paramParcel, k);
        break;
      case 2: 
        localIBinder = a.n(paramParcel, k);
        break;
      case 3: 
        localLatLng = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        f1 = a.j(paramParcel, k);
        break;
      case 5: 
        f2 = a.j(paramParcel, k);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)a.a(paramParcel, k, LatLngBounds.CREATOR);
        break;
      case 7: 
        f3 = a.j(paramParcel, k);
        break;
      case 8: 
        f4 = a.j(paramParcel, k);
        break;
      case 9: 
        bool = a.c(paramParcel, k);
        break;
      case 10: 
        f5 = a.j(paramParcel, k);
        break;
      case 11: 
        f6 = a.j(paramParcel, k);
        break;
      case 12: 
        f7 = a.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new GroundOverlayOptions(j, localIBinder, localLatLng, f1, f2, localLatLngBounds, f3, f4, bool, f5, f6, f7);
  }
  
  public GroundOverlayOptions[] newArray(int paramInt)
  {
    return new GroundOverlayOptions[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptionsCreator
 * JD-Core Version:    0.7.0.1
 */