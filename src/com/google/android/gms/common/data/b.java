package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;

public abstract class b
{
  protected final DataHolder zU;
  protected final int zW;
  private final int zX;
  
  public b(DataHolder paramDataHolder, int paramInt)
  {
    this.zU = ((DataHolder)er.f(paramDataHolder));
    if ((paramInt >= 0) && (paramInt < paramDataHolder.getCount())) {}
    for (boolean bool = true;; bool = false)
    {
      er.v(bool);
      this.zW = paramInt;
      this.zX = paramDataHolder.I(this.zW);
      return;
    }
  }
  
  protected void a(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    this.zU.copyToBuffer(paramString, this.zW, this.zX, paramCharArrayBuffer);
  }
  
  protected Uri aa(String paramString)
  {
    return this.zU.parseUri(paramString, this.zW, this.zX);
  }
  
  protected boolean ab(String paramString)
  {
    return this.zU.hasNull(paramString, this.zW, this.zX);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof b;
    boolean bool2 = false;
    if (bool1)
    {
      b localb = (b)paramObject;
      boolean bool3 = ep.equal(Integer.valueOf(localb.zW), Integer.valueOf(this.zW));
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ep.equal(Integer.valueOf(localb.zX), Integer.valueOf(this.zX));
        bool2 = false;
        if (bool4)
        {
          DataHolder localDataHolder1 = localb.zU;
          DataHolder localDataHolder2 = this.zU;
          bool2 = false;
          if (localDataHolder1 == localDataHolder2) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  protected boolean getBoolean(String paramString)
  {
    return this.zU.getBoolean(paramString, this.zW, this.zX);
  }
  
  protected byte[] getByteArray(String paramString)
  {
    return this.zU.getByteArray(paramString, this.zW, this.zX);
  }
  
  protected int getInteger(String paramString)
  {
    return this.zU.getInteger(paramString, this.zW, this.zX);
  }
  
  protected long getLong(String paramString)
  {
    return this.zU.getLong(paramString, this.zW, this.zX);
  }
  
  protected String getString(String paramString)
  {
    return this.zU.getString(paramString, this.zW, this.zX);
  }
  
  public boolean hasColumn(String paramString)
  {
    return this.zU.hasColumn(paramString);
  }
  
  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.zW);
    arrayOfObject[1] = Integer.valueOf(this.zX);
    arrayOfObject[2] = this.zU;
    return ep.hashCode(arrayOfObject);
  }
  
  public boolean isDataValid()
  {
    return !this.zU.isClosed();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.data.b
 * JD-Core Version:    0.7.0.1
 */