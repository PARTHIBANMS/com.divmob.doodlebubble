package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

class bn
  extends BroadcastReceiver
{
  static final String rg = bn.class.getName();
  private final cx VG;
  
  bn(cx paramcx)
  {
    this.VG = paramcx;
  }
  
  public static void p(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
    localIntent.addCategory(paramContext.getPackageName());
    localIntent.putExtra(rg, true);
    paramContext.sendBroadcast(localIntent);
  }
  
  public void o(Context paramContext)
  {
    IntentFilter localIntentFilter1 = new IntentFilter();
    localIntentFilter1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramContext.registerReceiver(this, localIntentFilter1);
    IntentFilter localIntentFilter2 = new IntentFilter();
    localIntentFilter2.addAction("com.google.analytics.RADIO_POWERED");
    localIntentFilter2.addCategory(paramContext.getPackageName());
    paramContext.registerReceiver(this, localIntentFilter2);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(str))
    {
      localBundle = paramIntent.getExtras();
      localBoolean = Boolean.FALSE;
      if (localBundle != null) {
        localBoolean = Boolean.valueOf(paramIntent.getExtras().getBoolean("noConnectivity"));
      }
      localcx = this.VG;
      if (!localBoolean.booleanValue())
      {
        bool = true;
        localcx.q(bool);
      }
    }
    while ((!"com.google.analytics.RADIO_POWERED".equals(str)) || (paramIntent.hasExtra(rg))) {
      for (;;)
      {
        Bundle localBundle;
        Boolean localBoolean;
        cx localcx;
        return;
        boolean bool = false;
      }
    }
    this.VG.bF();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.bn
 * JD-Core Version:    0.7.0.1
 */