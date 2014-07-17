package com.google.android.gms.plus;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.ij;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.il;
import com.google.android.gms.plus.internal.e;
import java.util.HashSet;
import java.util.Set;

public final class Plus
{
  public static final Api API;
  public static final Account AccountApi = new ii(va);
  public static final Moments MomentsApi;
  public static final People PeopleApi;
  public static final a QK = new ij(va);
  public static final Scope SCOPE_PLUS_LOGIN;
  public static final Scope SCOPE_PLUS_PROFILE;
  static final Api.b<e> va = new Plus.1();
  
  static
  {
    API = new Api(va, new Scope[0]);
    SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
    SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
    MomentsApi = new ik(va);
    PeopleApi = new il(va);
  }
  
  public static e a(GoogleApiClient paramGoogleApiClient, Api.b<e> paramb)
  {
    boolean bool1 = true;
    boolean bool2;
    e locale;
    if (paramGoogleApiClient != null)
    {
      bool2 = bool1;
      er.b(bool2, "GoogleApiClient parameter is required.");
      er.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      locale = (e)paramGoogleApiClient.a(paramb);
      if (locale == null) {
        break label56;
      }
    }
    for (;;)
    {
      er.a(bool1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
      return locale;
      bool2 = false;
      break;
      label56:
      bool1 = false;
    }
  }
  
  public static final class PlusOptions
    implements GoogleApiClient.ApiOptions
  {
    final String QL;
    final Set<String> QM;
    
    private PlusOptions()
    {
      this.QL = null;
      this.QM = new HashSet();
    }
    
    private PlusOptions(Builder paramBuilder)
    {
      this.QL = paramBuilder.QL;
      this.QM = paramBuilder.QM;
    }
    
    public static Builder builder()
    {
      return new Builder();
    }
    
    public static final class Builder
    {
      String QL;
      final Set<String> QM = new HashSet();
      
      public Builder addActivityTypes(String... paramVarArgs)
      {
        er.b(paramVarArgs, "activityTypes may not be null.");
        for (int i = 0; i < paramVarArgs.length; i++) {
          this.QM.add(paramVarArgs[i]);
        }
        return this;
      }
      
      public Plus.PlusOptions build()
      {
        return new Plus.PlusOptions(this, null);
      }
      
      public Builder setServerClientId(String paramString)
      {
        this.QL = paramString;
        return this;
      }
    }
  }
  
  public static abstract class a<R extends Result>
    extends a.a<R, e>
  {
    public a(Api.b<e> paramb)
    {
      super();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.Plus
 * JD-Core Version:    0.7.0.1
 */