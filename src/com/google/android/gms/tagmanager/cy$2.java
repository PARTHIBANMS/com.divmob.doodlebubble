package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class cy$2
  implements Handler.Callback
{
  cy$2(cy paramcy) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (cy.bG().equals(paramMessage.obj)))
    {
      this.Xq.bp();
      if ((cy.b(this.Xq) > 0) && (!cy.c(this.Xq))) {
        cy.d(this.Xq).sendMessageDelayed(cy.d(this.Xq).obtainMessage(1, cy.bG()), cy.b(this.Xq));
      }
    }
    return true;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.cy.2
 * JD-Core Version:    0.7.0.1
 */