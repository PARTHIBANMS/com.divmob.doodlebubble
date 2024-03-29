package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<UserAddressRequest> CREATOR = new a();
  List<CountrySpecification> Ky;
  private final int wj;
  
  UserAddressRequest()
  {
    this.wj = 1;
  }
  
  UserAddressRequest(int paramInt, List<CountrySpecification> paramList)
  {
    this.wj = paramInt;
    this.Ky = paramList;
  }
  
  public static Builder newBuilder()
  {
    UserAddressRequest localUserAddressRequest = new UserAddressRequest();
    localUserAddressRequest.getClass();
    return new Builder(null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getVersionCode()
  {
    return this.wj;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
  
  public final class Builder
  {
    private Builder() {}
    
    public Builder addAllowedCountrySpecification(CountrySpecification paramCountrySpecification)
    {
      if (UserAddressRequest.this.Ky == null) {
        UserAddressRequest.this.Ky = new ArrayList();
      }
      UserAddressRequest.this.Ky.add(paramCountrySpecification);
      return this;
    }
    
    public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> paramCollection)
    {
      if (UserAddressRequest.this.Ky == null) {
        UserAddressRequest.this.Ky = new ArrayList();
      }
      UserAddressRequest.this.Ky.addAll(paramCollection);
      return this;
    }
    
    public UserAddressRequest build()
    {
      if (UserAddressRequest.this.Ky != null) {
        UserAddressRequest.this.Ky = Collections.unmodifiableList(UserAddressRequest.this.Ky);
      }
      return UserAddressRequest.this;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.identity.intents.UserAddressRequest
 * JD-Core Version:    0.7.0.1
 */