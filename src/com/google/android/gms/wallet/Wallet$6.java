package com.google.android.gms.wallet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.jg;

final class Wallet$6
  extends Wallet.a
{
  Wallet$6(NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest) {}
  
  protected void a(jg paramjg)
  {
    paramjg.notifyTransactionStatus(this.Zv);
    a(Status.zQ);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.wallet.Wallet.6
 * JD-Core Version:    0.7.0.1
 */