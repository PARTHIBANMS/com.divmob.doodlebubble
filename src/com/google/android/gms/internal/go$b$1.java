package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.Set;

class go$b$1
  implements Requests.UpdateRequestsResult
{
  go$b$1(go.b paramb, Status paramStatus) {}
  
  public Set<String> getRequestIds()
  {
    return null;
  }
  
  public int getRequestOutcome(String paramString)
  {
    throw new IllegalArgumentException("Unknown request ID " + paramString);
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.go.b.1
 * JD-Core Version:    0.7.0.1
 */