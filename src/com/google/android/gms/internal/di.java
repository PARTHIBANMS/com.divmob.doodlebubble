package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class di
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<di> CREATOR = new di.1();
  private String mValue;
  private String uS;
  private String uT;
  
  @Deprecated
  public di() {}
  
  @Deprecated
  di(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public di(String paramString1, String paramString2, String paramString3)
  {
    this.uS = paramString1;
    this.uT = paramString2;
    this.mValue = paramString3;
  }
  
  @Deprecated
  private void readFromParcel(Parcel paramParcel)
  {
    this.uS = paramParcel.readString();
    this.uT = paramParcel.readString();
    this.mValue = paramParcel.readString();
  }
  
  @Deprecated
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return this.uS;
  }
  
  public String getValue()
  {
    return this.mValue;
  }
  
  @Deprecated
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.uS);
    paramParcel.writeString(this.uT);
    paramParcel.writeString(this.mValue);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.di
 * JD-Core Version:    0.7.0.1
 */