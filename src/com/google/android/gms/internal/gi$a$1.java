package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;

class gi$a$1
  implements Invitations.LoadInvitationsResult
{
  gi$a$1(gi.a parama, Status paramStatus) {}
  
  public InvitationBuffer getInvitations()
  {
    return new InvitationBuffer(DataHolder.empty(14));
  }
  
  public Status getStatus()
  {
    return this.vb;
  }
  
  public void release() {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gi.a.1
 * JD-Core Version:    0.7.0.1
 */