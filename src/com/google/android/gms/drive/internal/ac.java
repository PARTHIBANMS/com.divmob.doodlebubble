package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ConflictEvent;

public class ac
  implements Parcelable.Creator<OnEventResponse>
{
  static void a(OnEventResponse paramOnEventResponse, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.c(paramParcel, 1, paramOnEventResponse.wj);
    b.c(paramParcel, 2, paramOnEventResponse.Dm);
    b.a(paramParcel, 3, paramOnEventResponse.Eb, paramInt, false);
    b.a(paramParcel, 4, paramOnEventResponse.Ec, paramInt, false);
    b.D(paramParcel, i);
  }
  
  public OnEventResponse Q(Parcel paramParcel)
  {
    Object localObject1 = null;
    int i = 0;
    int j = a.o(paramParcel);
    Object localObject2 = null;
    int k = 0;
    if (paramParcel.dataPosition() < j)
    {
      int m = a.n(paramParcel);
      Object localObject3;
      Object localObject4;
      int n;
      int i1;
      switch (a.S(m))
      {
      default: 
        a.b(paramParcel, m);
        localObject3 = localObject1;
        localObject4 = localObject2;
        n = i;
        i1 = k;
      }
      for (;;)
      {
        k = i1;
        i = n;
        localObject2 = localObject4;
        localObject1 = localObject3;
        break;
        int i3 = a.g(paramParcel, m);
        Object localObject7 = localObject1;
        localObject4 = localObject2;
        n = i;
        i1 = i3;
        localObject3 = localObject7;
        continue;
        int i2 = a.g(paramParcel, m);
        i1 = k;
        Object localObject6 = localObject2;
        n = i2;
        localObject3 = localObject1;
        localObject4 = localObject6;
        continue;
        ChangeEvent localChangeEvent = (ChangeEvent)a.a(paramParcel, m, ChangeEvent.CREATOR);
        n = i;
        i1 = k;
        Object localObject5 = localObject1;
        localObject4 = localChangeEvent;
        localObject3 = localObject5;
        continue;
        localObject3 = (ConflictEvent)a.a(paramParcel, m, ConflictEvent.CREATOR);
        localObject4 = localObject2;
        n = i;
        i1 = k;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new OnEventResponse(k, i, localObject2, localObject1);
  }
  
  public OnEventResponse[] av(int paramInt)
  {
    return new OnEventResponse[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.ac
 * JD-Core Version:    0.7.0.1
 */