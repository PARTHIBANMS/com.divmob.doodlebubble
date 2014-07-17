package com.google.android.gms.appstate;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.er;

public final class AppStateManager
{
  public static final Api API;
  public static final Scope SCOPE_APP_STATE;
  static final Api.b<dl> va = new AppStateManager.1();
  
  static
  {
    SCOPE_APP_STATE = new Scope("https://www.googleapis.com/auth/appstate");
    Api.b localb = va;
    Scope[] arrayOfScope = new Scope[1];
    arrayOfScope[0] = SCOPE_APP_STATE;
    API = new Api(localb, arrayOfScope);
  }
  
  private static StateResult a(Status paramStatus)
  {
    return new AppStateManager.2(paramStatus);
  }
  
  public static dl a(GoogleApiClient paramGoogleApiClient)
  {
    boolean bool1 = true;
    boolean bool2;
    dl localdl;
    if (paramGoogleApiClient != null)
    {
      bool2 = bool1;
      er.b(bool2, "GoogleApiClient parameter is required.");
      er.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      localdl = (dl)paramGoogleApiClient.a(va);
      if (localdl == null) {
        break label55;
      }
    }
    for (;;)
    {
      er.a(bool1, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature.");
      return localdl;
      bool2 = false;
      break;
      label55:
      bool1 = false;
    }
  }
  
  public static PendingResult<StateDeletedResult> delete(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.b(new AppStateManager.5(paramInt));
  }
  
  public static int getMaxNumKeys(GoogleApiClient paramGoogleApiClient)
  {
    return a(paramGoogleApiClient).cO();
  }
  
  public static int getMaxStateSize(GoogleApiClient paramGoogleApiClient)
  {
    return a(paramGoogleApiClient).cN();
  }
  
  public static PendingResult<StateListResult> list(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new AppStateManager.7());
  }
  
  public static PendingResult<StateResult> load(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new AppStateManager.6(paramInt));
  }
  
  public static PendingResult<StateResult> resolve(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    return paramGoogleApiClient.b(new AppStateManager.8(paramInt, paramString, paramArrayOfByte));
  }
  
  public static PendingResult<Status> signOut(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new AppStateManager.9());
  }
  
  public static void update(GoogleApiClient paramGoogleApiClient, int paramInt, byte[] paramArrayOfByte)
  {
    paramGoogleApiClient.b(new AppStateManager.3(paramInt, paramArrayOfByte));
  }
  
  public static PendingResult<StateResult> updateImmediate(GoogleApiClient paramGoogleApiClient, int paramInt, byte[] paramArrayOfByte)
  {
    return paramGoogleApiClient.b(new AppStateManager.4(paramInt, paramArrayOfByte));
  }
  
  public static abstract interface StateConflictResult
    extends Releasable, Result
  {
    public abstract byte[] getLocalData();
    
    public abstract String getResolvedVersion();
    
    public abstract byte[] getServerData();
    
    public abstract int getStateKey();
  }
  
  public static abstract interface StateDeletedResult
    extends Result
  {
    public abstract int getStateKey();
  }
  
  public static abstract interface StateListResult
    extends Result
  {
    public abstract AppStateBuffer getStateBuffer();
  }
  
  public static abstract interface StateLoadedResult
    extends Releasable, Result
  {
    public abstract byte[] getLocalData();
    
    public abstract int getStateKey();
  }
  
  public static abstract interface StateResult
    extends Releasable, Result
  {
    public abstract AppStateManager.StateConflictResult getConflictResult();
    
    public abstract AppStateManager.StateLoadedResult getLoadedResult();
  }
  
  public static abstract class a<R extends Result>
    extends a.a<R, dl>
    implements PendingResult<R>
  {
    public a()
    {
      super();
    }
  }
  
  private static abstract class b
    extends AppStateManager.a<AppStateManager.StateDeletedResult>
  {}
  
  private static abstract class c
    extends AppStateManager.a<AppStateManager.StateListResult>
  {
    public AppStateManager.StateListResult e(Status paramStatus)
    {
      return new AppStateManager.c.1(this, paramStatus);
    }
  }
  
  private static abstract class d
    extends AppStateManager.a<Status>
  {
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static abstract class e
    extends AppStateManager.a<AppStateManager.StateResult>
  {
    public AppStateManager.StateResult g(Status paramStatus)
    {
      return AppStateManager.b(paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager
 * JD-Core Version:    0.7.0.1
 */