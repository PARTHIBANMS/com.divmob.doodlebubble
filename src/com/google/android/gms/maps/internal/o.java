package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.b.a;

public abstract interface o
  extends IInterface
{
  public abstract void c(b paramb)
    throws RemoteException;
  
  public abstract void onSnapshotReady(Bitmap paramBitmap)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements o
  {
    public a()
    {
      attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }
    
    public static o al(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      if ((localIInterface != null) && ((localIInterface instanceof o))) {
        return (o)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        if (paramParcel1.readInt() != 0) {}
        for (Bitmap localBitmap = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);; localBitmap = null)
        {
          onSnapshotReady(localBitmap);
          paramParcel2.writeNoException();
          return true;
        }
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      c(b.a.G(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class a
      implements o
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
      
      /* Error */
      public void c(b paramb)
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
        //   15: ifnull +44 -> 59
        //   18: aload_1
        //   19: invokeinterface 37 1 0
        //   24: astore 5
        //   26: aload_2
        //   27: aload 5
        //   29: invokevirtual 40	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   32: aload_0
        //   33: getfield 15	com/google/android/gms/maps/internal/o$a$a:ky	Landroid/os/IBinder;
        //   36: iconst_2
        //   37: aload_2
        //   38: aload_3
        //   39: iconst_0
        //   40: invokeinterface 46 5 0
        //   45: pop
        //   46: aload_3
        //   47: invokevirtual 49	android/os/Parcel:readException	()V
        //   50: aload_3
        //   51: invokevirtual 52	android/os/Parcel:recycle	()V
        //   54: aload_2
        //   55: invokevirtual 52	android/os/Parcel:recycle	()V
        //   58: return
        //   59: aconst_null
        //   60: astore 5
        //   62: goto -36 -> 26
        //   65: astore 4
        //   67: aload_3
        //   68: invokevirtual 52	android/os/Parcel:recycle	()V
        //   71: aload_2
        //   72: invokevirtual 52	android/os/Parcel:recycle	()V
        //   75: aload 4
        //   77: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	78	0	this	a
        //   0	78	1	paramb	b
        //   3	69	2	localParcel1	Parcel
        //   7	61	3	localParcel2	Parcel
        //   65	11	4	localObject	Object
        //   24	37	5	localIBinder	IBinder
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	26	65	finally
        //   26	50	65	finally
      }
      
      /* Error */
      public void onSnapshotReady(Bitmap paramBitmap)
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
        //   20: invokevirtual 58	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 64	android/graphics/Bitmap:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 15	com/google/android/gms/maps/internal/o$a$a:ky	Landroid/os/IBinder;
        //   33: iconst_1
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 46 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 49	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 52	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 52	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 58	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore 4
        //   66: aload_3
        //   67: invokevirtual 52	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 52	android/os/Parcel:recycle	()V
        //   74: aload 4
        //   76: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	77	0	this	a
        //   0	77	1	paramBitmap	Bitmap
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
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.internal.o
 * JD-Core Version:    0.7.0.1
 */