package com.google.android.gms.panorama;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.ih;

public final class Panorama
{
  public static final Api API = new Api(va, new Scope[0]);
  static final Api.b<ih> va = new Panorama.1();
  
  public static PendingResult<PanoramaResult> loadPanoramaInfo(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new Panorama.2(paramUri));
  }
  
  public static PendingResult<PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new Panorama.3(paramUri));
  }
  
  public static abstract interface PanoramaResult
    extends Result
  {
    public abstract Intent getViewerIntent();
  }
  
  public static abstract interface a
    extends Panorama.PanoramaResult
  {}
  
  private static abstract class b
    extends a.a<Panorama.PanoramaResult, ih>
  {
    public b()
    {
      super();
    }
    
    public Panorama.PanoramaResult J(Status paramStatus)
    {
      return new Panorama.b.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.panorama.Panorama
 * JD-Core Version:    0.7.0.1
 */