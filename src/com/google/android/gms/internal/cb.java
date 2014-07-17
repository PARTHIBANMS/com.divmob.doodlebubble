package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;

public abstract class cb
  extends ct
{
  private final cd mf;
  private final ca.a nY;
  
  public cb(cd paramcd, ca.a parama)
  {
    this.mf = paramcd;
    this.nY = parama;
  }
  
  private static cf a(ch paramch, cd paramcd)
  {
    try
    {
      cf localcf = paramch.b(paramcd);
      return localcf;
    }
    catch (RemoteException localRemoteException)
    {
      da.b("Could not fetch ad response from ad request service.", localRemoteException);
    }
    return null;
  }
  
  /* Error */
  public final void aB()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 39	com/google/android/gms/internal/cb:aE	()Lcom/google/android/gms/internal/ch;
    //   4: astore_2
    //   5: aload_2
    //   6: ifnonnull +27 -> 33
    //   9: new 41	com/google/android/gms/internal/cf
    //   12: dup
    //   13: iconst_0
    //   14: invokespecial 44	com/google/android/gms/internal/cf:<init>	(I)V
    //   17: astore_3
    //   18: aload_0
    //   19: invokevirtual 47	com/google/android/gms/internal/cb:aD	()V
    //   22: aload_0
    //   23: getfield 17	com/google/android/gms/internal/cb:nY	Lcom/google/android/gms/internal/ca$a;
    //   26: aload_3
    //   27: invokeinterface 52 2 0
    //   32: return
    //   33: aload_2
    //   34: aload_0
    //   35: getfield 15	com/google/android/gms/internal/cb:mf	Lcom/google/android/gms/internal/cd;
    //   38: invokestatic 54	com/google/android/gms/internal/cb:a	(Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;
    //   41: astore_3
    //   42: aload_3
    //   43: ifnonnull -25 -> 18
    //   46: new 41	com/google/android/gms/internal/cf
    //   49: dup
    //   50: iconst_0
    //   51: invokespecial 44	com/google/android/gms/internal/cf:<init>	(I)V
    //   54: astore_3
    //   55: goto -37 -> 18
    //   58: astore_1
    //   59: aload_0
    //   60: invokevirtual 47	com/google/android/gms/internal/cb:aD	()V
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	cb
    //   58	6	1	localObject	Object
    //   4	30	2	localch	ch
    //   17	38	3	localcf	cf
    // Exception table:
    //   from	to	target	type
    //   0	5	58	finally
    //   9	18	58	finally
    //   33	42	58	finally
    //   46	55	58	finally
  }
  
  public abstract void aD();
  
  public abstract ch aE();
  
  public final void onStop()
  {
    aD();
  }
  
  public static final class a
    extends cb
  {
    private final Context mContext;
    
    public a(Context paramContext, cd paramcd, ca.a parama)
    {
      super(parama);
      this.mContext = paramContext;
    }
    
    public void aD() {}
    
    public ch aE()
    {
      return ci.a(this.mContext, new av());
    }
  }
  
  public static final class b
    extends cb
    implements GooglePlayServicesClient.ConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener
  {
    private final Object mg = new Object();
    private final ca.a nY;
    private final cc nZ;
    
    public b(Context paramContext, cd paramcd, ca.a parama)
    {
      super(parama);
      this.nY = parama;
      this.nZ = new cc(paramContext, this, this, paramcd.kN.pW);
      this.nZ.connect();
    }
    
    public void aD()
    {
      synchronized (this.mg)
      {
        if ((this.nZ.isConnected()) || (this.nZ.isConnecting())) {
          this.nZ.disconnect();
        }
        return;
      }
    }
    
    public ch aE()
    {
      synchronized (this.mg)
      {
        try
        {
          ch localch = this.nZ.aH();
          return localch;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          return null;
        }
      }
    }
    
    public void onConnected(Bundle paramBundle)
    {
      start();
    }
    
    public void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      this.nY.a(new cf(0));
    }
    
    public void onDisconnected()
    {
      da.s("Disconnected from remote ad request service.");
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cb
 * JD-Core Version:    0.7.0.1
 */