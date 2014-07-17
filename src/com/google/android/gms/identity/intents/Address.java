package com.google.android.gms.identity.intents;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.hc;

public final class Address
{
  public static final Api API = new Api(va, new Scope[0]);
  static final Api.b<hc> va = new Address.1();
  
  public static void requestUserAddress(GoogleApiClient paramGoogleApiClient, UserAddressRequest paramUserAddressRequest, int paramInt)
  {
    paramGoogleApiClient.a(new Address.2(paramUserAddressRequest, paramInt));
  }
  
  public static final class AddressOptions
    implements GoogleApiClient.ApiOptions
  {
    public final int theme;
    
    public AddressOptions()
    {
      this.theme = 0;
    }
    
    public AddressOptions(int paramInt)
    {
      this.theme = paramInt;
    }
  }
  
  private static abstract class a
    extends a.a<Status, hc>
  {
    public a()
    {
      super();
    }
    
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.identity.intents.Address
 * JD-Core Version:    0.7.0.1
 */