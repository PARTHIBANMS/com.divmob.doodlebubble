package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class iy
  implements Parcelable.Creator<ir.d>
{
  static void a(ir.d paramd, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    Set localSet = paramd.hB();
    if (localSet.contains(Integer.valueOf(1))) {
      b.c(paramParcel, 1, paramd.getVersionCode());
    }
    if (localSet.contains(Integer.valueOf(2))) {
      b.a(paramParcel, 2, paramd.getFamilyName(), true);
    }
    if (localSet.contains(Integer.valueOf(3))) {
      b.a(paramParcel, 3, paramd.getFormatted(), true);
    }
    if (localSet.contains(Integer.valueOf(4))) {
      b.a(paramParcel, 4, paramd.getGivenName(), true);
    }
    if (localSet.contains(Integer.valueOf(5))) {
      b.a(paramParcel, 5, paramd.getHonorificPrefix(), true);
    }
    if (localSet.contains(Integer.valueOf(6))) {
      b.a(paramParcel, 6, paramd.getHonorificSuffix(), true);
    }
    if (localSet.contains(Integer.valueOf(7))) {
      b.a(paramParcel, 7, paramd.getMiddleName(), true);
    }
    b.D(paramParcel, i);
  }
  
  public ir.d aO(Parcel paramParcel)
  {
    String str1 = null;
    int i = a.o(paramParcel);
    HashSet localHashSet = new HashSet();
    int j = 0;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
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
        localHashSet.add(Integer.valueOf(1));
        break;
      case 2: 
        str6 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(2));
        break;
      case 3: 
        str5 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(3));
        break;
      case 4: 
        str4 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(4));
        break;
      case 5: 
        str3 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(5));
        break;
      case 6: 
        str2 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(6));
        break;
      case 7: 
        str1 = a.m(paramParcel, k);
        localHashSet.add(Integer.valueOf(7));
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new ir.d(localHashSet, j, str6, str5, str4, str3, str2, str1);
  }
  
  public ir.d[] bL(int paramInt)
  {
    return new ir.d[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.iy
 * JD-Core Version:    0.7.0.1
 */