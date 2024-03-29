package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class CircleOptionsCreator
  implements Parcelable.Creator<CircleOptions>
{
  public static final int CONTENT_DESCRIPTION;
  
  static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.c(paramParcel, 1, paramCircleOptions.getVersionCode());
    b.a(paramParcel, 2, paramCircleOptions.getCenter(), paramInt, false);
    b.a(paramParcel, 3, paramCircleOptions.getRadius());
    b.a(paramParcel, 4, paramCircleOptions.getStrokeWidth());
    b.c(paramParcel, 5, paramCircleOptions.getStrokeColor());
    b.c(paramParcel, 6, paramCircleOptions.getFillColor());
    b.a(paramParcel, 7, paramCircleOptions.getZIndex());
    b.a(paramParcel, 8, paramCircleOptions.isVisible());
    b.D(paramParcel, i);
  }
  
  public CircleOptions createFromParcel(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool = false;
    int i = a.o(paramParcel);
    LatLng localLatLng = null;
    double d = 0.0D;
    int j = 0;
    int k = 0;
    float f2 = 0.0F;
    int m = 0;
    while (paramParcel.dataPosition() < i)
    {
      int n = a.n(paramParcel);
      switch (a.S(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        m = a.g(paramParcel, n);
        break;
      case 2: 
        localLatLng = (LatLng)a.a(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        d = a.k(paramParcel, n);
        break;
      case 4: 
        f2 = a.j(paramParcel, n);
        break;
      case 5: 
        k = a.g(paramParcel, n);
        break;
      case 6: 
        j = a.g(paramParcel, n);
        break;
      case 7: 
        f1 = a.j(paramParcel, n);
        break;
      case 8: 
        bool = a.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new CircleOptions(m, localLatLng, d, f2, k, j, f1, bool);
  }
  
  public CircleOptions[] newArray(int paramInt)
  {
    return new CircleOptions[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptionsCreator
 * JD-Core Version:    0.7.0.1
 */