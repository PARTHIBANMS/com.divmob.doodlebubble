package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.Plus.a;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;

public final class ik
  implements Moments
{
  private final Api.b<e> Rw;
  
  public ik(Api.b<e> paramb)
  {
    this.Rw = paramb;
  }
  
  public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new ik.1(this, this.Rw));
  }
  
  public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    return paramGoogleApiClient.a(new ik.2(this, this.Rw, paramInt, paramString1, paramUri, paramString2, paramString3));
  }
  
  public PendingResult<Status> remove(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new ik.4(this, this.Rw, paramString));
  }
  
  public PendingResult<Status> write(GoogleApiClient paramGoogleApiClient, Moment paramMoment)
  {
    return paramGoogleApiClient.b(new ik.3(this, this.Rw, paramMoment));
  }
  
  private static abstract class a
    extends Plus.a<Moments.LoadMomentsResult>
  {
    a(Api.b<e> paramb)
    {
      super();
    }
    
    public Moments.LoadMomentsResult M(Status paramStatus)
    {
      return new ik.a.1(this, paramStatus);
    }
  }
  
  private static abstract class b
    extends Plus.a<Status>
  {
    b(Api.b<e> paramb)
    {
      super();
    }
    
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static abstract class c
    extends Plus.a<Status>
  {
    c(Api.b<e> paramb)
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
 * Qualified Name:     com.google.android.gms.internal.ik
 * JD-Core Version:    0.7.0.1
 */