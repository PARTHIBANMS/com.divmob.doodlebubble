package com.google.android.gms.maps.model;

import android.os.Parcel;

public class b
{
  static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.p(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, paramCircleOptions.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, paramCircleOptions.getCenter(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 3, paramCircleOptions.getRadius());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 4, paramCircleOptions.getStrokeWidth());
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 5, paramCircleOptions.getStrokeColor());
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 6, paramCircleOptions.getFillColor());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 7, paramCircleOptions.getZIndex());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 8, paramCircleOptions.isVisible());
    com.google.android.gms.common.internal.safeparcel.b.D(paramParcel, i);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.b
 * JD-Core Version:    0.7.0.1
 */