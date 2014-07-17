package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ci
  extends ch.a
{
  private static final Object op = new Object();
  private static ci oq;
  private final Context mContext;
  private final au or;
  
  private ci(Context paramContext, au paramau)
  {
    this.mContext = paramContext;
    this.or = paramau;
  }
  
  private static cf a(Context paramContext, au paramau, cd paramcd)
  {
    da.s("Starting ad request from service.");
    paramau.init();
    cm localcm = new cm(paramContext);
    if (localcm.oX == -1)
    {
      da.s("Device is offline.");
      return new cf(2);
    }
    ck localck = new ck(paramcd.applicationInfo.packageName);
    if (paramcd.oc.extras != null)
    {
      String str3 = paramcd.oc.extras.getString("_ad");
      if (str3 != null) {
        return cj.a(paramContext, paramcd, str3);
      }
    }
    String str1 = cj.a(paramcd, localcm, paramau.a(250L));
    if (str1 == null) {
      return new cf(0);
    }
    cz.pT.post(new ci.1(paramContext, paramcd, localck, str1));
    String str2 = localck.aI();
    if (TextUtils.isEmpty(str2)) {
      return new cf(localck.getErrorCode());
    }
    return a(paramContext, paramcd.kN.pU, str2);
  }
  
  public static cf a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      localcl = new cl();
      URL localURL1 = new URL(paramString2);
      l = SystemClock.elapsedRealtime();
      localURL2 = localURL1;
      i = 0;
    }
    catch (IOException localIOException)
    {
      try
      {
        for (;;)
        {
          cl localcl;
          long l;
          URL localURL2;
          int i;
          cv.a(paramContext, paramString1, false, localHttpURLConnection);
          int j = localHttpURLConnection.getResponseCode();
          Map localMap = localHttpURLConnection.getHeaderFields();
          if ((j >= 200) && (j < 300))
          {
            String str2 = localURL2.toString();
            String str3 = cv.a(new InputStreamReader(localHttpURLConnection.getInputStream()));
            a(str2, localMap, str3, j);
            localcl.a(str2, localMap, str3);
            cf localcf4 = localcl.f(l);
            return localcf4;
          }
          a(localURL2.toString(), localMap, null, j);
          if ((j >= 300) && (j < 400))
          {
            String str1 = localHttpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(str1))
            {
              da.w("No location header to follow redirect.");
              cf localcf3 = new cf(0);
              return localcf3;
            }
            localURL2 = new URL(str1);
            i++;
            if (i > 5)
            {
              da.w("Too many redirects.");
              cf localcf2 = new cf(0);
              return localcf2;
            }
          }
          else
          {
            da.w("Received error HTTP response code: " + j);
            cf localcf1 = new cf(0);
            return localcf1;
          }
          localcl.d(localMap);
          localHttpURLConnection.disconnect();
        }
      }
      finally
      {
        HttpURLConnection localHttpURLConnection;
        localHttpURLConnection.disconnect();
      }
      localIOException = localIOException;
      da.w("Error while connecting to ad server: " + localIOException.getMessage());
      return new cf(2);
    }
    localHttpURLConnection = (HttpURLConnection)localURL2.openConnection();
  }
  
  public static ci a(Context paramContext, au paramau)
  {
    synchronized (op)
    {
      if (oq == null) {
        oq = new ci(paramContext.getApplicationContext(), paramau);
      }
      ci localci = oq;
      return localci;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (da.n(2))
    {
      da.v("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        Iterator localIterator1 = paramMap.keySet().iterator();
        while (localIterator1.hasNext())
        {
          String str1 = (String)localIterator1.next();
          da.v("    " + str1 + ":");
          Iterator localIterator2 = ((List)paramMap.get(str1)).iterator();
          while (localIterator2.hasNext())
          {
            String str2 = (String)localIterator2.next();
            da.v("      " + str2);
          }
        }
      }
      da.v("  Body:");
      if (paramString2 != null) {
        for (int i = 0; i < Math.min(paramString2.length(), 100000); i += 1000) {
          da.v(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
        }
      }
      da.v("    null");
      da.v("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  public cf b(cd paramcd)
  {
    return a(this.mContext, this.or, paramcd);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ci
 * JD-Core Version:    0.7.0.1
 */