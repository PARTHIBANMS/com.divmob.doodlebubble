package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class aj
  implements Parcelable.Creator<RemoveEventListenerRequest>
{
  static void a(RemoveEventListenerRequest paramRemoveEventListenerRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.c(paramParcel, 1, paramRemoveEventListenerRequest.wj);
    b.a(paramParcel, 2, paramRemoveEventListenerRequest.CS, paramInt, false);
    b.c(paramParcel, 3, paramRemoveEventListenerRequest.Dm);
    b.D(paramParcel, i);
  }
  
  public RemoveEventListenerRequest X(Parcel paramParcel)
  {
    int i = 0;
    int j = a.o(paramParcel);
    Object localObject1 = null;
    int k = 0;
    if (paramParcel.dataPosition() < j)
    {
      int m = a.n(paramParcel);
      int n;
      Object localObject2;
      int i1;
      switch (a.S(m))
      {
      default: 
        a.b(paramParcel, m);
        n = i;
        localObject2 = localObject1;
        i1 = k;
      }
      for (;;)
      {
        k = i1;
        localObject1 = localObject2;
        i = n;
        break;
        int i2 = a.g(paramParcel, m);
        int i3 = i;
        localObject2 = localObject1;
        i1 = i2;
        n = i3;
        continue;
        DriveId localDriveId = (DriveId)a.a(paramParcel, m, DriveId.CREATOR);
        i1 = k;
        n = i;
        localObject2 = localDriveId;
        continue;
        n = a.g(paramParcel, m);
        localObject2 = localObject1;
        i1 = k;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new RemoveEventListenerRequest(k, localObject1, i);
  }
  
  public RemoveEventListenerRequest[] aC(int paramInt)
  {
    return new RemoveEventListenerRequest[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.aj
 * JD-Core Version:    0.7.0.1
 */