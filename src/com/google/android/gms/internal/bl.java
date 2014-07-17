package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

public final class bl
{
  public static boolean a(Context paramContext, bn parambn, bu parambu)
  {
    if (parambn == null)
    {
      da.w("No intent data for launcher overlay.");
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(parambn.mZ))
    {
      da.w("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(parambn.mimeType)) {
      localIntent.setDataAndType(Uri.parse(parambn.mZ), parambn.mimeType);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(parambn.packageName)) {
        localIntent.setPackage(parambn.packageName);
      }
      if (TextUtils.isEmpty(parambn.na)) {
        break label172;
      }
      arrayOfString = parambn.na.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      da.w("Could not parse component name from open GMSG: " + parambn.na);
      return false;
      localIntent.setData(Uri.parse(parambn.mZ));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    try
    {
      label172:
      da.v("Launching an intent: " + localIntent);
      paramContext.startActivity(localIntent);
      parambu.R();
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      da.w(localActivityNotFoundException.getMessage());
    }
    return false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bl
 * JD-Core Version:    0.7.0.1
 */