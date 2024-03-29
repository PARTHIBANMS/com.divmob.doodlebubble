package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class i
  extends dg
{
  private static final String ID = a.aA.toString();
  private static final String TF = b.bi.toString();
  private static final String TG = b.ey.toString();
  static final String TH = "gtm_" + ID + "_unrepeatable";
  private static final Set<String> TI = new HashSet();
  private static final String URL = b.ez.toString();
  private final a TJ;
  private final Context mContext;
  
  public i(Context paramContext)
  {
    this(paramContext, new i.1(paramContext));
  }
  
  i(Context paramContext, a parama)
  {
    super(str, arrayOfString);
    this.TJ = parama;
    this.mContext = paramContext;
  }
  
  private boolean aU(String paramString)
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        boolean bool2 = aW(paramString);
        if (bool2) {
          return bool1;
        }
        if (aV(paramString)) {
          TI.add(paramString);
        } else {
          bool1 = false;
        }
      }
      finally {}
    }
  }
  
  boolean aV(String paramString)
  {
    return this.mContext.getSharedPreferences(TH, 0).contains(paramString);
  }
  
  boolean aW(String paramString)
  {
    return TI.contains(paramString);
  }
  
  public void w(Map<String, d.a> paramMap)
  {
    String str1;
    if (paramMap.get(TG) != null)
    {
      str1 = di.j((d.a)paramMap.get(TG));
      if ((str1 == null) || (!aU(str1))) {
        break label46;
      }
    }
    label46:
    do
    {
      return;
      str1 = null;
      break;
      Uri.Builder localBuilder = Uri.parse(di.j((d.a)paramMap.get(URL))).buildUpon();
      d.a locala = (d.a)paramMap.get(TF);
      if (locala != null)
      {
        Object localObject2 = di.o(locala);
        if (!(localObject2 instanceof List))
        {
          bh.t("ArbitraryPixel: additional params not a list: not sending partial hit: " + localBuilder.build().toString());
          return;
        }
        Iterator localIterator1 = ((List)localObject2).iterator();
        while (localIterator1.hasNext())
        {
          Object localObject3 = localIterator1.next();
          if (!(localObject3 instanceof Map))
          {
            bh.t("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + localBuilder.build().toString());
            return;
          }
          Iterator localIterator2 = ((Map)localObject3).entrySet().iterator();
          while (localIterator2.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator2.next();
            localBuilder.appendQueryParameter(localEntry.getKey().toString(), localEntry.getValue().toString());
          }
        }
      }
      String str2 = localBuilder.build().toString();
      this.TJ.iz().bk(str2);
      bh.v("ArbitraryPixel: url = " + str2);
    } while (str1 == null);
    try
    {
      TI.add(str1);
      cz.a(this.mContext, TH, str1, "true");
      return;
    }
    finally {}
  }
  
  public static abstract interface a
  {
    public abstract aq iz();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.i
 * JD-Core Version:    0.7.0.1
 */