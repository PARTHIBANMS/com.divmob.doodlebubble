package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class ActivityRecognitionResultCreator
  implements Parcelable.Creator<ActivityRecognitionResult>
{
  public static final int CONTENT_DESCRIPTION;
  
  static void a(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel, int paramInt)
  {
    int i = b.p(paramParcel);
    b.b(paramParcel, 1, paramActivityRecognitionResult.KP, false);
    b.c(paramParcel, 1000, paramActivityRecognitionResult.getVersionCode());
    b.a(paramParcel, 2, paramActivityRecognitionResult.KQ);
    b.a(paramParcel, 3, paramActivityRecognitionResult.KR);
    b.D(paramParcel, i);
  }
  
  public ActivityRecognitionResult createFromParcel(Parcel paramParcel)
  {
    long l1 = 0L;
    int i = a.o(paramParcel);
    int j = 0;
    ArrayList localArrayList = null;
    long l2 = l1;
    while (paramParcel.dataPosition() < i)
    {
      int k = a.n(paramParcel);
      switch (a.S(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        localArrayList = a.c(paramParcel, k, DetectedActivity.CREATOR);
        break;
      case 1000: 
        j = a.g(paramParcel, k);
        break;
      case 2: 
        l2 = a.h(paramParcel, k);
        break;
      case 3: 
        l1 = a.h(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i) {
      throw new a.a("Overread allowed size end=" + i, paramParcel);
    }
    return new ActivityRecognitionResult(j, localArrayList, l2, l1);
  }
  
  public ActivityRecognitionResult[] newArray(int paramInt)
  {
    return new ActivityRecognitionResult[paramInt];
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResultCreator
 * JD-Core Version:    0.7.0.1
 */