package com.google.android.gms.common.data;

import android.content.ContentValues;
import java.util.HashMap;

final class DataHolder$1
  extends DataHolder.Builder
{
  DataHolder$1(String[] paramArrayOfString, String paramString)
  {
    super(paramArrayOfString, paramString, null);
  }
  
  public DataHolder.Builder withRow(ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException("Cannot add data to empty builder");
  }
  
  public DataHolder.Builder withRow(HashMap<String, Object> paramHashMap)
  {
    throw new UnsupportedOperationException("Cannot add data to empty builder");
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.data.DataHolder.1
 * JD-Core Version:    0.7.0.1
 */