package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.b.a;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.f;

public final class GoogleMap
{
  public static final int MAP_TYPE_HYBRID = 4;
  public static final int MAP_TYPE_NONE = 0;
  public static final int MAP_TYPE_NORMAL = 1;
  public static final int MAP_TYPE_SATELLITE = 2;
  public static final int MAP_TYPE_TERRAIN = 3;
  private final IGoogleMapDelegate OK;
  private UiSettings OL;
  
  protected GoogleMap(IGoogleMapDelegate paramIGoogleMapDelegate)
  {
    this.OK = ((IGoogleMapDelegate)er.f(paramIGoogleMapDelegate));
  }
  
  public final Circle addCircle(CircleOptions paramCircleOptions)
  {
    try
    {
      Circle localCircle = new Circle(this.OK.addCircle(paramCircleOptions));
      return localCircle;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
  {
    try
    {
      com.google.android.gms.maps.model.internal.c localc = this.OK.addGroundOverlay(paramGroundOverlayOptions);
      if (localc != null)
      {
        GroundOverlay localGroundOverlay = new GroundOverlay(localc);
        return localGroundOverlay;
      }
      return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Marker addMarker(MarkerOptions paramMarkerOptions)
  {
    try
    {
      d locald = this.OK.addMarker(paramMarkerOptions);
      if (locald != null)
      {
        Marker localMarker = new Marker(locald);
        return localMarker;
      }
      return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Polygon addPolygon(PolygonOptions paramPolygonOptions)
  {
    try
    {
      Polygon localPolygon = new Polygon(this.OK.addPolygon(paramPolygonOptions));
      return localPolygon;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Polyline addPolyline(PolylineOptions paramPolylineOptions)
  {
    try
    {
      Polyline localPolyline = new Polyline(this.OK.addPolyline(paramPolylineOptions));
      return localPolyline;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
  {
    try
    {
      f localf = this.OK.addTileOverlay(paramTileOverlayOptions);
      if (localf != null)
      {
        TileOverlay localTileOverlay = new TileOverlay(localf);
        return localTileOverlay;
      }
      return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void animateCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      this.OK.animateCamera(paramCameraUpdate.gK());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  /* Error */
  public final void animateCamera(CameraUpdate paramCameraUpdate, int paramInt, CancelableCallback paramCancelableCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/google/android/gms/maps/GoogleMap:OK	Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    //   4: astore 5
    //   6: aload_1
    //   7: invokevirtual 109	com/google/android/gms/maps/CameraUpdate:gK	()Lcom/google/android/gms/dynamic/b;
    //   10: astore 6
    //   12: aload_3
    //   13: ifnonnull +19 -> 32
    //   16: aconst_null
    //   17: astore 7
    //   19: aload 5
    //   21: aload 6
    //   23: iload_2
    //   24: aload 7
    //   26: invokeinterface 117 4 0
    //   31: return
    //   32: new 119	com/google/android/gms/maps/GoogleMap$a
    //   35: dup
    //   36: aload_3
    //   37: invokespecial 122	com/google/android/gms/maps/GoogleMap$a:<init>	(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    //   40: astore 7
    //   42: goto -23 -> 19
    //   45: astore 4
    //   47: new 48	com/google/android/gms/maps/model/RuntimeRemoteException
    //   50: dup
    //   51: aload 4
    //   53: invokespecial 51	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	GoogleMap
    //   0	57	1	paramCameraUpdate	CameraUpdate
    //   0	57	2	paramInt	int
    //   0	57	3	paramCancelableCallback	CancelableCallback
    //   45	7	4	localRemoteException	RemoteException
    //   4	16	5	localIGoogleMapDelegate	IGoogleMapDelegate
    //   10	12	6	localb	b
    //   17	24	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	12	45	android/os/RemoteException
    //   19	31	45	android/os/RemoteException
    //   32	42	45	android/os/RemoteException
  }
  
  /* Error */
  public final void animateCamera(CameraUpdate paramCameraUpdate, CancelableCallback paramCancelableCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/google/android/gms/maps/GoogleMap:OK	Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    //   4: astore 4
    //   6: aload_1
    //   7: invokevirtual 109	com/google/android/gms/maps/CameraUpdate:gK	()Lcom/google/android/gms/dynamic/b;
    //   10: astore 5
    //   12: aload_2
    //   13: ifnonnull +18 -> 31
    //   16: aconst_null
    //   17: astore 6
    //   19: aload 4
    //   21: aload 5
    //   23: aload 6
    //   25: invokeinterface 127 3 0
    //   30: return
    //   31: new 119	com/google/android/gms/maps/GoogleMap$a
    //   34: dup
    //   35: aload_2
    //   36: invokespecial 122	com/google/android/gms/maps/GoogleMap$a:<init>	(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    //   39: astore 6
    //   41: goto -22 -> 19
    //   44: astore_3
    //   45: new 48	com/google/android/gms/maps/model/RuntimeRemoteException
    //   48: dup
    //   49: aload_3
    //   50: invokespecial 51	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	GoogleMap
    //   0	54	1	paramCameraUpdate	CameraUpdate
    //   0	54	2	paramCancelableCallback	CancelableCallback
    //   44	6	3	localRemoteException	RemoteException
    //   4	16	4	localIGoogleMapDelegate	IGoogleMapDelegate
    //   10	12	5	localb	b
    //   17	23	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	12	44	android/os/RemoteException
    //   19	30	44	android/os/RemoteException
    //   31	41	44	android/os/RemoteException
  }
  
  public final void clear()
  {
    try
    {
      this.OK.clear();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  IGoogleMapDelegate gM()
  {
    return this.OK;
  }
  
  public final CameraPosition getCameraPosition()
  {
    try
    {
      CameraPosition localCameraPosition = this.OK.getCameraPosition();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int getMapType()
  {
    try
    {
      int i = this.OK.getMapType();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getMaxZoomLevel()
  {
    try
    {
      float f = this.OK.getMaxZoomLevel();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getMinZoomLevel()
  {
    try
    {
      float f = this.OK.getMinZoomLevel();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  @Deprecated
  public final Location getMyLocation()
  {
    try
    {
      Location localLocation = this.OK.getMyLocation();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Projection getProjection()
  {
    try
    {
      Projection localProjection = new Projection(this.OK.getProjection());
      return localProjection;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final UiSettings getUiSettings()
  {
    try
    {
      if (this.OL == null) {
        this.OL = new UiSettings(this.OK.getUiSettings());
      }
      UiSettings localUiSettings = this.OL;
      return localUiSettings;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isBuildingsEnabled()
  {
    try
    {
      boolean bool = this.OK.isBuildingsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isIndoorEnabled()
  {
    try
    {
      boolean bool = this.OK.isIndoorEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isMyLocationEnabled()
  {
    try
    {
      boolean bool = this.OK.isMyLocationEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isTrafficEnabled()
  {
    try
    {
      boolean bool = this.OK.isTrafficEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void moveCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      this.OK.moveCamera(paramCameraUpdate.gK());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setBuildingsEnabled(boolean paramBoolean)
  {
    try
    {
      this.OK.setBuildingsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean setIndoorEnabled(boolean paramBoolean)
  {
    try
    {
      boolean bool = this.OK.setIndoorEnabled(paramBoolean);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setInfoWindowAdapter(InfoWindowAdapter paramInfoWindowAdapter)
  {
    if (paramInfoWindowAdapter == null) {}
    try
    {
      this.OK.setInfoWindowAdapter(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setInfoWindowAdapter(new GoogleMap.11(this, paramInfoWindowAdapter));
  }
  
  public final void setLocationSource(LocationSource paramLocationSource)
  {
    if (paramLocationSource == null) {}
    try
    {
      this.OK.setLocationSource(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setLocationSource(new GoogleMap.1(this, paramLocationSource));
  }
  
  public final void setMapType(int paramInt)
  {
    try
    {
      this.OK.setMapType(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMyLocationEnabled(boolean paramBoolean)
  {
    try
    {
      this.OK.setMyLocationEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setOnCameraChangeListener(OnCameraChangeListener paramOnCameraChangeListener)
  {
    if (paramOnCameraChangeListener == null) {}
    try
    {
      this.OK.setOnCameraChangeListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnCameraChangeListener(new GoogleMap.5(this, paramOnCameraChangeListener));
  }
  
  public final void setOnInfoWindowClickListener(OnInfoWindowClickListener paramOnInfoWindowClickListener)
  {
    if (paramOnInfoWindowClickListener == null) {}
    try
    {
      this.OK.setOnInfoWindowClickListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnInfoWindowClickListener(new GoogleMap.10(this, paramOnInfoWindowClickListener));
  }
  
  public final void setOnMapClickListener(OnMapClickListener paramOnMapClickListener)
  {
    if (paramOnMapClickListener == null) {}
    try
    {
      this.OK.setOnMapClickListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMapClickListener(new GoogleMap.6(this, paramOnMapClickListener));
  }
  
  public void setOnMapLoadedCallback(OnMapLoadedCallback paramOnMapLoadedCallback)
  {
    if (paramOnMapLoadedCallback == null) {}
    try
    {
      this.OK.setOnMapLoadedCallback(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMapLoadedCallback(new GoogleMap.3(this, paramOnMapLoadedCallback));
  }
  
  public final void setOnMapLongClickListener(OnMapLongClickListener paramOnMapLongClickListener)
  {
    if (paramOnMapLongClickListener == null) {}
    try
    {
      this.OK.setOnMapLongClickListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMapLongClickListener(new GoogleMap.7(this, paramOnMapLongClickListener));
  }
  
  public final void setOnMarkerClickListener(OnMarkerClickListener paramOnMarkerClickListener)
  {
    if (paramOnMarkerClickListener == null) {}
    try
    {
      this.OK.setOnMarkerClickListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMarkerClickListener(new GoogleMap.8(this, paramOnMarkerClickListener));
  }
  
  public final void setOnMarkerDragListener(OnMarkerDragListener paramOnMarkerDragListener)
  {
    if (paramOnMarkerDragListener == null) {}
    try
    {
      this.OK.setOnMarkerDragListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMarkerDragListener(new GoogleMap.9(this, paramOnMarkerDragListener));
  }
  
  public final void setOnMyLocationButtonClickListener(OnMyLocationButtonClickListener paramOnMyLocationButtonClickListener)
  {
    if (paramOnMyLocationButtonClickListener == null) {}
    try
    {
      this.OK.setOnMyLocationButtonClickListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMyLocationButtonClickListener(new GoogleMap.2(this, paramOnMyLocationButtonClickListener));
  }
  
  @Deprecated
  public final void setOnMyLocationChangeListener(OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    if (paramOnMyLocationChangeListener == null) {}
    try
    {
      this.OK.setOnMyLocationChangeListener(null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    this.OK.setOnMyLocationChangeListener(new GoogleMap.12(this, paramOnMyLocationChangeListener));
  }
  
  public final void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      this.OK.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setTrafficEnabled(boolean paramBoolean)
  {
    try
    {
      this.OK.setTrafficEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void snapshot(SnapshotReadyCallback paramSnapshotReadyCallback)
  {
    snapshot(paramSnapshotReadyCallback, null);
  }
  
  public final void snapshot(SnapshotReadyCallback paramSnapshotReadyCallback, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {}
    for (b localb = com.google.android.gms.dynamic.c.h(paramBitmap);; localb = null)
    {
      com.google.android.gms.dynamic.c localc = (com.google.android.gms.dynamic.c)localb;
      try
      {
        this.OK.snapshot(new GoogleMap.4(this, paramSnapshotReadyCallback), localc);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  public final void stopAnimation()
  {
    try
    {
      this.OK.stopAnimation();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static abstract interface CancelableCallback
  {
    public abstract void onCancel();
    
    public abstract void onFinish();
  }
  
  public static abstract interface InfoWindowAdapter
  {
    public abstract View getInfoContents(Marker paramMarker);
    
    public abstract View getInfoWindow(Marker paramMarker);
  }
  
  public static abstract interface OnCameraChangeListener
  {
    public abstract void onCameraChange(CameraPosition paramCameraPosition);
  }
  
  public static abstract interface OnInfoWindowClickListener
  {
    public abstract void onInfoWindowClick(Marker paramMarker);
  }
  
  public static abstract interface OnMapClickListener
  {
    public abstract void onMapClick(LatLng paramLatLng);
  }
  
  public static abstract interface OnMapLoadedCallback
  {
    public abstract void onMapLoaded();
  }
  
  public static abstract interface OnMapLongClickListener
  {
    public abstract void onMapLongClick(LatLng paramLatLng);
  }
  
  public static abstract interface OnMarkerClickListener
  {
    public abstract boolean onMarkerClick(Marker paramMarker);
  }
  
  public static abstract interface OnMarkerDragListener
  {
    public abstract void onMarkerDrag(Marker paramMarker);
    
    public abstract void onMarkerDragEnd(Marker paramMarker);
    
    public abstract void onMarkerDragStart(Marker paramMarker);
  }
  
  public static abstract interface OnMyLocationButtonClickListener
  {
    public abstract boolean onMyLocationButtonClick();
  }
  
  @Deprecated
  public static abstract interface OnMyLocationChangeListener
  {
    public abstract void onMyLocationChange(Location paramLocation);
  }
  
  public static abstract interface SnapshotReadyCallback
  {
    public abstract void onSnapshotReady(Bitmap paramBitmap);
  }
  
  private static final class a
    extends b.a
  {
    private final GoogleMap.CancelableCallback Pb;
    
    a(GoogleMap.CancelableCallback paramCancelableCallback)
    {
      this.Pb = paramCancelableCallback;
    }
    
    public void onCancel()
    {
      this.Pb.onCancel();
    }
    
    public void onFinish()
    {
      this.Pb.onFinish();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMap
 * JD-Core Version:    0.7.0.1
 */