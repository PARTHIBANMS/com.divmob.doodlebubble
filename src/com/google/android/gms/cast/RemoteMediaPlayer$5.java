package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.dv;
import java.io.IOException;
import org.json.JSONObject;

class RemoteMediaPlayer$5
  extends RemoteMediaPlayer.b
{
  RemoteMediaPlayer$5(RemoteMediaPlayer paramRemoteMediaPlayer, GoogleApiClient paramGoogleApiClient, JSONObject paramJSONObject) {}
  
  protected void a(dq paramdq)
  {
    synchronized (RemoteMediaPlayer.c(this.xk))
    {
      RemoteMediaPlayer.d(this.xk).b(this.xl);
      try
      {
        RemoteMediaPlayer.e(this.xk).c(this.xy, this.xp);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          a(j(new Status(1)));
          RemoteMediaPlayer.d(this.xk).b(null);
        }
        localObject2 = finally;
        throw localObject2;
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
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.5
 * JD-Core Version:    0.7.0.1
 */