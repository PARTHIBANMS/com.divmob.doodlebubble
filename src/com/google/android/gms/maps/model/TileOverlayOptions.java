package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.g.a;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final TileOverlayOptionsCreator CREATOR = new TileOverlayOptionsCreator();
  private float PP;
  private boolean PQ = true;
  private g Qt;
  private TileProvider Qu;
  private boolean Qv = true;
  private final int wj;
  
  public TileOverlayOptions()
  {
    this.wj = 1;
  }
  
  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    this.wj = paramInt;
    this.Qt = g.a.au(paramIBinder);
    if (this.Qt == null) {}
    for (TileOverlayOptions.1 local1 = null;; local1 = new TileOverlayOptions.1(this))
    {
      this.Qu = local1;
      this.PQ = paramBoolean1;
      this.PP = paramFloat;
      this.Qv = paramBoolean2;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public TileOverlayOptions fadeIn(boolean paramBoolean)
  {
    this.Qv = paramBoolean;
    return this;
  }
  
  public boolean getFadeIn()
  {
    return this.Qv;
  }
  
  public TileProvider getTileProvider()
  {
    return this.Qu;
  }
  
  int getVersionCode()
  {
    return this.wj;
  }
  
  public float getZIndex()
  {
    return this.PP;
  }
  
  IBinder hh()
  {
    return this.Qt.asBinder();
  }
  
  public boolean isVisible()
  {
    return this.PQ;
  }
  
  public TileOverlayOptions tileProvider(TileProvider paramTileProvider)
  {
    this.Qu = paramTileProvider;
    if (this.Qu == null) {}
    for (TileOverlayOptions.2 local2 = null;; local2 = new TileOverlayOptions.2(this, paramTileProvider))
    {
      this.Qt = local2;
      return this;
    }
  }
  
  public TileOverlayOptions visible(boolean paramBoolean)
  {
    this.PQ = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (r.hc())
    {
      j.a(this, paramParcel, paramInt);
      return;
    }
    TileOverlayOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public TileOverlayOptions zIndex(float paramFloat)
  {
    this.PP = paramFloat;
    return this;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * JD-Core Version:    0.7.0.1
 */