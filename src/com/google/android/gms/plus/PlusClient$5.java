package com.google.android.gms.plus;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

class PlusClient$5
  implements a.c<People.LoadPeopleResult>
{
  PlusClient$5(PlusClient paramPlusClient, PlusClient.OnPeopleLoadedListener paramOnPeopleLoadedListener) {}
  
  public void a(People.LoadPeopleResult paramLoadPeopleResult)
  {
    this.QQ.onPeopleLoaded(paramLoadPeopleResult.getStatus().dG(), paramLoadPeopleResult.getPersonBuffer(), paramLoadPeopleResult.getNextPageToken());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusClient.5
 * JD-Core Version:    0.7.0.1
 */