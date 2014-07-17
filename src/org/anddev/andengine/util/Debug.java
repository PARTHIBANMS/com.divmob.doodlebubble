package org.anddev.andengine.util;

import android.util.Log;
import org.anddev.andengine.util.constants.Constants;

public class Debug
  implements Constants
{
  private static DebugLevel sDebugLevel = DebugLevel.VERBOSE;
  private static String sDebugTag = "AndEngine";
  
  public static void d(String paramString)
  {
    d(paramString, null);
  }
  
  public static void d(String paramString, Throwable paramThrowable)
  {
    if (sDebugLevel.isSameOrLessThan(DebugLevel.DEBUG)) {
      Log.d(sDebugTag, paramString, paramThrowable);
    }
  }
  
  public static void e(String paramString)
  {
    e(paramString, null);
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    if (sDebugLevel.isSameOrLessThan(DebugLevel.ERROR))
    {
      if (paramThrowable == null) {
        Log.e(sDebugTag, paramString, new Exception());
      }
    }
    else {
      return;
    }
    Log.e(sDebugTag, paramString, paramThrowable);
  }
  
  public static void e(Throwable paramThrowable)
  {
    e(sDebugTag, paramThrowable);
  }
  
  public static DebugLevel getDebugLevel()
  {
    return sDebugLevel;
  }
  
  public static String getDebugTag()
  {
    return sDebugTag;
  }
  
  public static void i(String paramString)
  {
    i(paramString, null);
  }
  
  public static void i(String paramString, Throwable paramThrowable)
  {
    if (sDebugLevel.isSameOrLessThan(DebugLevel.INFO)) {
      Log.i(sDebugTag, paramString, paramThrowable);
    }
  }
  
  public static void setDebugLevel(DebugLevel paramDebugLevel)
  {
    if (paramDebugLevel == null) {
      throw new IllegalArgumentException("pDebugLevel must not be null!");
    }
    sDebugLevel = paramDebugLevel;
  }
  
  public static void setDebugTag(String paramString)
  {
    sDebugTag = paramString;
  }
  
  public static void v(String paramString)
  {
    v(paramString, null);
  }
  
  public static void v(String paramString, Throwable paramThrowable)
  {
    if (sDebugLevel.isSameOrLessThan(DebugLevel.VERBOSE)) {
      Log.v(sDebugTag, paramString, paramThrowable);
    }
  }
  
  public static void w(String paramString)
  {
    w(paramString, null);
  }
  
  public static void w(String paramString, Throwable paramThrowable)
  {
    if (sDebugLevel.isSameOrLessThan(DebugLevel.WARNING))
    {
      if (paramThrowable == null) {
        Log.w(sDebugTag, paramString, new Exception());
      }
    }
    else {
      return;
    }
    Log.w(sDebugTag, paramString, paramThrowable);
  }
  
  public static void w(Throwable paramThrowable)
  {
    w("", paramThrowable);
  }
  
  public static enum DebugLevel
    implements Comparable<DebugLevel>
  {
    public static DebugLevel ALL = VERBOSE;
    
    static
    {
      ERROR = new DebugLevel("ERROR", 1);
      WARNING = new DebugLevel("WARNING", 2);
      INFO = new DebugLevel("INFO", 3);
      DEBUG = new DebugLevel("DEBUG", 4);
      VERBOSE = new DebugLevel("VERBOSE", 5);
      DebugLevel[] arrayOfDebugLevel = new DebugLevel[6];
      arrayOfDebugLevel[0] = NONE;
      arrayOfDebugLevel[1] = ERROR;
      arrayOfDebugLevel[2] = WARNING;
      arrayOfDebugLevel[3] = INFO;
      arrayOfDebugLevel[4] = DEBUG;
      arrayOfDebugLevel[5] = VERBOSE;
      ENUM$VALUES = arrayOfDebugLevel;
    }
    
    private boolean isSameOrLessThan(DebugLevel paramDebugLevel)
    {
      return compareTo(paramDebugLevel) >= 0;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.Debug
 * JD-Core Version:    0.7.0.1
 */