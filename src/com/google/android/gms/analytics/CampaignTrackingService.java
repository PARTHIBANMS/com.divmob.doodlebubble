package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class CampaignTrackingService
  extends IntentService
{
  public CampaignTrackingService()
  {
    super("CampaignIntentService");
  }
  
  public CampaignTrackingService(String paramString)
  {
    super(paramString);
  }
  
  public void onHandleIntent(Intent paramIntent)
  {
    processIntent(this, paramIntent);
  }
  
  public void processIntent(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    try
    {
      FileOutputStream localFileOutputStream = paramContext.openFileOutput("gaInstallData", 0);
      localFileOutputStream.write(str.getBytes());
      localFileOutputStream.close();
      aa.v("Stored campaign information.");
      return;
    }
    catch (IOException localIOException)
    {
      aa.t("Error storing install campaign.");
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingService
 * JD-Core Version:    0.7.0.1
 */