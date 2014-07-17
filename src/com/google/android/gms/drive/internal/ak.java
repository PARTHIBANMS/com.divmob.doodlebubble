package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

public class ak
  extends c
{
  private final a.c<Status> vj;
  
  public ak(a.c<Status> paramc)
  {
    this.vj = paramc;
  }
  
  public void l(Status paramStatus)
    throws RemoteException
  {
    this.vj.b(paramStatus);
  }
  
  public void onSuccess()
    throws RemoteException
  {
    this.vj.b(Status.zQ);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.ak
 * JD-Core Version:    0.7.0.1
 */