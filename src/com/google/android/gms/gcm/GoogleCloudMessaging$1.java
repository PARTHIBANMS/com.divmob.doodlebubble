package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;

class GoogleCloudMessaging$1
  extends Handler
{
  GoogleCloudMessaging$1(GoogleCloudMessaging paramGoogleCloudMessaging, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Intent localIntent = (Intent)paramMessage.obj;
    this.Kv.Ks.add(localIntent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.gcm.GoogleCloudMessaging.1
 * JD-Core Version:    0.7.0.1
 */