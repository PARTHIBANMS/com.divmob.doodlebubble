package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class GameRequestBuffer
  extends d<GameRequest>
{
  public GameRequestBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected GameRequest getEntry(int paramInt1, int paramInt2)
  {
    return new a(this.zU, paramInt1, paramInt2);
  }
  
  protected String getPrimaryDataMarkerColumn()
  {
    return "external_request_id";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.request.GameRequestBuffer
 * JD-Core Version:    0.7.0.1
 */