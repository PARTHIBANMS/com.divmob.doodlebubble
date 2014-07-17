package com.google.android.gms.wallet;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.jg;

public final class Wallet
{
  public static final Api API = new Api(va, new Scope[0]);
  static final Api.b<jg> va = new Wallet.1();
  
  public static void changeMaskedWallet(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, int paramInt)
  {
    paramGoogleApiClient.a(new Wallet.5(paramString1, paramString2, paramInt));
  }
  
  public static void checkForPreAuthorization(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    paramGoogleApiClient.a(new Wallet.2(paramInt));
  }
  
  public static void loadFullWallet(GoogleApiClient paramGoogleApiClient, FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    paramGoogleApiClient.a(new Wallet.4(paramFullWalletRequest, paramInt));
  }
  
  public static void loadMaskedWallet(GoogleApiClient paramGoogleApiClient, MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    paramGoogleApiClient.a(new Wallet.3(paramMaskedWalletRequest, paramInt));
  }
  
  public static void notifyTransactionStatus(GoogleApiClient paramGoogleApiClient, NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest)
  {
    paramGoogleApiClient.a(new Wallet.6(paramNotifyTransactionStatusRequest));
  }
  
  public static final class WalletOptions
    implements GoogleApiClient.ApiOptions
  {
    public final int environment;
    public final int theme;
    
    private WalletOptions()
    {
      this(new Builder());
    }
    
    private WalletOptions(Builder paramBuilder)
    {
      this.environment = Builder.a(paramBuilder);
      this.theme = Builder.b(paramBuilder);
    }
    
    public static final class Builder
    {
      private int Zw = 0;
      private int mTheme = 0;
      
      public Wallet.WalletOptions build()
      {
        return new Wallet.WalletOptions(this, null);
      }
      
      public Builder setEnvironment(int paramInt)
      {
        if ((paramInt == 0) || (paramInt == 2) || (paramInt == 1))
        {
          this.Zw = paramInt;
          return this;
        }
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        throw new IllegalArgumentException(String.format("Invalid environment value %d", arrayOfObject));
      }
      
      public Builder setTheme(int paramInt)
      {
        if ((paramInt == 0) || (paramInt == 1))
        {
          this.mTheme = paramInt;
          return this;
        }
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        throw new IllegalArgumentException(String.format("Invalid theme value %d", arrayOfObject));
      }
    }
  }
  
  private static abstract class a
    extends a.a<Status, jg>
  {
    public a()
    {
      super();
    }
    
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.wallet.Wallet
 * JD-Core Version:    0.7.0.1
 */