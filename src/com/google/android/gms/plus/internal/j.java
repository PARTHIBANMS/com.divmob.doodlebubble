package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class j
  implements Parcelable.Creator<h>
{
  static void a(h paramh, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.a(paramParcel, 1, paramh.getAccountName(), false);
    b.c(paramParcel, 1000, paramh.getVersionCode());
    b.a(paramParcel, 2, paramh.hq(), false);
    b.a(paramParcel, 3, paramh.hr(), false);
    b.a(paramParcel, 4, paramh.hs(), false);
    b.a(paramParcel, 5, paramh.ht(), false);
    b.a(paramParcel, 6, paramh.hu(), false);
    b.a(paramParcel, 7, paramh.hv(), false);
    b.a(paramParcel, 8, paramh.hw(), false);
    b.a(paramParcel, 9, paramh.hx(), paramInt, false);
    b.D(paramParcel, i);
  }
  
  public h aF(Parcel paramParcel)
  {
    PlusCommonExtras localPlusCommonExtras = null;
    int i = a.o(paramParcel);
    int j = 0;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String[] arrayOfString1 = null;
    String[] arrayOfString2 = null;
    String[] arrayOfString3 = null;
    String str5 = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = a.n(paramParcel);
      switch (a.S(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        str5 = a.m(paramParcel, k);
        break;
      case 1000: 
        j = a.g(paramParcel, k);
        break;
      case 2: 
        arrayOfString3 = a.x(paramParcel, k);
        break;
      case 3: 
        arrayOfString2 = a.x(paramParcel, k);
        break;
      case 4: 
        arrayOfString1 = a.x(paramParcel, k);
        break;
      case 5: 
        str4 = a.m(paramParcel, k);
        break;
      case 6: 
        str3 = a.m(paramParcel, k);
        break;
      case 7: 
        str2 = a.m(paramParcel, k);
        break;
      case 8: 
        str1 = a.m(paramParcel, k);
        break;
      case 9: 
        localPlusCommonExtras = (PlusCommonExtras)a.a(paramParcel, k, PlusCommonExtras.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new h(j, str5, arrayOfString3, arrayOfString2, arrayOfString1, str4, str3, str2, str1, localPlusCommonExtras);
  }
  
  public h[] bC(int paramInt)
  {
    return new h[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.internal.j
 * JD-Core Version:    0.7.0.1
 */