package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.identity.intents.UserAddressRequest;

public abstract interface he
  extends IInterface
{
  public abstract void a(hd paramhd, UserAddressRequest paramUserAddressRequest, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements he
  {
    public static he M(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
      if ((localIInterface != null) && ((localIInterface instanceof he))) {
        return (he)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
      hd localhd = hd.a.L(paramParcel1.readStrongBinder());
      UserAddressRequest localUserAddressRequest;
      if (paramParcel1.readInt() != 0)
      {
        localUserAddressRequest = (UserAddressRequest)UserAddressRequest.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label125;
        }
      }
      label125:
      for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; localBundle = null)
      {
        a(localhd, localUserAddressRequest, localBundle);
        paramParcel2.writeNoException();
        return true;
        localUserAddressRequest = null;
        break;
      }
    }
    
    private static class a
      implements he
    {
      private IBinder ky;
      
      a(IBinder paramIBinder)
      {
        this.ky = paramIBinder;
      }
      
      public void a(hd paramhd, UserAddressRequest paramUserAddressRequest, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        label132:
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
            IBinder localIBinder;
            if (paramhd != null)
            {
              localIBinder = paramhd.asBinder();
              localParcel1.writeStrongBinder(localIBinder);
              if (paramUserAddressRequest != null)
              {
                localParcel1.writeInt(1);
                paramUserAddressRequest.writeToParcel(localParcel1, 0);
                if (paramBundle == null) {
                  break label132;
                }
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                this.ky.transact(2, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localIBinder = null;
              continue;
            }
            localParcel1.writeInt(0);
            continue;
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public IBinder asBinder()
      {
        return this.ky;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.he
 * JD-Core Version:    0.7.0.1
 */