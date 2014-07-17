package com.google.android.gms.plus;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

class PlusClient$1
  implements a.c<Moments.LoadMomentsResult>
{
  PlusClient$1(PlusClient paramPlusClient, PlusClient.OnMomentsLoadedListener paramOnMomentsLoadedListener) {}
  
  public void a(Moments.LoadMomentsResult paramLoadMomentsResult)
  {
    this.QO.onMomentsLoaded(paramLoadMomentsResult.getStatus().dG(), paramLoadMomentsResult.getMomentBuffer(), paramLoadMomentsResult.getNextPageToken(), paramLoadMomentsResult.getUpdated());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusClient.1
 * JD-Core Version:    0.7.0.1
 */