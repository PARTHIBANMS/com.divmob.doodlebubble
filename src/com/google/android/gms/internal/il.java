package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.Plus.a;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import java.util.Collection;

public final class il
  implements People
{
  private final Api.b<e> Rw;
  
  public il(Api.b<e> paramb)
  {
    this.Rw = paramb;
  }
  
  public Person getCurrentPerson(GoogleApiClient paramGoogleApiClient)
  {
    return Plus.a(paramGoogleApiClient, this.Rw).getCurrentPerson();
  }
  
  public PendingResult<People.LoadPeopleResult> load(GoogleApiClient paramGoogleApiClient, Collection<String> paramCollection)
  {
    return paramGoogleApiClient.a(new il.4(this, this.Rw, paramCollection));
  }
  
  public PendingResult<People.LoadPeopleResult> load(GoogleApiClient paramGoogleApiClient, String... paramVarArgs)
  {
    return paramGoogleApiClient.a(new il.5(this, this.Rw, paramVarArgs));
  }
  
  public PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new il.3(this, this.Rw));
  }
  
  public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString)
  {
    return paramGoogleApiClient.a(new il.1(this, this.Rw, paramInt, paramString));
  }
  
  public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new il.2(this, this.Rw, paramString));
  }
  
  private static abstract class a
    extends Plus.a<People.LoadPeopleResult>
  {
    a(Api.b<e> paramb)
    {
      super();
    }
    
    public People.LoadPeopleResult N(Status paramStatus)
    {
      return new il.a.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.il
 * JD-Core Version:    0.7.0.1
 */