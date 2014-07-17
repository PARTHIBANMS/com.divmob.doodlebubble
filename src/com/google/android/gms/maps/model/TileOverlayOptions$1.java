package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.g;

class TileOverlayOptions$1
  implements TileProvider
{
  private final g Qw = TileOverlayOptions.a(this.Qx);
  
  TileOverlayOptions$1(TileOverlayOptions paramTileOverlayOptions) {}
  
  public Tile getTile(int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Tile localTile = this.Qw.getTile(paramInt1, paramInt2, paramInt3);
      return localTile;
    }
    catch (RemoteException localRemoteException) {}
    return null;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions.1
 * JD-Core Version:    0.7.0.1
 */