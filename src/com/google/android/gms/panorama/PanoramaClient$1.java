package com.google.android.gms.panorama;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

class PanoramaClient$1
  implements a.c<Panorama.PanoramaResult>
{
  PanoramaClient$1(PanoramaClient paramPanoramaClient, PanoramaClient.OnPanoramaInfoLoadedListener paramOnPanoramaInfoLoadedListener) {}
  
  public void a(Panorama.PanoramaResult paramPanoramaResult)
  {
    this.QC.onPanoramaInfoLoaded(paramPanoramaResult.getStatus().dG(), paramPanoramaResult.getViewerIntent());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.panorama.PanoramaClient.1
 * JD-Core Version:    0.7.0.1
 */