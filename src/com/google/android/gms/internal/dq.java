package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class dq
  extends eh<ds>
{
  private static final du xE = new du("CastClientImpl");
  private static final Object xU = new Object();
  private static final Object xV = new Object();
  private final Handler mHandler;
  private final Cast.Listener wz;
  private ApplicationMetadata xF;
  private final CastDevice xG;
  private final dt xH;
  private final Map<String, Cast.MessageReceivedCallback> xI;
  private final long xJ;
  private String xK;
  private boolean xL;
  private boolean xM;
  private final AtomicLong xN;
  private String xO;
  private String xP;
  private Bundle xQ;
  private Map<Long, a.c<Status>> xR;
  private a.c<Cast.ApplicationConnectionResult> xS;
  private a.c<Status> xT;
  private double xe;
  private boolean xf;
  
  public dq(Context paramContext, Looper paramLooper, CastDevice paramCastDevice, long paramLong, Cast.Listener paramListener, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, (String[])null);
    this.xG = paramCastDevice;
    this.wz = paramListener;
    this.xJ = paramLong;
    this.mHandler = new Handler(paramLooper);
    this.xI = new HashMap();
    this.xM = false;
    this.xF = null;
    this.xK = null;
    this.xe = 0.0D;
    this.xf = false;
    this.xN = new AtomicLong(0L);
    this.xR = new HashMap();
    this.xH = new dq.1(this);
  }
  
  private void a(String paramString, double paramDouble, boolean paramBoolean)
  {
    if (!dr.a(paramString, this.xK)) {
      this.xK = paramString;
    }
    for (int i = 1;; i = 0)
    {
      if ((this.wz != null) && ((i != 0) || (this.xL))) {
        this.wz.onApplicationStatusChanged();
      }
      if (paramDouble != this.xe) {
        this.xe = paramDouble;
      }
      for (boolean bool = true;; bool = false)
      {
        if (paramBoolean != this.xf)
        {
          this.xf = paramBoolean;
          bool = true;
        }
        du localdu = xE;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Boolean.valueOf(bool);
        arrayOfObject[1] = Boolean.valueOf(this.xL);
        localdu.b("hasChange=%b, mFirstStatusUpdate=%b", arrayOfObject);
        if ((this.wz != null) && ((bool) || (this.xL))) {
          this.wz.onVolumeChanged();
        }
        this.xL = false;
        return;
      }
    }
  }
  
  private void d(a.c<Cast.ApplicationConnectionResult> paramc)
  {
    synchronized (xU)
    {
      if (this.xS != null) {
        this.xS.b(new a(new Status(2002)));
      }
      this.xS = paramc;
      return;
    }
  }
  
  private void db()
    throws IllegalStateException
  {
    if (!this.xM) {
      throw new IllegalStateException("not connected to a device");
    }
  }
  
  private void f(a.c<Status> paramc)
  {
    synchronized (xV)
    {
      if (this.xT != null)
      {
        paramc.b(new Status(2001));
        return;
      }
      this.xT = paramc;
      return;
    }
  }
  
  public void Q(String paramString)
    throws IllegalArgumentException, RemoteException
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Channel namespace cannot be null or empty");
    }
    synchronized (this.xI)
    {
      Cast.MessageReceivedCallback localMessageReceivedCallback = (Cast.MessageReceivedCallback)this.xI.remove(paramString);
      if (localMessageReceivedCallback == null) {}
    }
    du localdu;
    Object[] arrayOfObject;
  }
  
  public void a(double paramDouble)
    throws IllegalArgumentException, IllegalStateException, RemoteException
  {
    if ((Double.isInfinite(paramDouble)) || (Double.isNaN(paramDouble))) {
      throw new IllegalArgumentException("Volume cannot be " + paramDouble);
    }
    ((ds)eb()).a(paramDouble, this.xe, this.xf);
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if ((paramInt == 0) || (paramInt == 1001))
    {
      this.xM = true;
      this.xL = true;
    }
    for (;;)
    {
      if (paramInt == 1001)
      {
        this.xQ = new Bundle();
        this.xQ.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
        paramInt = 0;
      }
      super.a(paramInt, paramIBinder, paramBundle);
      return;
      this.xM = false;
    }
  }
  
  protected void a(en paramen, eh.e parame)
    throws RemoteException
  {
    Bundle localBundle = new Bundle();
    du localdu = xE;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.xO;
    arrayOfObject[1] = this.xP;
    localdu.b("getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s", arrayOfObject);
    this.xG.putInBundle(localBundle);
    localBundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.xJ);
    if (this.xO != null)
    {
      localBundle.putString("last_application_id", this.xO);
      if (this.xP != null) {
        localBundle.putString("last_session_id", this.xP);
      }
    }
    paramen.a(parame, 4323000, getContext().getPackageName(), this.xH.asBinder(), localBundle);
  }
  
  public void a(String paramString, Cast.MessageReceivedCallback paramMessageReceivedCallback)
    throws IllegalArgumentException, IllegalStateException, RemoteException
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Channel namespace cannot be null or empty");
    }
    Q(paramString);
    if (paramMessageReceivedCallback != null) {}
    synchronized (this.xI)
    {
      this.xI.put(paramString, paramMessageReceivedCallback);
      ((ds)eb()).S(paramString);
      return;
    }
  }
  
  public void a(String paramString, a.c<Status> paramc)
    throws IllegalStateException, RemoteException
  {
    f(paramc);
    ((ds)eb()).R(paramString);
  }
  
  public void a(String paramString1, String paramString2, a.c<Status> paramc)
    throws IllegalArgumentException, IllegalStateException, RemoteException
  {
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("The message payload cannot be null or empty");
    }
    if ((paramString1 == null) || (paramString1.length() > 128)) {
      throw new IllegalArgumentException("Invalid namespace length");
    }
    if (paramString2.length() > 65536) {
      throw new IllegalArgumentException("Message exceeds maximum size");
    }
    db();
    long l = this.xN.incrementAndGet();
    ((ds)eb()).a(paramString1, paramString2, l);
    this.xR.put(Long.valueOf(l), paramc);
  }
  
  public void a(String paramString, boolean paramBoolean, a.c<Cast.ApplicationConnectionResult> paramc)
    throws IllegalStateException, RemoteException
  {
    d(paramc);
    ((ds)eb()).e(paramString, paramBoolean);
  }
  
  protected String aF()
  {
    return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
  }
  
  protected String aG()
  {
    return "com.google.android.gms.cast.internal.ICastDeviceController";
  }
  
  public void b(String paramString1, String paramString2, a.c<Cast.ApplicationConnectionResult> paramc)
    throws IllegalStateException, RemoteException
  {
    d(paramc);
    ((ds)eb()).e(paramString1, paramString2);
  }
  
  public Bundle cY()
  {
    if (this.xQ != null)
    {
      Bundle localBundle = this.xQ;
      this.xQ = null;
      return localBundle;
    }
    return super.cY();
  }
  
  public void cZ()
    throws IllegalStateException, RemoteException
  {
    ((ds)eb()).cZ();
  }
  
  public double da()
    throws IllegalStateException
  {
    db();
    return this.xe;
  }
  
  public void disconnect()
  {
    for (;;)
    {
      try
      {
        if (!isConnected()) {}
      }
      catch (RemoteException localRemoteException)
      {
        du localdu = xE;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localRemoteException.getMessage();
        localdu.b("Error while disconnecting the controller interface: %s", arrayOfObject);
        continue;
      }
      finally
      {
        super.disconnect();
      }
      synchronized (this.xI)
      {
        this.xI.clear();
        ((ds)eb()).disconnect();
        super.disconnect();
        return;
      }
    }
  }
  
  public void e(a.c<Status> paramc)
    throws IllegalStateException, RemoteException
  {
    f(paramc);
    ((ds)eb()).df();
  }
  
  public ApplicationMetadata getApplicationMetadata()
    throws IllegalStateException
  {
    db();
    return this.xF;
  }
  
  public String getApplicationStatus()
    throws IllegalStateException
  {
    db();
    return this.xK;
  }
  
  public boolean isMute()
    throws IllegalStateException
  {
    db();
    return this.xf;
  }
  
  public void t(boolean paramBoolean)
    throws IllegalStateException, RemoteException
  {
    ((ds)eb()).a(paramBoolean, this.xe, this.xf);
  }
  
  protected ds v(IBinder paramIBinder)
  {
    return ds.a.w(paramIBinder);
  }
  
  private static final class a
    implements Cast.ApplicationConnectionResult
  {
    private final String pz;
    private final Status vl;
    private final ApplicationMetadata yb;
    private final String yc;
    private final boolean yd;
    
    public a(Status paramStatus)
    {
      this(paramStatus, null, null, null, false);
    }
    
    public a(Status paramStatus, ApplicationMetadata paramApplicationMetadata, String paramString1, String paramString2, boolean paramBoolean)
    {
      this.vl = paramStatus;
      this.yb = paramApplicationMetadata;
      this.yc = paramString1;
      this.pz = paramString2;
      this.yd = paramBoolean;
    }
    
    public ApplicationMetadata getApplicationMetadata()
    {
      return this.yb;
    }
    
    public String getApplicationStatus()
    {
      return this.yc;
    }
    
    public String getSessionId()
    {
      return this.pz;
    }
    
    public Status getStatus()
    {
      return this.vl;
    }
    
    public boolean getWasLaunched()
    {
      return this.yd;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dq
 * JD-Core Version:    0.7.0.1
 */