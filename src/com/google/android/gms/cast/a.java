package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class a
  implements Parcelable.Creator<ApplicationMetadata>
{
  static void a(ApplicationMetadata paramApplicationMetadata, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.c(paramParcel, 1, paramApplicationMetadata.getVersionCode());
    b.a(paramParcel, 2, paramApplicationMetadata.getApplicationId(), false);
    b.a(paramParcel, 3, paramApplicationMetadata.getName(), false);
    b.b(paramParcel, 4, paramApplicationMetadata.getImages(), false);
    b.a(paramParcel, 5, paramApplicationMetadata.wm, false);
    b.a(paramParcel, 6, paramApplicationMetadata.getSenderAppIdentifier(), false);
    b.a(paramParcel, 7, paramApplicationMetadata.cR(), paramInt, false);
    b.D(paramParcel, i);
  }
  
  public ApplicationMetadata j(Parcel paramParcel)
  {
    Uri localUri = null;
    int i = com.google.android.gms.common.internal.safeparcel.a.o(paramParcel);
    int j = 0;
    String str1 = null;
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = null;
    String str2 = null;
    String str3 = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = com.google.android.gms.common.internal.safeparcel.a.n(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.S(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, k);
        break;
      case 1: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, k);
        break;
      case 2: 
        str3 = com.google.android.gms.common.internal.safeparcel.a.m(paramParcel, k);
        break;
      case 3: 
        str2 = com.google.android.gms.common.internal.safeparcel.a.m(paramParcel, k);
        break;
      case 4: 
        localArrayList2 = com.google.android.gms.common.internal.safeparcel.a.c(paramParcel, k, WebImage.CREATOR);
        break;
      case 5: 
        localArrayList1 = com.google.android.gms.common.internal.safeparcel.a.y(paramParcel, k);
        break;
      case 6: 
        str1 = com.google.android.gms.common.internal.safeparcel.a.m(paramParcel, k);
        break;
      case 7: 
        localUri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, Uri.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new ApplicationMetadata(j, str3, str2, localArrayList2, localArrayList1, str1, localUri);
  }
  
  public ApplicationMetadata[] w(int paramInt)
  {
    return new ApplicationMetadata[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.a
 * JD-Core Version:    0.7.0.1
 */