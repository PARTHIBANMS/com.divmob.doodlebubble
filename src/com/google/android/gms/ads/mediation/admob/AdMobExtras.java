package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.NetworkExtras;

public final class AdMobExtras
  implements NetworkExtras
{
  private final Bundle qs;
  
  public AdMobExtras(Bundle paramBundle)
  {
    if (paramBundle != null) {}
    for (Bundle localBundle = new Bundle(paramBundle);; localBundle = null)
    {
      this.qs = localBundle;
      return;
    }
  }
  
  public Bundle getExtras()
  {
    return this.qs;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.ads.mediation.admob.AdMobExtras
 * JD-Core Version:    0.7.0.1
 */