package com.google.android.gms.appstate;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dl;

final class AppStateManager$5
  extends AppStateManager.b
{
  AppStateManager$5(int paramInt)
  {
    super(null);
  }
  
  protected void a(dl paramdl)
  {
    paramdl.a(this, this.vc);
  }
  
  public AppStateManager.StateDeletedResult c(Status paramStatus)
  {
    return new AppStateManager.5.1(this, paramStatus);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager.5
 * JD-Core Version:    0.7.0.1
 */