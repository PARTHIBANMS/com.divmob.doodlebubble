package com.google.android.gms.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Games.a;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.ArrayList;
import java.util.List;

public final class go
  implements Requests
{
  public PendingResult<Requests.UpdateRequestsResult> acceptRequest(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return acceptRequests(paramGoogleApiClient, localArrayList);
  }
  
  public PendingResult<Requests.UpdateRequestsResult> acceptRequests(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    if (paramList == null) {}
    for (String[] arrayOfString = null;; arrayOfString = (String[])paramList.toArray(new String[paramList.size()])) {
      return paramGoogleApiClient.b(new go.1(this, arrayOfString));
    }
  }
  
  public PendingResult<Requests.UpdateRequestsResult> dismissRequest(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return dismissRequests(paramGoogleApiClient, localArrayList);
  }
  
  public PendingResult<Requests.UpdateRequestsResult> dismissRequests(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    if (paramList == null) {}
    for (String[] arrayOfString = null;; arrayOfString = (String[])paramList.toArray(new String[paramList.size()])) {
      return paramGoogleApiClient.b(new go.2(this, arrayOfString));
    }
  }
  
  public ArrayList<GameRequest> getGameRequestsFromBundle(Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("requests"))) {
      return new ArrayList();
    }
    ArrayList localArrayList1 = (ArrayList)paramBundle.get("requests");
    ArrayList localArrayList2 = new ArrayList();
    int i = localArrayList1.size();
    for (int j = 0; j < i; j++) {
      localArrayList2.add((GameRequest)localArrayList1.get(j));
    }
    return localArrayList2;
  }
  
  public ArrayList<GameRequest> getGameRequestsFromInboxResponse(Intent paramIntent)
  {
    if (paramIntent == null) {
      return new ArrayList();
    }
    return getGameRequestsFromBundle(paramIntent.getExtras());
  }
  
  public Intent getInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fD();
  }
  
  public int getMaxLifetimeDays(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fF();
  }
  
  public int getMaxPayloadSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).fE();
  }
  
  public Intent getSendIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, byte[] paramArrayOfByte, int paramInt2, Bitmap paramBitmap, String paramString)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramArrayOfByte, paramInt2, paramBitmap, paramString);
  }
  
  public PendingResult<Requests.LoadRequestsResult> loadRequests(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2, int paramInt3)
  {
    return paramGoogleApiClient.a(new go.3(this, paramInt1, paramInt2, paramInt3));
  }
  
  public void registerRequestListener(GoogleApiClient paramGoogleApiClient, OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnRequestReceivedListener);
  }
  
  public void unregisterRequestListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).fx();
  }
  
  private static abstract class a
    extends Games.a<Requests.LoadRequestsResult>
  {
    public Requests.LoadRequestsResult B(Status paramStatus)
    {
      return new go.a.1(this, paramStatus);
    }
  }
  
  private static abstract class b
    extends Games.a<Requests.UpdateRequestsResult>
  {
    public Requests.UpdateRequestsResult C(Status paramStatus)
    {
      return new go.b.1(this, paramStatus);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.go
 * JD-Core Version:    0.7.0.1
 */