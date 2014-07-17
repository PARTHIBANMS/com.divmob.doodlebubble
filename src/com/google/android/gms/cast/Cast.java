package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.er;
import java.io.IOException;

public final class Cast
{
  public static final Api API = new Api(va, new Scope[0]);
  public static final CastApi CastApi = new Cast.CastApi.a();
  public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
  public static final int MAX_MESSAGE_LENGTH = 65536;
  public static final int MAX_NAMESPACE_LENGTH = 128;
  static final Api.b<dq> va = new Cast.1();
  
  public static abstract interface ApplicationConnectionResult
    extends Result
  {
    public abstract ApplicationMetadata getApplicationMetadata();
    
    public abstract String getApplicationStatus();
    
    public abstract String getSessionId();
    
    public abstract boolean getWasLaunched();
  }
  
  public static abstract interface CastApi
  {
    public abstract ApplicationMetadata getApplicationMetadata(GoogleApiClient paramGoogleApiClient)
      throws IllegalStateException;
    
    public abstract String getApplicationStatus(GoogleApiClient paramGoogleApiClient)
      throws IllegalStateException;
    
    public abstract double getVolume(GoogleApiClient paramGoogleApiClient)
      throws IllegalStateException;
    
    public abstract boolean isMute(GoogleApiClient paramGoogleApiClient)
      throws IllegalStateException;
    
    public abstract PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient);
    
    public abstract PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString);
    
    public abstract PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2);
    
    public abstract PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString);
    
    public abstract PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean);
    
    public abstract PendingResult<Status> leaveApplication(GoogleApiClient paramGoogleApiClient);
    
    public abstract void removeMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString)
      throws IOException, IllegalArgumentException;
    
    public abstract void requestStatus(GoogleApiClient paramGoogleApiClient)
      throws IOException, IllegalStateException;
    
    public abstract PendingResult<Status> sendMessage(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2);
    
    public abstract void setMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString, Cast.MessageReceivedCallback paramMessageReceivedCallback)
      throws IOException, IllegalStateException;
    
    public abstract void setMute(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
      throws IOException, IllegalStateException;
    
    public abstract void setVolume(GoogleApiClient paramGoogleApiClient, double paramDouble)
      throws IOException, IllegalArgumentException, IllegalStateException;
    
    public abstract PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient);
    
    public abstract PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient, String paramString);
    
    public static final class a
      implements Cast.CastApi
    {
      public ApplicationMetadata getApplicationMetadata(GoogleApiClient paramGoogleApiClient)
        throws IllegalStateException
      {
        return ((dq)paramGoogleApiClient.a(Cast.va)).getApplicationMetadata();
      }
      
      public String getApplicationStatus(GoogleApiClient paramGoogleApiClient)
        throws IllegalStateException
      {
        return ((dq)paramGoogleApiClient.a(Cast.va)).getApplicationStatus();
      }
      
      public double getVolume(GoogleApiClient paramGoogleApiClient)
        throws IllegalStateException
      {
        return ((dq)paramGoogleApiClient.a(Cast.va)).da();
      }
      
      public boolean isMute(GoogleApiClient paramGoogleApiClient)
        throws IllegalStateException
      {
        return ((dq)paramGoogleApiClient.a(Cast.va)).isMute();
      }
      
      public PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.6(this));
      }
      
      public PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.5(this, paramString));
      }
      
      public PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.4(this, paramString1, paramString2));
      }
      
      public PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.2(this, paramString));
      }
      
      public PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.3(this, paramString, paramBoolean));
      }
      
      public PendingResult<Status> leaveApplication(GoogleApiClient paramGoogleApiClient)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.7(this));
      }
      
      public void removeMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString)
        throws IOException, IllegalArgumentException
      {
        try
        {
          ((dq)paramGoogleApiClient.a(Cast.va)).Q(paramString);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new IOException("service error");
        }
      }
      
      public void requestStatus(GoogleApiClient paramGoogleApiClient)
        throws IOException, IllegalStateException
      {
        try
        {
          ((dq)paramGoogleApiClient.a(Cast.va)).cZ();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new IOException("service error");
        }
      }
      
      public PendingResult<Status> sendMessage(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.1(this, paramString1, paramString2));
      }
      
      public void setMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString, Cast.MessageReceivedCallback paramMessageReceivedCallback)
        throws IOException, IllegalStateException
      {
        try
        {
          ((dq)paramGoogleApiClient.a(Cast.va)).a(paramString, paramMessageReceivedCallback);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new IOException("service error");
        }
      }
      
      public void setMute(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
        throws IOException, IllegalStateException
      {
        try
        {
          ((dq)paramGoogleApiClient.a(Cast.va)).t(paramBoolean);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new IOException("service error");
        }
      }
      
      public void setVolume(GoogleApiClient paramGoogleApiClient, double paramDouble)
        throws IOException, IllegalArgumentException, IllegalStateException
      {
        try
        {
          ((dq)paramGoogleApiClient.a(Cast.va)).a(paramDouble);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new IOException("service error");
        }
      }
      
      public PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.8(this));
      }
      
      public PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient, String paramString)
      {
        return paramGoogleApiClient.b(new Cast.CastApi.a.9(this, paramString));
      }
    }
  }
  
  public static final class CastOptions
    implements GoogleApiClient.ApiOptions
  {
    final CastDevice wv;
    final Cast.Listener ww;
    private final int wx;
    
    private CastOptions(Builder paramBuilder)
    {
      this.wv = paramBuilder.wy;
      this.ww = paramBuilder.wz;
      this.wx = Builder.a(paramBuilder);
    }
    
    public static Builder builder(CastDevice paramCastDevice, Cast.Listener paramListener)
    {
      return new Builder(paramCastDevice, paramListener, null);
    }
    
    public static final class Builder
    {
      private int wA;
      CastDevice wy;
      Cast.Listener wz;
      
      private Builder(CastDevice paramCastDevice, Cast.Listener paramListener)
      {
        er.b(paramCastDevice, "CastDevice parameter cannot be null");
        er.b(paramListener, "CastListener parameter cannot be null");
        this.wy = paramCastDevice;
        this.wz = paramListener;
        this.wA = 0;
      }
      
      public Cast.CastOptions build()
      {
        return new Cast.CastOptions(this, null);
      }
      
      public Builder setVerboseLoggingEnabled(boolean paramBoolean)
      {
        if (paramBoolean)
        {
          this.wA = (0x1 | this.wA);
          return this;
        }
        this.wA = (0xFFFFFFFE & this.wA);
        return this;
      }
    }
  }
  
  public static abstract class Listener
  {
    public void onApplicationDisconnected(int paramInt) {}
    
    public void onApplicationStatusChanged() {}
    
    public void onVolumeChanged() {}
  }
  
  public static abstract interface MessageReceivedCallback
  {
    public abstract void onMessageReceived(CastDevice paramCastDevice, String paramString1, String paramString2);
  }
  
  protected static abstract class a<R extends Result>
    extends a.a<R, dq>
    implements PendingResult<R>
  {
    public a()
    {
      super();
    }
    
    public void c(int paramInt, String paramString)
    {
      a(d(new Status(paramInt, paramString, null)));
    }
    
    public void x(int paramInt)
    {
      a(d(new Status(paramInt)));
    }
  }
  
  private static abstract class b
    extends Cast.a<Status>
  {
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static abstract class c
    extends Cast.a<Cast.ApplicationConnectionResult>
  {
    public Cast.ApplicationConnectionResult h(Status paramStatus)
    {
      return new Cast.c.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.Cast
 * JD-Core Version:    0.7.0.1
 */