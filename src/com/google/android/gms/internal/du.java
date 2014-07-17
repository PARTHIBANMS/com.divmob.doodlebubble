package com.google.android.gms.internal;

import android.util.Log;

public class du
{
  private static boolean ye = false;
  private final String mTag;
  private boolean yf;
  private boolean yg;
  private String yh;
  
  public du(String paramString)
  {
    this(paramString, di());
  }
  
  public du(String paramString, boolean paramBoolean)
  {
    this.mTag = paramString;
    this.yf = paramBoolean;
    this.yg = false;
  }
  
  public static boolean di()
  {
    return ye;
  }
  
  private String e(String paramString, Object... paramVarArgs)
  {
    String str = String.format(paramString, paramVarArgs);
    if (this.yh != null) {
      str = this.yh + str;
    }
    return str;
  }
  
  public void U(String paramString)
  {
    this.yh = String.format("[%s] ", new Object[] { paramString });
  }
  
  public void a(String paramString, Object... paramVarArgs)
  {
    if (dh()) {
      Log.v(this.mTag, e(paramString, paramVarArgs));
    }
  }
  
  public void a(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if ((dg()) || (ye)) {
      Log.d(this.mTag, e(paramString, paramVarArgs), paramThrowable);
    }
  }
  
  public void b(String paramString, Object... paramVarArgs)
  {
    if ((dg()) || (ye)) {
      Log.d(this.mTag, e(paramString, paramVarArgs));
    }
  }
  
  public void c(String paramString, Object... paramVarArgs)
  {
    Log.i(this.mTag, e(paramString, paramVarArgs));
  }
  
  public void d(String paramString, Object... paramVarArgs)
  {
    Log.w(this.mTag, e(paramString, paramVarArgs));
  }
  
  public boolean dg()
  {
    return this.yf;
  }
  
  public boolean dh()
  {
    return this.yg;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.du
 * JD-Core Version:    0.7.0.1
 */