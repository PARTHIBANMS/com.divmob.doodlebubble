package com.google.android.gms.tagmanager;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

class a$1
  implements a.a
{
  a$1(a parama) {}
  
  public AdvertisingIdClient.Info ix()
  {
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(a.a(this.TB));
      return localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      bh.w("IllegalStateException getting Advertising Id Info");
      return null;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      bh.w("GooglePlayServicesRepairableException getting Advertising Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      bh.w("IOException getting Ad Id Info");
      return null;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      bh.w("GooglePlayServicesNotAvailableException getting Advertising Id Info");
      return null;
    }
    catch (Exception localException)
    {
      bh.w("Unknown exception. Could not get the Advertising Id Info.");
    }
    return null;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.a.1
 * JD-Core Version:    0.7.0.1
 */