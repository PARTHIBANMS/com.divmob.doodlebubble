package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.internal.di;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class t
  extends Thread
  implements f
{
  private static t sd;
  private volatile boolean mClosed = false;
  private final Context mContext;
  private volatile String qX;
  private final LinkedBlockingQueue<Runnable> rZ = new LinkedBlockingQueue();
  private volatile boolean sa = false;
  private volatile List<di> sb;
  private volatile String sc;
  private volatile ag se;
  
  private t(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (this.mContext = paramContext.getApplicationContext();; this.mContext = paramContext)
    {
      start();
      return;
    }
  }
  
  static int C(String paramString)
  {
    int i = 1;
    if (!TextUtils.isEmpty(paramString))
    {
      int j = -1 + paramString.length();
      i = 0;
      for (int k = j; k >= 0; k--)
      {
        int m = paramString.charAt(k);
        i = m + (0xFFFFFFF & i << 6) + (m << 14);
        int n = 0xFE00000 & i;
        if (n != 0) {
          i ^= n >> 21;
        }
      }
    }
    return i;
  }
  
  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  private String o(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (ak.d((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private boolean p(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = ak.a((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (C((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (String str = "unknown";; str = (String)paramMap.get("&t"))
      {
        aa.v(String.format("%s hit sampled out", new Object[] { str }));
        return true;
      }
    }
    return false;
  }
  
  static t q(Context paramContext)
  {
    if (sd == null) {
      sd = new t(paramContext);
    }
    return sd;
  }
  
  private void q(Map<String, String> paramMap)
  {
    m localm = a.m(this.mContext);
    ak.a(paramMap, "&adid", localm.getValue("&adid"));
    ak.a(paramMap, "&ate", localm.getValue("&ate"));
  }
  
  static String r(Context paramContext)
  {
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[8192];
      i = localFileInputStream.read(arrayOfByte, 0, 8192);
      if (localFileInputStream.available() > 0)
      {
        aa.t("Too much campaign data, ignoring it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
        return null;
      }
      localFileInputStream.close();
      paramContext.deleteFile("gaInstallData");
      if (i <= 0)
      {
        aa.w("Campaign file is empty.");
        return null;
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      byte[] arrayOfByte;
      int i;
      aa.u("No campaign data found.");
      return null;
      String str = new String(arrayOfByte, 0, i);
      aa.u("Campaign found: " + str);
      return str;
    }
    catch (IOException localIOException)
    {
      aa.t("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    return null;
  }
  
  private void r(Map<String, String> paramMap)
  {
    g localg = g.bt();
    ak.a(paramMap, "&an", localg.getValue("&an"));
    ak.a(paramMap, "&av", localg.getValue("&av"));
    ak.a(paramMap, "&aid", localg.getValue("&aid"));
    ak.a(paramMap, "&aiid", localg.getValue("&aiid"));
    paramMap.put("&v", "1");
  }
  
  void a(Runnable paramRunnable)
  {
    this.rZ.add(paramRunnable);
  }
  
  public void bk()
  {
    a(new t.3(this));
  }
  
  public void bp()
  {
    a(new t.2(this));
  }
  
  public void br()
  {
    a(new t.4(this));
  }
  
  public LinkedBlockingQueue<Runnable> bs()
  {
    return this.rZ;
  }
  
  public Thread getThread()
  {
    return this;
  }
  
  protected void init()
  {
    this.se.bI();
    this.sb = new ArrayList();
    this.sb.add(new di("appendVersion", "&_v".substring(1), "ma4.0.0"));
    this.sb.add(new di("appendQueueTime", "&qt".substring(1), null));
    this.sb.add(new di("appendCacheBuster", "&z".substring(1), null));
  }
  
  public void n(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(paramMap);
    String str = (String)paramMap.get("&ht");
    if (str != null) {}
    try
    {
      Long.valueOf(str);
      if (str == null) {
        localHashMap.put("&ht", Long.toString(System.currentTimeMillis()));
      }
      a(new t.1(this, localHashMap));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        str = null;
      }
    }
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    try
    {
      Thread.sleep(5000L);
      for (;;)
      {
        try
        {
          if (this.se == null) {
            this.se = new s(this.mContext, this);
          }
          init();
          this.qX = h.bu().getValue("&cid");
          if (this.qX == null) {
            this.sa = true;
          }
          this.sc = r(this.mContext);
          aa.v("Initialized GA Thread");
        }
        catch (Throwable localThrowable1)
        {
          aa.t("Error initializing the GAThread: " + a(localThrowable1));
          aa.t("Google Analytics will not start up.");
          this.sa = true;
          continue;
        }
        if (this.mClosed) {
          return;
        }
        try
        {
          Runnable localRunnable = (Runnable)this.rZ.take();
          if (!this.sa) {
            localRunnable.run();
          }
        }
        catch (InterruptedException localInterruptedException2)
        {
          aa.u(localInterruptedException2.toString());
        }
        catch (Throwable localThrowable2)
        {
          aa.t("Error on GAThread: " + a(localThrowable2));
          aa.t("Google Analytics is shutting down.");
          this.sa = true;
        }
      }
    }
    catch (InterruptedException localInterruptedException1)
    {
      for (;;)
      {
        aa.w("sleep interrupted in GAThread initialize");
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.t
 * JD-Core Version:    0.7.0.1
 */