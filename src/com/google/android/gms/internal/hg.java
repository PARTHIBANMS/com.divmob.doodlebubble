package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationRequestCreator;
import com.google.android.gms.location.a;
import com.google.android.gms.location.a.a;
import com.google.android.gms.location.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBoundsCreator;
import com.google.android.gms.maps.model.LatLngCreator;
import java.util.ArrayList;
import java.util.List;

public abstract interface hg
  extends IInterface
{
  public abstract void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void a(PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void a(PendingIntent paramPendingIntent, hf paramhf, String paramString)
    throws RemoteException;
  
  public abstract void a(Location paramLocation, int paramInt)
    throws RemoteException;
  
  public abstract void a(hf paramhf, String paramString)
    throws RemoteException;
  
  public abstract void a(hn paramhn, id paramid, hv paramhv)
    throws RemoteException;
  
  public abstract void a(hp paramhp, id paramid)
    throws RemoteException;
  
  public abstract void a(hr paramhr, id paramid, PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void a(id paramid, PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void a(LocationRequest paramLocationRequest, a parama)
    throws RemoteException;
  
  public abstract void a(LocationRequest paramLocationRequest, a parama, String paramString)
    throws RemoteException;
  
  public abstract void a(a parama)
    throws RemoteException;
  
  public abstract void a(LatLng paramLatLng, hn paramhn, id paramid, hv paramhv)
    throws RemoteException;
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, hn paramhn, id paramid, hv paramhv)
    throws RemoteException;
  
  public abstract void a(String paramString, id paramid, hv paramhv)
    throws RemoteException;
  
  public abstract void a(List<hx.a> paramList)
    throws RemoteException;
  
  public abstract void a(List<hj> paramList, PendingIntent paramPendingIntent, hf paramhf, String paramString)
    throws RemoteException;
  
  public abstract void a(String[] paramArrayOfString, hf paramhf, String paramString)
    throws RemoteException;
  
  public abstract Location aF(String paramString)
    throws RemoteException;
  
  public abstract b aG(String paramString)
    throws RemoteException;
  
  public abstract void b(String paramString, id paramid, hv paramhv)
    throws RemoteException;
  
  public abstract Location gk()
    throws RemoteException;
  
  public abstract void removeActivityUpdates(PendingIntent paramPendingIntent)
    throws RemoteException;
  
  public abstract void setMockLocation(Location paramLocation)
    throws RemoteException;
  
  public abstract void setMockMode(boolean paramBoolean)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements hg
  {
    public static hg P(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if ((localIInterface != null) && ((localIInterface instanceof hg))) {
        return (hg)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        ArrayList localArrayList = paramParcel1.createTypedArrayList(hj.CREATOR);
        int i15 = paramParcel1.readInt();
        PendingIntent localPendingIntent8 = null;
        if (i15 != 0) {
          localPendingIntent8 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        }
        a(localArrayList, localPendingIntent8, hf.a.O(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i14 = paramParcel1.readInt();
        PendingIntent localPendingIntent7 = null;
        if (i14 != 0) {
          localPendingIntent7 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        }
        a(localPendingIntent7, hf.a.O(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(paramParcel1.createStringArray(), hf.a.O(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(hf.a.O(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        long l = paramParcel1.readLong();
        int i12 = paramParcel1.readInt();
        boolean bool2 = false;
        if (i12 != 0) {
          bool2 = true;
        }
        int i13 = paramParcel1.readInt();
        PendingIntent localPendingIntent6 = null;
        if (i13 != 0) {
          localPendingIntent6 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        }
        a(l, bool2, localPendingIntent6);
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i11 = paramParcel1.readInt();
        PendingIntent localPendingIntent5 = null;
        if (i11 != 0) {
          localPendingIntent5 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        }
        removeActivityUpdates(localPendingIntent5);
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        Location localLocation4 = gk();
        paramParcel2.writeNoException();
        if (localLocation4 != null)
        {
          paramParcel2.writeInt(1);
          localLocation4.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i10 = paramParcel1.readInt();
        LocationRequest localLocationRequest3 = null;
        if (i10 != 0) {
          localLocationRequest3 = LocationRequest.CREATOR.createFromParcel(paramParcel1);
        }
        a(localLocationRequest3, a.a.N(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {}
        for (LocationRequest localLocationRequest2 = LocationRequest.CREATOR.createFromParcel(paramParcel1);; localLocationRequest2 = null)
        {
          int i9 = paramParcel1.readInt();
          PendingIntent localPendingIntent4 = null;
          if (i9 != 0) {
            localPendingIntent4 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          }
          a(localLocationRequest2, localPendingIntent4);
          paramParcel2.writeNoException();
          return true;
        }
      case 10: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(a.a.N(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 11: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i8 = paramParcel1.readInt();
        PendingIntent localPendingIntent3 = null;
        if (i8 != 0) {
          localPendingIntent3 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        }
        a(localPendingIntent3);
        paramParcel2.writeNoException();
        return true;
      case 12: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i7 = paramParcel1.readInt();
        boolean bool1 = false;
        if (i7 != 0) {
          bool1 = true;
        }
        setMockMode(bool1);
        paramParcel2.writeNoException();
        return true;
      case 13: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int i6 = paramParcel1.readInt();
        Location localLocation3 = null;
        if (i6 != 0) {
          localLocation3 = (Location)Location.CREATOR.createFromParcel(paramParcel1);
        }
        setMockLocation(localLocation3);
        paramParcel2.writeNoException();
        return true;
      case 14: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        LatLngBounds localLatLngBounds;
        int i5;
        hn localhn3;
        if (paramParcel1.readInt() != 0)
        {
          localLatLngBounds = LatLngBounds.CREATOR.createFromParcel(paramParcel1);
          i5 = paramParcel1.readInt();
          if (paramParcel1.readInt() == 0) {
            break label949;
          }
          localhn3 = hn.CREATOR.aw(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label955;
          }
        }
        for (id localid8 = id.CREATOR.aD(paramParcel1);; localid8 = null)
        {
          a(localLatLngBounds, i5, localhn3, localid8, hv.a.R(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localLatLngBounds = null;
          break;
          localhn3 = null;
          break label902;
        }
      case 15: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        String str2 = paramParcel1.readString();
        int i4 = paramParcel1.readInt();
        id localid7 = null;
        if (i4 != 0) {
          localid7 = id.CREATOR.aD(paramParcel1);
        }
        a(str2, localid7, hv.a.R(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 16: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        LatLng localLatLng;
        if (paramParcel1.readInt() != 0)
        {
          localLatLng = LatLng.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label1107;
          }
        }
        for (hn localhn2 = hn.CREATOR.aw(paramParcel1);; localhn2 = null)
        {
          int i3 = paramParcel1.readInt();
          id localid6 = null;
          if (i3 != 0) {
            localid6 = id.CREATOR.aD(paramParcel1);
          }
          a(localLatLng, localhn2, localid6, hv.a.R(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localLatLng = null;
          break;
        }
      case 17: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {}
        for (hn localhn1 = hn.CREATOR.aw(paramParcel1);; localhn1 = null)
        {
          int i2 = paramParcel1.readInt();
          id localid5 = null;
          if (i2 != 0) {
            localid5 = id.CREATOR.aD(paramParcel1);
          }
          a(localhn1, localid5, hv.a.R(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        }
      case 42: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        String str1 = paramParcel1.readString();
        int i1 = paramParcel1.readInt();
        id localid4 = null;
        if (i1 != 0) {
          localid4 = id.CREATOR.aD(paramParcel1);
        }
        b(str1, localid4, hv.a.R(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 18: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        hr localhr;
        if (paramParcel1.readInt() != 0)
        {
          localhr = hr.CREATOR.ay(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label1329;
          }
        }
        for (id localid3 = id.CREATOR.aD(paramParcel1);; localid3 = null)
        {
          int n = paramParcel1.readInt();
          PendingIntent localPendingIntent2 = null;
          if (n != 0) {
            localPendingIntent2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          }
          a(localhr, localid3, localPendingIntent2);
          paramParcel2.writeNoException();
          return true;
          localhr = null;
          break;
        }
      case 19: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {}
        for (id localid2 = id.CREATOR.aD(paramParcel1);; localid2 = null)
        {
          int m = paramParcel1.readInt();
          PendingIntent localPendingIntent1 = null;
          if (m != 0) {
            localPendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          }
          a(localid2, localPendingIntent1);
          paramParcel2.writeNoException();
          return true;
        }
      case 20: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        int k = paramParcel1.readInt();
        LocationRequest localLocationRequest1 = null;
        if (k != 0) {
          localLocationRequest1 = LocationRequest.CREATOR.createFromParcel(paramParcel1);
        }
        a(localLocationRequest1, a.a.N(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 21: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        Location localLocation2 = aF(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (localLocation2 != null)
        {
          paramParcel2.writeInt(1);
          localLocation2.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 24: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(paramParcel1.createTypedArrayList(hx.a.CREATOR));
        return true;
      case 25: 
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {}
        for (hp localhp = hp.CREATOR.ax(paramParcel1);; localhp = null)
        {
          int j = paramParcel1.readInt();
          id localid1 = null;
          if (j != 0) {
            localid1 = id.CREATOR.aD(paramParcel1);
          }
          a(localhp, localid1);
          return true;
        }
      case 26: 
        label902:
        label949:
        label955:
        label1107:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        label1329:
        int i = paramParcel1.readInt();
        Location localLocation1 = null;
        if (i != 0) {
          localLocation1 = (Location)Location.CREATOR.createFromParcel(paramParcel1);
        }
        a(localLocation1, paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      b localb = aG(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (localb != null)
      {
        paramParcel2.writeInt(1);
        localb.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    }
    
    private static class a
      implements hg
    {
      private IBinder ky;
      
      a(IBinder paramIBinder)
      {
        this.ky = paramIBinder;
      }
      
      /* Error */
      public void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore 5
        //   3: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 6
        //   8: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 7
        //   13: aload 6
        //   15: ldc 27
        //   17: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 6
        //   22: lload_1
        //   23: invokevirtual 35	android/os/Parcel:writeLong	(J)V
        //   26: iload_3
        //   27: ifeq +61 -> 88
        //   30: aload 6
        //   32: iload 5
        //   34: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   37: aload 4
        //   39: ifnull +55 -> 94
        //   42: aload 6
        //   44: iconst_1
        //   45: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   48: aload 4
        //   50: aload 6
        //   52: iconst_0
        //   53: invokevirtual 45	android/app/PendingIntent:writeToParcel	(Landroid/os/Parcel;I)V
        //   56: aload_0
        //   57: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   60: iconst_5
        //   61: aload 6
        //   63: aload 7
        //   65: iconst_0
        //   66: invokeinterface 51 5 0
        //   71: pop
        //   72: aload 7
        //   74: invokevirtual 54	android/os/Parcel:readException	()V
        //   77: aload 7
        //   79: invokevirtual 57	android/os/Parcel:recycle	()V
        //   82: aload 6
        //   84: invokevirtual 57	android/os/Parcel:recycle	()V
        //   87: return
        //   88: iconst_0
        //   89: istore 5
        //   91: goto -61 -> 30
        //   94: aload 6
        //   96: iconst_0
        //   97: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   100: goto -44 -> 56
        //   103: astore 8
        //   105: aload 7
        //   107: invokevirtual 57	android/os/Parcel:recycle	()V
        //   110: aload 6
        //   112: invokevirtual 57	android/os/Parcel:recycle	()V
        //   115: aload 8
        //   117: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	118	0	this	a
        //   0	118	1	paramLong	long
        //   0	118	3	paramBoolean	boolean
        //   0	118	4	paramPendingIntent	PendingIntent
        //   1	89	5	i	int
        //   6	105	6	localParcel1	Parcel
        //   11	95	7	localParcel2	Parcel
        //   103	13	8	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   13	26	103	finally
        //   30	37	103	finally
        //   42	56	103	finally
        //   56	77	103	finally
        //   94	100	103	finally
      }
      
      /* Error */
      public void a(PendingIntent paramPendingIntent)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 45	android/app/PendingIntent:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   33: bipush 11
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 51 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 54	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 57	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 57	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore 4
        //   67: aload_3
        //   68: invokevirtual 57	android/os/Parcel:recycle	()V
        //   71: aload_2
        //   72: invokevirtual 57	android/os/Parcel:recycle	()V
        //   75: aload 4
        //   77: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	78	0	this	a
        //   0	78	1	paramPendingIntent	PendingIntent
        //   3	69	2	localParcel1	Parcel
        //   7	61	3	localParcel2	Parcel
        //   65	11	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      public void a(PendingIntent paramPendingIntent, hf paramhf, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramPendingIntent != null)
            {
              localParcel1.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel1, 0);
              if (paramhf != null)
              {
                localIBinder = paramhf.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                localParcel1.writeString(paramString);
                this.ky.transact(2, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public void a(Location paramLocation, int paramInt)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 27
        //   12: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +50 -> 66
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 75	android/location/Location:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_3
        //   31: iload_2
        //   32: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   35: aload_0
        //   36: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   39: bipush 26
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 51 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 54	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 57	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 57	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   71: goto -41 -> 30
        //   74: astore 5
        //   76: aload 4
        //   78: invokevirtual 57	android/os/Parcel:recycle	()V
        //   81: aload_3
        //   82: invokevirtual 57	android/os/Parcel:recycle	()V
        //   85: aload 5
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	a
        //   0	88	1	paramLocation	Location
        //   0	88	2	paramInt	int
        //   3	79	3	localParcel1	Parcel
        //   7	70	4	localParcel2	Parcel
        //   74	12	5	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   9	15	74	finally
        //   19	30	74	finally
        //   30	56	74	finally
        //   66	71	74	finally
      }
      
      /* Error */
      public void a(hf paramhf, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 27
        //   12: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +52 -> 68
        //   19: aload_1
        //   20: invokeinterface 65 1 0
        //   25: astore 6
        //   27: aload_3
        //   28: aload 6
        //   30: invokevirtual 68	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   33: aload_3
        //   34: aload_2
        //   35: invokevirtual 71	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   38: aload_0
        //   39: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   42: iconst_4
        //   43: aload_3
        //   44: aload 4
        //   46: iconst_0
        //   47: invokeinterface 51 5 0
        //   52: pop
        //   53: aload 4
        //   55: invokevirtual 54	android/os/Parcel:readException	()V
        //   58: aload 4
        //   60: invokevirtual 57	android/os/Parcel:recycle	()V
        //   63: aload_3
        //   64: invokevirtual 57	android/os/Parcel:recycle	()V
        //   67: return
        //   68: aconst_null
        //   69: astore 6
        //   71: goto -44 -> 27
        //   74: astore 5
        //   76: aload 4
        //   78: invokevirtual 57	android/os/Parcel:recycle	()V
        //   81: aload_3
        //   82: invokevirtual 57	android/os/Parcel:recycle	()V
        //   85: aload 5
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	a
        //   0	88	1	paramhf	hf
        //   0	88	2	paramString	String
        //   3	79	3	localParcel1	Parcel
        //   7	70	4	localParcel2	Parcel
        //   74	12	5	localObject	Object
        //   25	45	6	localIBinder	IBinder
        // Exception table:
        //   from	to	target	type
        //   9	15	74	finally
        //   19	27	74	finally
        //   27	58	74	finally
      }
      
      public void a(hn paramhn, id paramid, hv paramhv)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramhn != null)
            {
              localParcel1.writeInt(1);
              paramhn.writeToParcel(localParcel1, 0);
              if (paramid != null)
              {
                localParcel1.writeInt(1);
                paramid.writeToParcel(localParcel1, 0);
                if (paramhv == null) {
                  break label136;
                }
                localIBinder = paramhv.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(17, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          continue;
          label136:
          IBinder localIBinder = null;
        }
      }
      
      public void a(hp paramhp, id paramid)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramhp != null)
            {
              localParcel.writeInt(1);
              paramhp.writeToParcel(localParcel, 0);
              if (paramid != null)
              {
                localParcel.writeInt(1);
                paramid.writeToParcel(localParcel, 0);
                this.ky.transact(25, localParcel, null, 1);
              }
            }
            else
            {
              localParcel.writeInt(0);
              continue;
            }
            localParcel.writeInt(0);
          }
          finally
          {
            localParcel.recycle();
          }
        }
      }
      
      public void a(hr paramhr, id paramid, PendingIntent paramPendingIntent)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramhr != null)
            {
              localParcel1.writeInt(1);
              paramhr.writeToParcel(localParcel1, 0);
              if (paramid != null)
              {
                localParcel1.writeInt(1);
                paramid.writeToParcel(localParcel1, 0);
                if (paramPendingIntent == null) {
                  break label134;
                }
                localParcel1.writeInt(1);
                paramPendingIntent.writeToParcel(localParcel1, 0);
                this.ky.transact(18, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          continue;
          label134:
          localParcel1.writeInt(0);
        }
      }
      
      public void a(id paramid, PendingIntent paramPendingIntent)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramid != null)
            {
              localParcel1.writeInt(1);
              paramid.writeToParcel(localParcel1, 0);
              if (paramPendingIntent != null)
              {
                localParcel1.writeInt(1);
                paramPendingIntent.writeToParcel(localParcel1, 0);
                this.ky.transact(19, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramLocationRequest != null)
            {
              localParcel1.writeInt(1);
              paramLocationRequest.writeToParcel(localParcel1, 0);
              if (paramPendingIntent != null)
              {
                localParcel1.writeInt(1);
                paramPendingIntent.writeToParcel(localParcel1, 0);
                this.ky.transact(9, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public void a(LocationRequest paramLocationRequest, a parama)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramLocationRequest != null)
            {
              localParcel1.writeInt(1);
              paramLocationRequest.writeToParcel(localParcel1, 0);
              if (parama != null)
              {
                localIBinder = parama.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(8, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public void a(LocationRequest paramLocationRequest, a parama, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramLocationRequest != null)
            {
              localParcel1.writeInt(1);
              paramLocationRequest.writeToParcel(localParcel1, 0);
              if (parama != null)
              {
                localIBinder = parama.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                localParcel1.writeString(paramString);
                this.ky.transact(20, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public void a(a parama)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +45 -> 60
        //   18: aload_1
        //   19: invokeinterface 103 1 0
        //   24: astore 5
        //   26: aload_2
        //   27: aload 5
        //   29: invokevirtual 68	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   32: aload_0
        //   33: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   36: bipush 10
        //   38: aload_2
        //   39: aload_3
        //   40: iconst_0
        //   41: invokeinterface 51 5 0
        //   46: pop
        //   47: aload_3
        //   48: invokevirtual 54	android/os/Parcel:readException	()V
        //   51: aload_3
        //   52: invokevirtual 57	android/os/Parcel:recycle	()V
        //   55: aload_2
        //   56: invokevirtual 57	android/os/Parcel:recycle	()V
        //   59: return
        //   60: aconst_null
        //   61: astore 5
        //   63: goto -37 -> 26
        //   66: astore 4
        //   68: aload_3
        //   69: invokevirtual 57	android/os/Parcel:recycle	()V
        //   72: aload_2
        //   73: invokevirtual 57	android/os/Parcel:recycle	()V
        //   76: aload 4
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   0	79	1	parama	a
        //   3	70	2	localParcel1	Parcel
        //   7	62	3	localParcel2	Parcel
        //   66	11	4	localObject	Object
        //   24	38	5	localIBinder	IBinder
        // Exception table:
        //   from	to	target	type
        //   8	14	66	finally
        //   18	26	66	finally
        //   26	51	66	finally
      }
      
      public void a(LatLng paramLatLng, hn paramhn, id paramid, hv paramhv)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramLatLng != null)
            {
              localParcel1.writeInt(1);
              paramLatLng.writeToParcel(localParcel1, 0);
              if (paramhn != null)
              {
                localParcel1.writeInt(1);
                paramhn.writeToParcel(localParcel1, 0);
                if (paramid == null) {
                  break label155;
                }
                localParcel1.writeInt(1);
                paramid.writeToParcel(localParcel1, 0);
                if (paramhv == null) {
                  break label164;
                }
                localIBinder = paramhv.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(16, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          continue;
          label155:
          localParcel1.writeInt(0);
          continue;
          label164:
          IBinder localIBinder = null;
        }
      }
      
      public void a(LatLngBounds paramLatLngBounds, int paramInt, hn paramhn, id paramid, hv paramhv)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (paramLatLngBounds != null)
            {
              localParcel1.writeInt(1);
              paramLatLngBounds.writeToParcel(localParcel1, 0);
              localParcel1.writeInt(paramInt);
              if (paramhn != null)
              {
                localParcel1.writeInt(1);
                paramhn.writeToParcel(localParcel1, 0);
                if (paramid == null) {
                  break label163;
                }
                localParcel1.writeInt(1);
                paramid.writeToParcel(localParcel1, 0);
                if (paramhv == null) {
                  break label172;
                }
                localIBinder = paramhv.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(14, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          continue;
          label163:
          localParcel1.writeInt(0);
          continue;
          label172:
          IBinder localIBinder = null;
        }
      }
      
      public void a(String paramString, id paramid, hv paramhv)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            localParcel1.writeString(paramString);
            if (paramid != null)
            {
              localParcel1.writeInt(1);
              paramid.writeToParcel(localParcel1, 0);
              if (paramhv != null)
              {
                localIBinder = paramhv.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(15, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public void a(List<hx.a> paramList)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
          localParcel.writeTypedList(paramList);
          this.ky.transact(24, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public void a(List<hj> paramList, PendingIntent paramPendingIntent, hf paramhf, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            localParcel1.writeTypedList(paramList);
            if (paramPendingIntent != null)
            {
              localParcel1.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel1, 0);
              if (paramhf != null)
              {
                localIBinder = paramhf.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                localParcel1.writeString(paramString);
                this.ky.transact(1, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public void a(String[] paramArrayOfString, hf paramhf, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 27
        //   14: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 4
        //   19: aload_1
        //   20: invokevirtual 124	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
        //   23: aload_2
        //   24: ifnull +56 -> 80
        //   27: aload_2
        //   28: invokeinterface 65 1 0
        //   33: astore 7
        //   35: aload 4
        //   37: aload 7
        //   39: invokevirtual 68	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   42: aload 4
        //   44: aload_3
        //   45: invokevirtual 71	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   48: aload_0
        //   49: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   52: iconst_3
        //   53: aload 4
        //   55: aload 5
        //   57: iconst_0
        //   58: invokeinterface 51 5 0
        //   63: pop
        //   64: aload 5
        //   66: invokevirtual 54	android/os/Parcel:readException	()V
        //   69: aload 5
        //   71: invokevirtual 57	android/os/Parcel:recycle	()V
        //   74: aload 4
        //   76: invokevirtual 57	android/os/Parcel:recycle	()V
        //   79: return
        //   80: aconst_null
        //   81: astore 7
        //   83: goto -48 -> 35
        //   86: astore 6
        //   88: aload 5
        //   90: invokevirtual 57	android/os/Parcel:recycle	()V
        //   93: aload 4
        //   95: invokevirtual 57	android/os/Parcel:recycle	()V
        //   98: aload 6
        //   100: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	101	0	this	a
        //   0	101	1	paramArrayOfString	String[]
        //   0	101	2	paramhf	hf
        //   0	101	3	paramString	String
        //   3	91	4	localParcel1	Parcel
        //   8	81	5	localParcel2	Parcel
        //   86	13	6	localObject	Object
        //   33	49	7	localIBinder	IBinder
        // Exception table:
        //   from	to	target	type
        //   10	23	86	finally
        //   27	35	86	finally
        //   35	69	86	finally
      }
      
      /* Error */
      public Location aF(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 71	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   23: bipush 21
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 51 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 54	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 130	android/os/Parcel:readInt	()I
        //   42: ifeq +28 -> 70
        //   45: getstatic 134	android/location/Location:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 140 2 0
        //   54: checkcast 74	android/location/Location
        //   57: astore 6
        //   59: aload_3
        //   60: invokevirtual 57	android/os/Parcel:recycle	()V
        //   63: aload_2
        //   64: invokevirtual 57	android/os/Parcel:recycle	()V
        //   67: aload 6
        //   69: areturn
        //   70: aconst_null
        //   71: astore 6
        //   73: goto -14 -> 59
        //   76: astore 4
        //   78: aload_3
        //   79: invokevirtual 57	android/os/Parcel:recycle	()V
        //   82: aload_2
        //   83: invokevirtual 57	android/os/Parcel:recycle	()V
        //   86: aload 4
        //   88: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	89	0	this	a
        //   0	89	1	paramString	String
        //   3	80	2	localParcel1	Parcel
        //   7	72	3	localParcel2	Parcel
        //   76	11	4	localObject	Object
        //   57	15	6	localLocation	Location
        // Exception table:
        //   from	to	target	type
        //   8	59	76	finally
      }
      
      /* Error */
      public b aG(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 71	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   23: bipush 34
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 51 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 54	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 130	android/os/Parcel:readInt	()I
        //   42: ifeq +27 -> 69
        //   45: getstatic 147	com/google/android/gms/location/b:CREATOR	Lcom/google/android/gms/location/c;
        //   48: aload_3
        //   49: invokevirtual 153	com/google/android/gms/location/c:au	(Landroid/os/Parcel;)Lcom/google/android/gms/location/b;
        //   52: astore 7
        //   54: aload 7
        //   56: astore 6
        //   58: aload_3
        //   59: invokevirtual 57	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 57	android/os/Parcel:recycle	()V
        //   66: aload 6
        //   68: areturn
        //   69: aconst_null
        //   70: astore 6
        //   72: goto -14 -> 58
        //   75: astore 4
        //   77: aload_3
        //   78: invokevirtual 57	android/os/Parcel:recycle	()V
        //   81: aload_2
        //   82: invokevirtual 57	android/os/Parcel:recycle	()V
        //   85: aload 4
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	a
        //   0	88	1	paramString	String
        //   3	79	2	localParcel1	Parcel
        //   7	71	3	localParcel2	Parcel
        //   75	11	4	localObject	Object
        //   56	15	6	localb1	b
        //   52	3	7	localb2	b
        // Exception table:
        //   from	to	target	type
        //   8	54	75	finally
      }
      
      public IBinder asBinder()
      {
        return this.ky;
      }
      
      public void b(String paramString, id paramid, hv paramhv)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            localParcel1.writeString(paramString);
            if (paramid != null)
            {
              localParcel1.writeInt(1);
              paramid.writeToParcel(localParcel1, 0);
              if (paramhv != null)
              {
                localIBinder = paramhv.asBinder();
                localParcel1.writeStrongBinder(localIBinder);
                this.ky.transact(42, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            IBinder localIBinder = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public Location gk()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   18: bipush 7
        //   20: aload_1
        //   21: aload_2
        //   22: iconst_0
        //   23: invokeinterface 51 5 0
        //   28: pop
        //   29: aload_2
        //   30: invokevirtual 54	android/os/Parcel:readException	()V
        //   33: aload_2
        //   34: invokevirtual 130	android/os/Parcel:readInt	()I
        //   37: ifeq +28 -> 65
        //   40: getstatic 134	android/location/Location:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_2
        //   44: invokeinterface 140 2 0
        //   49: checkcast 74	android/location/Location
        //   52: astore 5
        //   54: aload_2
        //   55: invokevirtual 57	android/os/Parcel:recycle	()V
        //   58: aload_1
        //   59: invokevirtual 57	android/os/Parcel:recycle	()V
        //   62: aload 5
        //   64: areturn
        //   65: aconst_null
        //   66: astore 5
        //   68: goto -14 -> 54
        //   71: astore_3
        //   72: aload_2
        //   73: invokevirtual 57	android/os/Parcel:recycle	()V
        //   76: aload_1
        //   77: invokevirtual 57	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	82	0	this	a
        //   3	74	1	localParcel1	Parcel
        //   7	66	2	localParcel2	Parcel
        //   71	10	3	localObject	Object
        //   52	15	5	localLocation	Location
        // Exception table:
        //   from	to	target	type
        //   8	54	71	finally
      }
      
      /* Error */
      public void removeActivityUpdates(PendingIntent paramPendingIntent)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 45	android/app/PendingIntent:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   33: bipush 6
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 51 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 54	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 57	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 57	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore 4
        //   67: aload_3
        //   68: invokevirtual 57	android/os/Parcel:recycle	()V
        //   71: aload_2
        //   72: invokevirtual 57	android/os/Parcel:recycle	()V
        //   75: aload 4
        //   77: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	78	0	this	a
        //   0	78	1	paramPendingIntent	PendingIntent
        //   3	69	2	localParcel1	Parcel
        //   7	61	3	localParcel2	Parcel
        //   65	11	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      /* Error */
      public void setMockLocation(Location paramLocation)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 75	android/location/Location:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 15	com/google/android/gms/internal/hg$a$a:ky	Landroid/os/IBinder;
        //   33: bipush 13
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 51 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 54	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 57	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 57	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore 4
        //   67: aload_3
        //   68: invokevirtual 57	android/os/Parcel:recycle	()V
        //   71: aload_2
        //   72: invokevirtual 57	android/os/Parcel:recycle	()V
        //   75: aload 4
        //   77: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	78	0	this	a
        //   0	78	1	paramLocation	Location
        //   3	69	2	localParcel1	Parcel
        //   7	61	3	localParcel2	Parcel
        //   65	11	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      public void setMockMode(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
          int i = 0;
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.ky.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.hg
 * JD-Core Version:    0.7.0.1
 */