package com.google.android.gms.plus;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.i;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

@Deprecated
public class PlusClient
  implements GooglePlayServicesClient
{
  final e QN;
  
  PlusClient(e parame)
  {
    this.QN = parame;
  }
  
  @Deprecated
  public void clearDefaultAccount()
  {
    this.QN.clearDefaultAccount();
  }
  
  @Deprecated
  public void connect()
  {
    this.QN.connect();
  }
  
  @Deprecated
  public void disconnect()
  {
    this.QN.disconnect();
  }
  
  @Deprecated
  public String getAccountName()
  {
    return this.QN.getAccountName();
  }
  
  @Deprecated
  public Person getCurrentPerson()
  {
    return this.QN.getCurrentPerson();
  }
  
  e hj()
  {
    return this.QN;
  }
  
  @Deprecated
  public boolean isConnected()
  {
    return this.QN.isConnected();
  }
  
  @Deprecated
  public boolean isConnecting()
  {
    return this.QN.isConnecting();
  }
  
  @Deprecated
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return this.QN.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  @Deprecated
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return this.QN.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void loadMoments(OnMomentsLoadedListener paramOnMomentsLoadedListener)
  {
    this.QN.i(new PlusClient.1(this, paramOnMomentsLoadedListener));
  }
  
  @Deprecated
  public void loadMoments(OnMomentsLoadedListener paramOnMomentsLoadedListener, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    this.QN.a(new PlusClient.2(this, paramOnMomentsLoadedListener), paramInt, paramString1, paramUri, paramString2, paramString3);
  }
  
  @Deprecated
  public void loadPeople(OnPeopleLoadedListener paramOnPeopleLoadedListener, Collection<String> paramCollection)
  {
    this.QN.a(new PlusClient.5(this, paramOnPeopleLoadedListener), paramCollection);
  }
  
  @Deprecated
  public void loadPeople(OnPeopleLoadedListener paramOnPeopleLoadedListener, String... paramVarArgs)
  {
    this.QN.c(new PlusClient.6(this, paramOnPeopleLoadedListener), paramVarArgs);
  }
  
  @Deprecated
  public void loadVisiblePeople(OnPeopleLoadedListener paramOnPeopleLoadedListener, int paramInt, String paramString)
  {
    this.QN.a(new PlusClient.3(this, paramOnPeopleLoadedListener), paramInt, paramString);
  }
  
  @Deprecated
  public void loadVisiblePeople(OnPeopleLoadedListener paramOnPeopleLoadedListener, String paramString)
  {
    this.QN.i(new PlusClient.4(this, paramOnPeopleLoadedListener), paramString);
  }
  
  @Deprecated
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.QN.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.QN.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void removeMoment(String paramString)
  {
    this.QN.removeMoment(paramString);
  }
  
  @Deprecated
  public void revokeAccessAndDisconnect(OnAccessRevokedListener paramOnAccessRevokedListener)
  {
    this.QN.k(new PlusClient.7(this, paramOnAccessRevokedListener));
  }
  
  @Deprecated
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    this.QN.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this.QN.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void writeMoment(Moment paramMoment)
  {
    this.QN.a(null, paramMoment);
  }
  
  @Deprecated
  public static class Builder
  {
    private final GooglePlayServicesClient.ConnectionCallbacks QS;
    private final GooglePlayServicesClient.OnConnectionFailedListener QT;
    private final i QU;
    private final Context mContext;
    
    public Builder(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      this.mContext = paramContext;
      this.QS = paramConnectionCallbacks;
      this.QT = paramOnConnectionFailedListener;
      this.QU = new i(this.mContext);
    }
    
    public PlusClient build()
    {
      return new PlusClient(new e(this.mContext, this.QS, this.QT, this.QU.hA()));
    }
    
    public Builder clearScopes()
    {
      this.QU.hz();
      return this;
    }
    
    public Builder setAccountName(String paramString)
    {
      this.QU.aS(paramString);
      return this;
    }
    
    public Builder setActions(String... paramVarArgs)
    {
      this.QU.f(paramVarArgs);
      return this;
    }
    
    public Builder setScopes(String... paramVarArgs)
    {
      this.QU.e(paramVarArgs);
      return this;
    }
  }
  
  @Deprecated
  public static abstract interface OnAccessRevokedListener
  {
    public abstract void onAccessRevoked(ConnectionResult paramConnectionResult);
  }
  
  @Deprecated
  public static abstract interface OnMomentsLoadedListener
  {
    @Deprecated
    public abstract void onMomentsLoaded(ConnectionResult paramConnectionResult, MomentBuffer paramMomentBuffer, String paramString1, String paramString2);
  }
  
  @Deprecated
  public static abstract interface OnPeopleLoadedListener
  {
    public abstract void onPeopleLoaded(ConnectionResult paramConnectionResult, PersonBuffer paramPersonBuffer, String paramString);
  }
  
  @Deprecated
  public static abstract interface OrderBy
  {
    @Deprecated
    public static final int ALPHABETICAL = 0;
    @Deprecated
    public static final int BEST = 1;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusClient
 * JD-Core Version:    0.7.0.1
 */