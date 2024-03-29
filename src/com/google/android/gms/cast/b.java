package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import java.util.ArrayList;

public class b
  implements Parcelable.Creator<CastDevice>
{
  static void a(CastDevice paramCastDevice, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.p(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, paramCastDevice.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, paramCastDevice.getDeviceId(), false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 3, paramCastDevice.wD, false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 4, paramCastDevice.getFriendlyName(), false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 5, paramCastDevice.getModelName(), false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 6, paramCastDevice.getDeviceVersion(), false);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 7, paramCastDevice.getServicePort());
    com.google.android.gms.common.internal.safeparcel.b.b(paramParcel, 8, paramCastDevice.getIcons(), false);
    com.google.android.gms.common.internal.safeparcel.b.D(paramParcel, i);
  }
  
  public CastDevice k(Parcel paramParcel)
  {
    int i = 0;
    ArrayList localArrayList = null;
    int j = a.o(paramParcel);
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    int k = 0;
    while (paramParcel.dataPosition() < j)
    {
      int m = a.n(paramParcel);
      switch (a.S(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        k = a.g(paramParcel, m);
        break;
      case 2: 
        str5 = a.m(paramParcel, m);
        break;
      case 3: 
        str4 = a.m(paramParcel, m);
        break;
      case 4: 
        str3 = a.m(paramParcel, m);
        break;
      case 5: 
        str2 = a.m(paramParcel, m);
        break;
      case 6: 
        str1 = a.m(paramParcel, m);
        break;
      case 7: 
        i = a.g(paramParcel, m);
        break;
      case 8: 
        localArrayList = a.c(paramParcel, m, WebImage.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new CastDevice(k, str5, str4, str3, str2, str1, i, localArrayList);
  }
  
  public CastDevice[] y(int paramInt)
  {
    return new CastDevice[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.b
 * JD-Core Version:    0.7.0.1
 */