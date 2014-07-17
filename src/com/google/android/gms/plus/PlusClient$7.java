package com.google.android.gms.plus;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

class PlusClient$7
  implements a.c<Status>
{
  PlusClient$7(PlusClient paramPlusClient, PlusClient.OnAccessRevokedListener paramOnAccessRevokedListener) {}
  
  public void K(Status paramStatus)
  {
    this.QR.onAccessRevoked(paramStatus.getStatus().dG());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusClient.7
 * JD-Core Version:    0.7.0.1
 */