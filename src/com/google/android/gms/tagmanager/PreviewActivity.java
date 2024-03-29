package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;

public class PreviewActivity
  extends Activity
{
  private void a(String paramString1, String paramString2, String paramString3)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setTitle(paramString1);
    localAlertDialog.setMessage(paramString2);
    localAlertDialog.setButton(-1, paramString3, new PreviewActivity.1(this));
    localAlertDialog.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      bh.u("Preview activity");
      Uri localUri = getIntent().getData();
      if (!TagManager.getInstance(this).f(localUri))
      {
        String str = "Cannot preview the app with the uri: " + localUri + ". Launching current version instead.";
        bh.w(str);
        a("Preview failure", str, "Continue");
      }
      Intent localIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
      if (localIntent != null)
      {
        bh.u("Invoke the launch activity for package name: " + getPackageName());
        startActivity(localIntent);
        return;
      }
      bh.u("No launch activity found for package name: " + getPackageName());
      return;
    }
    catch (Exception localException)
    {
      bh.t("Calling preview threw an exception: " + localException.getMessage());
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.PreviewActivity
 * JD-Core Version:    0.7.0.1
 */