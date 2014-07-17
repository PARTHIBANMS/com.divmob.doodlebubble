package com.divmob.a;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;

public class g
{
  e a;
  
  public g(Context paramContext)
  {
    this.a = new e(paramContext, null);
  }
  
  public static String a()
  {
    return "A";
  }
  
  public static String b()
  {
    return Build.MODEL;
  }
  
  public static String b(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  public static String c(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }
  
  public void a(Context paramContext)
  {
    h.a locala = new h.a(0, "clientinfo", "http://divmob.com/api/more/index.php?package=" + b(paramContext) + "&idPartner=" + a() + "&deviceID=" + c(paramContext) + "&model=" + b());
    this.a.b(locala);
  }
  
  public void c()
  {
    this.a.b();
    this.a = null;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.g
 * JD-Core Version:    0.7.0.1
 */