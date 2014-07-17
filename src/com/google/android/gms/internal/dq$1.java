package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import java.util.Map;

class dq$1
  extends dt.a
{
  dq$1(dq paramdq) {}
  
  private boolean D(int paramInt)
  {
    synchronized ()
    {
      if (dq.h(this.xW) != null)
      {
        dq.h(this.xW).b(new Status(paramInt));
        dq.b(this.xW, null);
        return true;
      }
      return false;
    }
  }
  
  private void b(long paramLong, int paramInt)
  {
    synchronized (dq.g(this.xW))
    {
      a.c localc = (a.c)dq.g(this.xW).remove(Long.valueOf(paramLong));
      if (localc != null) {
        localc.b(new Status(paramInt));
      }
      return;
    }
  }
  
  public void A(int paramInt)
  {
    synchronized ()
    {
      if (dq.b(this.xW) != null)
      {
        dq.b(this.xW).b(new dq.a(new Status(paramInt)));
        dq.a(this.xW, null);
      }
      return;
    }
  }
  
  public void B(int paramInt)
  {
    D(paramInt);
  }
  
  public void C(int paramInt)
  {
    D(paramInt);
  }
  
  public void a(ApplicationMetadata paramApplicationMetadata, String paramString1, String paramString2, boolean paramBoolean)
  {
    dq.a(this.xW, paramApplicationMetadata);
    dq.a(this.xW, paramApplicationMetadata.getApplicationId());
    dq.b(this.xW, paramString2);
    synchronized (dq.dd())
    {
      if (dq.b(this.xW) != null)
      {
        dq.b(this.xW).b(new dq.a(new Status(0), paramApplicationMetadata, paramString1, paramString2, paramBoolean));
        dq.a(this.xW, null);
      }
      return;
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    b(paramLong, 0);
  }
  
  public void a(String paramString, long paramLong, int paramInt)
  {
    b(paramLong, paramInt);
  }
  
  public void b(String paramString, double paramDouble, boolean paramBoolean)
  {
    dq.d(this.xW).post(new dq.1.2(this, paramString, paramDouble, paramBoolean));
  }
  
  public void b(String paramString, byte[] paramArrayOfByte)
  {
    du localdu = dq.dc();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramArrayOfByte.length);
    localdu.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", arrayOfObject);
  }
  
  public void d(String paramString1, String paramString2)
  {
    dq.dc().b("Receive (type=text, ns=%s) %s", new Object[] { paramString1, paramString2 });
    dq.d(this.xW).post(new dq.1.3(this, paramString1, paramString2));
  }
  
  public void onApplicationDisconnected(int paramInt)
  {
    dq.a(this.xW, null);
    dq.b(this.xW, null);
    if (D(paramInt)) {}
    while (dq.c(this.xW) == null) {
      return;
    }
    dq.d(this.xW).post(new dq.1.1(this, paramInt));
  }
  
  public void z(int paramInt)
  {
    du localdu = dq.dc();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localdu.b("ICastDeviceControllerListener.onDisconnected: %d", arrayOfObject);
    dq.a(this.xW, false);
    dq.a(this.xW, null);
    if (paramInt != 0) {
      this.xW.O(2);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dq.1
 * JD-Core Version:    0.7.0.1
 */