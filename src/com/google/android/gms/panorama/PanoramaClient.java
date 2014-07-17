package com.google.android.gms.panorama;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ih;

public class PanoramaClient
  implements GooglePlayServicesClient
{
  private final ih QB;
  
  public PanoramaClient(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.QB = new ih(paramContext, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public void connect()
  {
    this.QB.connect();
  }
  
  public void disconnect()
  {
    this.QB.disconnect();
  }
  
  public boolean isConnected()
  {
    return this.QB.isConnected();
  }
  
  public boolean isConnecting()
  {
    return this.QB.isConnecting();
  }
  
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return this.QB.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return this.QB.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public void loadPanoramaInfo(OnPanoramaInfoLoadedListener paramOnPanoramaInfoLoadedListener, Uri paramUri)
  {
    this.QB.a(new PanoramaClient.1(this, paramOnPanoramaInfoLoadedListener), paramUri, false);
  }
  
  public void loadPanoramaInfoAndGrantAccess(OnPanoramaInfoLoadedListener paramOnPanoramaInfoLoadedListener, Uri paramUri)
  {
    this.QB.a(new PanoramaClient.2(this, paramOnPanoramaInfoLoadedListener), paramUri, true);
  }
  
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.QB.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.QB.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.QB.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.QB.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public static abstract interface OnPanoramaInfoLoadedListener
  {
    public abstract void onPanoramaInfoLoaded(ConnectionResult paramConnectionResult, Intent paramIntent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.panorama.PanoramaClient
 * JD-Core Version:    0.7.0.1
 */