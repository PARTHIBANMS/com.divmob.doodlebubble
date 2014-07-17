package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class k<T extends j>
{
  Context mContext;
  a<T> rb;
  
  public k(Context paramContext, a<T> parama)
  {
    this.mContext = paramContext;
    this.rb = parama;
  }
  
  private T a(XmlResourceParser paramXmlResourceParser)
  {
    for (;;)
    {
      try
      {
        paramXmlResourceParser.next();
        i = paramXmlResourceParser.getEventType();
        if (i == 1) {
          continue;
        }
        if (paramXmlResourceParser.getEventType() == 2)
        {
          str1 = paramXmlResourceParser.getName().toLowerCase();
          if (!str1.equals("screenname")) {
            continue;
          }
          String str8 = paramXmlResourceParser.getAttributeValue(null, "name");
          String str9 = paramXmlResourceParser.nextText().trim();
          if ((!TextUtils.isEmpty(str8)) && (!TextUtils.isEmpty(str9))) {
            this.rb.a(str8, str9);
          }
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        int i;
        String str6;
        String str7;
        aa.t("Error parsing tracker configuration file: " + localXmlPullParserException);
        return this.rb.bz();
        if (!str1.equals("bool")) {
          continue;
        }
        String str4 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str5 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str4)) {
          continue;
        }
        boolean bool2 = TextUtils.isEmpty(str5);
        if (bool2) {
          continue;
        }
        try
        {
          boolean bool3 = Boolean.parseBoolean(str5);
          this.rb.c(str4, bool3);
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          aa.t("Error parsing bool configuration value: " + str5);
        }
        continue;
      }
      catch (IOException localIOException)
      {
        String str1;
        aa.t("Error parsing tracker configuration file: " + localIOException);
        continue;
        if (!str1.equals("integer")) {
          continue;
        }
        String str2 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str3 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        boolean bool1 = TextUtils.isEmpty(str3);
        if (bool1) {
          continue;
        }
        try
        {
          int j = Integer.parseInt(str3);
          this.rb.a(str2, j);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          aa.t("Error parsing int configuration value: " + str3);
        }
        continue;
      }
      i = paramXmlResourceParser.next();
      continue;
      if (!str1.equals("string")) {
        continue;
      }
      str6 = paramXmlResourceParser.getAttributeValue(null, "name");
      str7 = paramXmlResourceParser.nextText().trim();
      if ((!TextUtils.isEmpty(str6)) && (str7 != null)) {
        this.rb.b(str6, str7);
      }
    }
  }
  
  public T p(int paramInt)
  {
    try
    {
      j localj = a(this.mContext.getResources().getXml(paramInt));
      return localj;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      aa.w("inflate() called with unknown resourceId: " + localNotFoundException);
    }
    return null;
  }
  
  public static abstract interface a<U extends j>
  {
    public abstract void a(String paramString, int paramInt);
    
    public abstract void a(String paramString1, String paramString2);
    
    public abstract void b(String paramString1, String paramString2);
    
    public abstract U bz();
    
    public abstract void c(String paramString, boolean paramBoolean);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.k
 * JD-Core Version:    0.7.0.1
 */