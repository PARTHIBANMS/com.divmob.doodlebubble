package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

public abstract interface dj
  extends IInterface
{
  public abstract void a(Map paramMap, long paramLong, String paramString, List<di> paramList)
    throws RemoteException;
  
  public abstract void bk()
    throws RemoteException;
  
  public abstract String getVersion()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements dj
  {
    public static dj r(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
      if ((localIInterface != null) && ((localIInterface instanceof dj))) {
        return (dj)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
        a(paramParcel1.readHashMap(getClass().getClassLoader()), paramParcel1.readLong(), paramParcel1.readString(), paramParcel1.createTypedArrayList(di.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
        bk();
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
      String str = getVersion();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    }
    
    private static class a
      implements dj
    {
      private IBinder ky;
      
      a(IBinder paramIBinder)
      {
        this.ky = paramIBinder;
      }
      
      public void a(Map paramMap, long paramLong, String paramString, List<di> paramList)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
          localParcel1.writeMap(paramMap);
          localParcel1.writeLong(paramLong);
          localParcel1.writeString(paramString);
          localParcel1.writeTypedList(paramList);
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
      
      public IBinder asBinder()
      {
        return this.ky;
      }
      
      public void bk()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
          this.ky.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getVersion()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
          this.ky.transact(3, localParcel1, localParcel2, 0);
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
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dj
 * JD-Core Version:    0.7.0.1
 */