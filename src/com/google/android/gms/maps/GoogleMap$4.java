package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.maps.internal.o.a;

class GoogleMap$4
  extends o.a
{
  GoogleMap$4(GoogleMap paramGoogleMap, GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback) {}
  
  public void c(b paramb)
    throws RemoteException
  {
    this.OS.onSnapshotReady((Bitmap)c.b(paramb));
  }
  
  public void onSnapshotReady(Bitmap paramBitmap)
    throws RemoteException
  {
    this.OS.onSnapshotReady(paramBitmap);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.4
 * JD-Core Version:    0.7.0.1
 */