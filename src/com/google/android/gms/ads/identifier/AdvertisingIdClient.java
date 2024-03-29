package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.internal.er;
import java.io.IOException;

public final class AdvertisingIdClient
{
  /* Error */
  static Info a(Context paramContext, a parama)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 24	com/google/android/gms/common/a:dm	()Landroid/os/IBinder;
    //   4: invokestatic 30	com/google/android/gms/internal/t$a:b	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/t;
    //   7: astore 8
    //   9: new 32	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   12: dup
    //   13: aload 8
    //   15: invokeinterface 38 1 0
    //   20: aload 8
    //   22: iconst_1
    //   23: invokeinterface 41 2 0
    //   28: invokespecial 44	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info:<init>	(Ljava/lang/String;Z)V
    //   31: astore 9
    //   33: aload_0
    //   34: aload_1
    //   35: invokevirtual 50	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   38: aload 9
    //   40: areturn
    //   41: astore 10
    //   43: ldc 52
    //   45: ldc 54
    //   47: aload 10
    //   49: invokestatic 60	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   52: pop
    //   53: aload 9
    //   55: areturn
    //   56: astore 6
    //   58: ldc 52
    //   60: ldc 62
    //   62: aload 6
    //   64: invokestatic 60	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   67: pop
    //   68: new 12	java/io/IOException
    //   71: dup
    //   72: ldc 64
    //   74: invokespecial 67	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    //   78: astore_3
    //   79: aload_0
    //   80: aload_1
    //   81: invokevirtual 50	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   84: aload_3
    //   85: athrow
    //   86: astore_2
    //   87: new 12	java/io/IOException
    //   90: dup
    //   91: ldc 69
    //   93: invokespecial 67	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: astore 4
    //   99: ldc 52
    //   101: ldc 54
    //   103: aload 4
    //   105: invokestatic 60	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: goto -25 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	paramContext	Context
    //   0	112	1	parama	a
    //   86	1	2	localInterruptedException	java.lang.InterruptedException
    //   78	7	3	localObject	Object
    //   97	7	4	localIllegalArgumentException1	java.lang.IllegalArgumentException
    //   56	7	6	localRemoteException	android.os.RemoteException
    //   7	14	8	localt	com.google.android.gms.internal.t
    //   31	23	9	localInfo	Info
    //   41	7	10	localIllegalArgumentException2	java.lang.IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   33	38	41	java/lang/IllegalArgumentException
    //   0	33	56	android/os/RemoteException
    //   0	33	78	finally
    //   58	78	78	finally
    //   87	97	78	finally
    //   0	33	86	java/lang/InterruptedException
    //   79	84	97	java/lang/IllegalArgumentException
  }
  
  private static a g(Context paramContext)
    throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      a locala;
      Intent localIntent;
      throw new IOException("Connection failure");
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        GooglePlayServicesUtil.s(paramContext);
        locala = new a();
        localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
        localIntent.setPackage("com.google.android.gms");
        if (!paramContext.bindService(localIntent, locala, 1)) {
          break label79;
        }
        return locala;
      }
      catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
      {
        throw new IOException(localGooglePlayServicesNotAvailableException);
      }
      localNameNotFoundException = localNameNotFoundException;
      throw new GooglePlayServicesNotAvailableException(9);
    }
  }
  
  public static Info getAdvertisingIdInfo(Context paramContext)
    throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    er.ad("Calling this from your main thread can lead to deadlock");
    return a(paramContext, g(paramContext));
  }
  
  public static final class Info
  {
    private final String kF;
    private final boolean kG;
    
    public Info(String paramString, boolean paramBoolean)
    {
      this.kF = paramString;
      this.kG = paramBoolean;
    }
    
    public String getId()
    {
      return this.kF;
    }
    
    public boolean isLimitAdTrackingEnabled()
    {
      return this.kG;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient
 * JD-Core Version:    0.7.0.1
 */