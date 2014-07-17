package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class dl
{
  private static by<d.a> a(by<d.a> paramby)
  {
    try
    {
      by localby = new by(di.r(bO(di.j((d.a)paramby.getObject()))), paramby.jr());
      return localby;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      bh.c("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return paramby;
  }
  
  private static by<d.a> a(by<d.a> paramby, int paramInt)
  {
    if (!q((d.a)paramby.getObject()))
    {
      bh.t("Escaping can only be applied to strings.");
      return paramby;
    }
    switch (paramInt)
    {
    default: 
      bh.t("Unsupported Value Escaping: " + paramInt);
      return paramby;
    }
    return a(paramby);
  }
  
  static by<d.a> a(by<d.a> paramby, int... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++) {
      paramby = a(paramby, paramVarArgs[j]);
    }
    return paramby;
  }
  
  static String bO(String paramString)
    throws UnsupportedEncodingException
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static boolean q(d.a parama)
  {
    return di.o(parama) instanceof String;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.dl
 * JD-Core Version:    0.7.0.1
 */