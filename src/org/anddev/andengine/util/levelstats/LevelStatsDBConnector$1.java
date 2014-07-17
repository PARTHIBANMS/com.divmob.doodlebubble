package org.anddev.andengine.util.levelstats;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.anddev.andengine.util.Callback;
import org.anddev.andengine.util.Debug;
import org.anddev.andengine.util.StreamUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

class LevelStatsDBConnector$1
  implements Runnable
{
  LevelStatsDBConnector$1(LevelStatsDBConnector paramLevelStatsDBConnector, int paramInt1, boolean paramBoolean, int paramInt2, Callback paramCallback) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
        HttpPost localHttpPost = new HttpPost(LevelStatsDBConnector.access$0(this.this$0));
        ArrayList localArrayList = new ArrayList(5);
        localArrayList.add(new BasicNameValuePair("level_id", String.valueOf(this.val$pLevelID)));
        if (!this.val$pSolved) {
          break label312;
        }
        str = "1";
        localArrayList.add(new BasicNameValuePair("solved", str));
        localArrayList.add(new BasicNameValuePair("secondsplayed", String.valueOf(this.val$pSecondsElapsed)));
        localArrayList.add(new BasicNameValuePair("player_id", String.valueOf(LevelStatsDBConnector.access$1(this.this$0))));
        localArrayList.add(new BasicNameValuePair("secret", String.valueOf(LevelStatsDBConnector.access$2(this.this$0))));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        if (localHttpResponse.getStatusLine().getStatusCode() == 200)
        {
          if (StreamUtils.readFully(localHttpResponse.getEntity().getContent()).equals("<success/>"))
          {
            if (this.val$pCallback == null) {
              break label311;
            }
            this.val$pCallback.onCallback(Boolean.valueOf(true));
            return;
          }
          if (this.val$pCallback == null) {
            break label311;
          }
          this.val$pCallback.onCallback(Boolean.valueOf(false));
        }
      }
      catch (IOException localIOException)
      {
        Debug.e(localIOException);
        if (this.val$pCallback != null)
        {
          this.val$pCallback.onCallback(Boolean.valueOf(false));
          return;
          if (this.val$pCallback != null) {
            this.val$pCallback.onCallback(Boolean.valueOf(false));
          }
        }
      }
      label311:
      return;
      label312:
      String str = "0";
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.levelstats.LevelStatsDBConnector.1
 * JD-Core Version:    0.7.0.1
 */