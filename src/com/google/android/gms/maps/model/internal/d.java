package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.b.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngCreator;

public abstract interface d
  extends IInterface
{
  public abstract float getAlpha()
    throws RemoteException;
  
  public abstract String getId()
    throws RemoteException;
  
  public abstract LatLng getPosition()
    throws RemoteException;
  
  public abstract float getRotation()
    throws RemoteException;
  
  public abstract String getSnippet()
    throws RemoteException;
  
  public abstract String getTitle()
    throws RemoteException;
  
  public abstract boolean h(d paramd)
    throws RemoteException;
  
  public abstract int hashCodeRemote()
    throws RemoteException;
  
  public abstract void hideInfoWindow()
    throws RemoteException;
  
  public abstract void i(b paramb)
    throws RemoteException;
  
  public abstract boolean isDraggable()
    throws RemoteException;
  
  public abstract boolean isFlat()
    throws RemoteException;
  
  public abstract boolean isInfoWindowShown()
    throws RemoteException;
  
  public abstract boolean isVisible()
    throws RemoteException;
  
  public abstract void remove()
    throws RemoteException;
  
  public abstract void setAlpha(float paramFloat)
    throws RemoteException;
  
  public abstract void setAnchor(float paramFloat1, float paramFloat2)
    throws RemoteException;
  
  public abstract void setDraggable(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setFlat(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setInfoWindowAnchor(float paramFloat1, float paramFloat2)
    throws RemoteException;
  
  public abstract void setPosition(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract void setRotation(float paramFloat)
    throws RemoteException;
  
  public abstract void setSnippet(String paramString)
    throws RemoteException;
  
  public abstract void setTitle(String paramString)
    throws RemoteException;
  
  public abstract void setVisible(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void showInfoWindow()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements d
  {
    public static d aq(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof d))) {
        return (d)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        remove();
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        String str3 = getId();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str3);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        if (paramParcel1.readInt() != 0) {}
        for (LatLng localLatLng2 = LatLng.CREATOR.createFromParcel(paramParcel1);; localLatLng2 = null)
        {
          setPosition(localLatLng2);
          paramParcel2.writeNoException();
          return true;
        }
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        LatLng localLatLng1 = getPosition();
        paramParcel2.writeNoException();
        if (localLatLng1 != null)
        {
          paramParcel2.writeInt(1);
          localLatLng1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setTitle(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        String str2 = getTitle();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str2);
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setSnippet(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        String str1 = getSnippet();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        int i4 = paramParcel1.readInt();
        boolean bool8 = false;
        if (i4 != 0) {
          bool8 = true;
        }
        setDraggable(bool8);
        paramParcel2.writeNoException();
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        boolean bool7 = isDraggable();
        paramParcel2.writeNoException();
        int i3 = 0;
        if (bool7) {
          i3 = 1;
        }
        paramParcel2.writeInt(i3);
        return true;
      case 11: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        showInfoWindow();
        paramParcel2.writeNoException();
        return true;
      case 12: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        hideInfoWindow();
        paramParcel2.writeNoException();
        return true;
      case 13: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        boolean bool6 = isInfoWindowShown();
        paramParcel2.writeNoException();
        int i2 = 0;
        if (bool6) {
          i2 = 1;
        }
        paramParcel2.writeInt(i2);
        return true;
      case 14: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        int i1 = paramParcel1.readInt();
        boolean bool5 = false;
        if (i1 != 0) {
          bool5 = true;
        }
        setVisible(bool5);
        paramParcel2.writeNoException();
        return true;
      case 15: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        boolean bool4 = isVisible();
        paramParcel2.writeNoException();
        int n = 0;
        if (bool4) {
          n = 1;
        }
        paramParcel2.writeInt(n);
        return true;
      case 16: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        boolean bool3 = h(aq(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        int m = 0;
        if (bool3) {
          m = 1;
        }
        paramParcel2.writeInt(m);
        return true;
      case 17: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        int k = hashCodeRemote();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(k);
        return true;
      case 18: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        i(b.a.G(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 19: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setAnchor(paramParcel1.readFloat(), paramParcel1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 20: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        int j = paramParcel1.readInt();
        boolean bool2 = false;
        if (j != 0) {
          bool2 = true;
        }
        setFlat(bool2);
        paramParcel2.writeNoException();
        return true;
      case 21: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        boolean bool1 = isFlat();
        paramParcel2.writeNoException();
        int i = 0;
        if (bool1) {
          i = 1;
        }
        paramParcel2.writeInt(i);
        return true;
      case 22: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setRotation(paramParcel1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 23: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        float f2 = getRotation();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f2);
        return true;
      case 24: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setInfoWindowAnchor(paramParcel1.readFloat(), paramParcel1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 25: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        setAlpha(paramParcel1.readFloat());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      float f1 = getAlpha();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    }
    
    private static class a
      implements d
    {
      private IBinder ky;
      
      a(IBinder paramIBinder)
      {
        this.ky = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.ky;
      }
      
      public float getAlpha()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(26, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float f = localParcel2.readFloat();
          return f;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getId()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public LatLng getPosition()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 15	com/google/android/gms/maps/model/internal/d$a$a:ky	Landroid/os/IBinder;
        //   18: iconst_4
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokeinterface 39 5 0
        //   27: pop
        //   28: aload_2
        //   29: invokevirtual 42	android/os/Parcel:readException	()V
        //   32: aload_2
        //   33: invokevirtual 59	android/os/Parcel:readInt	()I
        //   36: ifeq +27 -> 63
        //   39: getstatic 65	com/google/android/gms/maps/model/LatLng:CREATOR	Lcom/google/android/gms/maps/model/LatLngCreator;
        //   42: aload_2
        //   43: invokevirtual 71	com/google/android/gms/maps/model/LatLngCreator:createFromParcel	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
        //   46: astore 6
        //   48: aload 6
        //   50: astore 5
        //   52: aload_2
        //   53: invokevirtual 48	android/os/Parcel:recycle	()V
        //   56: aload_1
        //   57: invokevirtual 48	android/os/Parcel:recycle	()V
        //   60: aload 5
        //   62: areturn
        //   63: aconst_null
        //   64: astore 5
        //   66: goto -14 -> 52
        //   69: astore_3
        //   70: aload_2
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload_1
        //   75: invokevirtual 48	android/os/Parcel:recycle	()V
        //   78: aload_3
        //   79: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	80	0	this	a
        //   3	72	1	localParcel1	Parcel
        //   7	64	2	localParcel2	Parcel
        //   69	10	3	localObject	Object
        //   50	15	5	localLatLng1	LatLng
        //   46	3	6	localLatLng2	LatLng
        // Exception table:
        //   from	to	target	type
        //   8	48	69	finally
      }
      
      public float getRotation()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(23, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float f = localParcel2.readFloat();
          return f;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getSnippet()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getTitle()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public boolean h(d paramd)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +64 -> 79
        //   18: aload_1
        //   19: invokeinterface 78 1 0
        //   24: astore 5
        //   26: aload_2
        //   27: aload 5
        //   29: invokevirtual 81	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   32: aload_0
        //   33: getfield 15	com/google/android/gms/maps/model/internal/d$a$a:ky	Landroid/os/IBinder;
        //   36: bipush 16
        //   38: aload_2
        //   39: aload_3
        //   40: iconst_0
        //   41: invokeinterface 39 5 0
        //   46: pop
        //   47: aload_3
        //   48: invokevirtual 42	android/os/Parcel:readException	()V
        //   51: aload_3
        //   52: invokevirtual 59	android/os/Parcel:readInt	()I
        //   55: istore 7
        //   57: iconst_0
        //   58: istore 8
        //   60: iload 7
        //   62: ifeq +6 -> 68
        //   65: iconst_1
        //   66: istore 8
        //   68: aload_3
        //   69: invokevirtual 48	android/os/Parcel:recycle	()V
        //   72: aload_2
        //   73: invokevirtual 48	android/os/Parcel:recycle	()V
        //   76: iload 8
        //   78: ireturn
        //   79: aconst_null
        //   80: astore 5
        //   82: goto -56 -> 26
        //   85: astore 4
        //   87: aload_3
        //   88: invokevirtual 48	android/os/Parcel:recycle	()V
        //   91: aload_2
        //   92: invokevirtual 48	android/os/Parcel:recycle	()V
        //   95: aload 4
        //   97: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	98	0	this	a
        //   0	98	1	paramd	d
        //   3	89	2	localParcel1	Parcel
        //   7	81	3	localParcel2	Parcel
        //   85	11	4	localObject	Object
        //   24	57	5	localIBinder	IBinder
        //   55	6	7	i	int
        //   58	19	8	bool	boolean
        // Exception table:
        //   from	to	target	type
        //   8	14	85	finally
        //   18	26	85	finally
        //   26	57	85	finally
      }
      
      public int hashCodeRemote()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(17, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void hideInfoWindow()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
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
      
      /* Error */
      public void i(b paramb)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +45 -> 60
        //   18: aload_1
        //   19: invokeinterface 88 1 0
        //   24: astore 5
        //   26: aload_2
        //   27: aload 5
        //   29: invokevirtual 81	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   32: aload_0
        //   33: getfield 15	com/google/android/gms/maps/model/internal/d$a$a:ky	Landroid/os/IBinder;
        //   36: bipush 18
        //   38: aload_2
        //   39: aload_3
        //   40: iconst_0
        //   41: invokeinterface 39 5 0
        //   46: pop
        //   47: aload_3
        //   48: invokevirtual 42	android/os/Parcel:readException	()V
        //   51: aload_3
        //   52: invokevirtual 48	android/os/Parcel:recycle	()V
        //   55: aload_2
        //   56: invokevirtual 48	android/os/Parcel:recycle	()V
        //   59: return
        //   60: aconst_null
        //   61: astore 5
        //   63: goto -37 -> 26
        //   66: astore 4
        //   68: aload_3
        //   69: invokevirtual 48	android/os/Parcel:recycle	()V
        //   72: aload_2
        //   73: invokevirtual 48	android/os/Parcel:recycle	()V
        //   76: aload 4
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   0	79	1	paramb	b
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
      
      public boolean isDraggable()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean isFlat()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean isInfoWindowShown()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean isVisible()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(15, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void remove()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setAlpha(float paramFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeFloat(paramFloat);
          this.ky.transact(25, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setAnchor(float paramFloat1, float paramFloat2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeFloat(paramFloat1);
          localParcel1.writeFloat(paramFloat2);
          this.ky.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setDraggable(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          int i = 0;
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.ky.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setFlat(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          int i = 0;
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.ky.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setInfoWindowAnchor(float paramFloat1, float paramFloat2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeFloat(paramFloat1);
          localParcel1.writeFloat(paramFloat2);
          this.ky.transact(24, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public void setPosition(LatLng paramLatLng)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +41 -> 56
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 107	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 115	com/google/android/gms/maps/model/LatLng:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 15	com/google/android/gms/maps/model/internal/d$a$a:ky	Landroid/os/IBinder;
        //   33: iconst_3
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 39 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 42	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 48	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 48	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 107	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore 4
        //   66: aload_3
        //   67: invokevirtual 48	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload 4
        //   76: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	77	0	this	a
        //   0	77	1	paramLatLng	LatLng
        //   3	68	2	localParcel1	Parcel
        //   7	60	3	localParcel2	Parcel
        //   64	11	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   8	14	64	finally
        //   18	29	64	finally
        //   29	47	64	finally
        //   56	61	64	finally
      }
      
      public void setRotation(float paramFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeFloat(paramFloat);
          this.ky.transact(22, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setSnippet(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeString(paramString);
          this.ky.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setTitle(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          localParcel1.writeString(paramString);
          this.ky.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setVisible(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          int i = 0;
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.ky.transact(14, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void showInfoWindow()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IMarkerDelegate");
          this.ky.transact(11, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.maps.model.internal.d
 * JD-Core Version:    0.7.0.1
 */