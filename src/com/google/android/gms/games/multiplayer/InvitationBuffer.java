package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class InvitationBuffer
  extends d<Invitation>
{
  public InvitationBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected Invitation getEntry(int paramInt1, int paramInt2)
  {
    return new b(this.zU, paramInt1, paramInt2);
  }
  
  protected String getPrimaryDataMarkerColumn()
  {
    return "external_invitation_id";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationBuffer
 * JD-Core Version:    0.7.0.1
 */