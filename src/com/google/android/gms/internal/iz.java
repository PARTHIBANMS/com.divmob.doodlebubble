package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class iz
  implements Parcelable.Creator<ir.f>
{
  static void a(ir.f paramf, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    Set localSet = paramf.hB();
    if (localSet.contains(Integer.valueOf(1))) {
      b.c(paramParcel, 1, paramf.getVersionCode());
    }
    if (localSet.contains(Integer.valueOf(2))) {
      b.a(paramParcel, 2, paramf.getDepartment(), true);
    }
    if (localSet.contains(Integer.valueOf(3))) {
      b.a(paramParcel, 3, paramf.getDescription(), true);
    }
    if (localSet.contains(Integer.valueOf(4))) {
      b.a(paramParcel, 4, paramf.getEndDate(), true);
    }
    if (localSet.contains(Integer.valueOf(5))) {
      b.a(paramParcel, 5, paramf.getLocation(), true);
    }
    if (localSet.contains(Integer.valueOf(6))) {
      b.a(paramParcel, 6, paramf.getName(), true);
    }
    if (localSet.contains(Integer.valueOf(7))) {
      b.a(paramParcel, 7, paramf.isPrimary());
    }
    if (localSet.contains(Integer.valueOf(8))) {
      b.a(paramParcel, 8, paramf.getStartDate(), true);
    }
    if (localSet.contains(Integer.valueOf(9))) {
      b.a(paramParcel, 9, paramf.getTitle(), true);
    }
    if (localSet.contains(Integer.valueOf(10))) {
      b.c(paramParcel, 10, paramf.getType());
    }
    b.D(paramParcel, i);
  }
  
  public ir.f aP(Parcel paramParcel)
  {
    int i = 0;
    String str1 = null;
    int j = a.o(paramParcel);
    HashSet localHashSet = new HashSet();
    String str2 = null;
    boolean bool = false;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    String str7 = null;
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
        localHashSet.add(Integer.valueOf(1));
        break;
      case 2: 
        str7 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(2));
        break;
      case 3: 
        str6 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(3));
        break;
      case 4: 
        str5 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(4));
        break;
      case 5: 
        str4 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(5));
        break;
      case 6: 
        str3 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(6));
        break;
      case 7: 
        bool = a.c(paramParcel, m);
        localHashSet.add(Integer.valueOf(7));
        break;
      case 8: 
        str2 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(8));
        break;
      case 9: 
        str1 = a.m(paramParcel, m);
        localHashSet.add(Integer.valueOf(9));
        break;
      case 10: 
        i = a.g(paramParcel, m);
        localHashSet.add(Integer.valueOf(10));
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ir.f(localHashSet, k, str7, str6, str5, str4, str3, bool, str2, str1, i);
  }
  
  public ir.f[] bM(int paramInt)
  {
    return new ir.f[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.iz
 * JD-Core Version:    0.7.0.1
 */