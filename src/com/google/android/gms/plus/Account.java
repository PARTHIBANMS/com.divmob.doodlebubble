package com.google.android.gms.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface Account
{
  public abstract void clearDefaultAccount(GoogleApiClient paramGoogleApiClient);
  
  public abstract String getAccountName(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient paramGoogleApiClient);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.Account
 * JD-Core Version:    0.7.0.1
 */