package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.dv;
import java.io.IOException;
import org.json.JSONObject;

class RemoteMediaPlayer$7
  extends RemoteMediaPlayer.b
{
  RemoteMediaPlayer$7(RemoteMediaPlayer paramRemoteMediaPlayer, GoogleApiClient paramGoogleApiClient, double paramDouble, JSONObject paramJSONObject) {}
  
  protected void a(dq paramdq)
  {
    synchronized (RemoteMediaPlayer.c(this.xk))
    {
      RemoteMediaPlayer.d(this.xk).b(this.xl);
      try
      {
        RemoteMediaPlayer.e(this.xk).a(this.xy, this.xs, this.xp);
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          a(j(new Status(1)));
          RemoteMediaPlayer.d(this.xk).b(null);
        }
        localObject2 = finally;
        throw localObject2;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          a(j(new Status(1)));
          RemoteMediaPlayer.d(this.xk).b(null);
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          a(j(new Status(1)));
          RemoteMediaPlayer.d(this.xk).b(null);
        }
      }
      finally
      {
        RemoteMediaPlayer.d(this.xk).b(null);
      }
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.7
 * JD-Core Version:    0.7.0.1
 */