package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.AbstractWindowedCursor;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class DataHolder
  implements SafeParcelable
{
  private static final Builder Ai = new DataHolder.1(new String[0], null);
  public static final DataHolderCreator CREATOR = new DataHolderCreator();
  private final String[] Aa;
  Bundle Ab;
  private final CursorWindow[] Ac;
  private final Bundle Ad;
  int[] Ae;
  int Af;
  private Object Ag;
  private boolean Ah = true;
  boolean mClosed = false;
  private final int wj;
  private final int yJ;
  
  DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle)
  {
    this.wj = paramInt1;
    this.Aa = paramArrayOfString;
    this.Ac = paramArrayOfCursorWindow;
    this.yJ = paramInt2;
    this.Ad = paramBundle;
  }
  
  public DataHolder(AbstractWindowedCursor paramAbstractWindowedCursor, int paramInt, Bundle paramBundle)
  {
    this(paramAbstractWindowedCursor.getColumnNames(), a(paramAbstractWindowedCursor), paramInt, paramBundle);
  }
  
  private DataHolder(Builder paramBuilder, int paramInt, Bundle paramBundle)
  {
    this(Builder.a(paramBuilder), a(paramBuilder, -1), paramInt, paramBundle);
  }
  
  private DataHolder(Builder paramBuilder, int paramInt1, Bundle paramBundle, int paramInt2)
  {
    this(Builder.a(paramBuilder), a(paramBuilder, paramInt2), paramInt1, paramBundle);
  }
  
  public DataHolder(String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt, Bundle paramBundle)
  {
    this.wj = 1;
    this.Aa = ((String[])er.f(paramArrayOfString));
    this.Ac = ((CursorWindow[])er.f(paramArrayOfCursorWindow));
    this.yJ = paramInt;
    this.Ad = paramBundle;
    validateContents();
  }
  
  private static CursorWindow[] a(AbstractWindowedCursor paramAbstractWindowedCursor)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      CursorWindow localCursorWindow2;
      try
      {
        int i = paramAbstractWindowedCursor.getCount();
        CursorWindow localCursorWindow1 = paramAbstractWindowedCursor.getWindow();
        if ((localCursorWindow1 == null) || (localCursorWindow1.getStartPosition() != 0)) {
          break label189;
        }
        localCursorWindow1.acquireReference();
        paramAbstractWindowedCursor.setWindow(null);
        localArrayList.add(localCursorWindow1);
        j = localCursorWindow1.getNumRows();
        if ((j < i) && (paramAbstractWindowedCursor.moveToPosition(j)))
        {
          localCursorWindow2 = paramAbstractWindowedCursor.getWindow();
          if (localCursorWindow2 != null)
          {
            localCursorWindow2.acquireReference();
            paramAbstractWindowedCursor.setWindow(null);
            int k = localCursorWindow2.getNumRows();
            if (k != 0) {
              break label158;
            }
          }
        }
        else
        {
          return (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
        }
        localCursorWindow2 = new CursorWindow(false);
        localCursorWindow2.setStartPosition(j);
        paramAbstractWindowedCursor.fillWindow(j, localCursorWindow2);
        continue;
        localArrayList.add(localCursorWindow2);
      }
      finally
      {
        paramAbstractWindowedCursor.close();
      }
      label158:
      int m = localCursorWindow2.getStartPosition();
      int n = localCursorWindow2.getNumRows();
      int j = n + m;
      continue;
      label189:
      j = 0;
    }
  }
  
  private static CursorWindow[] a(Builder paramBuilder, int paramInt)
  {
    int i = 0;
    if (Builder.a(paramBuilder).length == 0) {
      return new CursorWindow[0];
    }
    Object localObject1;
    Object localObject2;
    ArrayList localArrayList;
    int k;
    int m;
    if ((paramInt < 0) || (paramInt >= Builder.b(paramBuilder).size()))
    {
      localObject1 = Builder.b(paramBuilder);
      int j = ((List)localObject1).size();
      localObject2 = new CursorWindow(false);
      localArrayList = new ArrayList();
      localArrayList.add(localObject2);
      ((CursorWindow)localObject2).setNumColumns(Builder.a(paramBuilder).length);
      k = 0;
      m = 0;
      label87:
      if (k >= j) {
        break label658;
      }
    }
    for (;;)
    {
      int i2;
      try
      {
        if (((CursorWindow)localObject2).allocRow()) {
          break label675;
        }
        Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + k + ")");
        localObject2 = new CursorWindow(false);
        ((CursorWindow)localObject2).setStartPosition(k);
        ((CursorWindow)localObject2).setNumColumns(Builder.a(paramBuilder).length);
        localArrayList.add(localObject2);
        if (!((CursorWindow)localObject2).allocRow())
        {
          Log.e("DataHolder", "Unable to allocate row to hold data.");
          localArrayList.remove(localObject2);
          CursorWindow[] arrayOfCursorWindow = (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
          return arrayOfCursorWindow;
          localObject1 = Builder.b(paramBuilder).subList(0, paramInt);
          break;
        }
        i1 = 0;
        Map localMap = (Map)((List)localObject1).get(k);
        bool = true;
        i2 = 0;
        if ((i2 < Builder.a(paramBuilder).length) && (bool))
        {
          String str = Builder.a(paramBuilder)[i2];
          Object localObject3 = localMap.get(str);
          if (localObject3 == null)
          {
            bool = ((CursorWindow)localObject2).putNull(i1, i2);
            break label682;
          }
          if ((localObject3 instanceof String))
          {
            bool = ((CursorWindow)localObject2).putString((String)localObject3, i1, i2);
            break label682;
          }
          if ((localObject3 instanceof Long))
          {
            bool = ((CursorWindow)localObject2).putLong(((Long)localObject3).longValue(), i1, i2);
            break label682;
          }
          if ((localObject3 instanceof Integer))
          {
            bool = ((CursorWindow)localObject2).putLong(((Integer)localObject3).intValue(), i1, i2);
            break label682;
          }
          if ((localObject3 instanceof Boolean))
          {
            if (!((Boolean)localObject3).booleanValue()) {
              break label688;
            }
            l = 1L;
            bool = ((CursorWindow)localObject2).putLong(l, i1, i2);
            break label682;
          }
          if ((localObject3 instanceof byte[]))
          {
            bool = ((CursorWindow)localObject2).putBlob((byte[])localObject3, i1, i2);
            break label682;
          }
          throw new IllegalArgumentException("Unsupported object for column " + str + ": " + localObject3);
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        boolean bool;
        int n = localArrayList.size();
        if (i < n)
        {
          ((CursorWindow)localArrayList.get(i)).close();
          i++;
          continue;
          if (!bool)
          {
            Log.d("DataHolder", "Couldn't populate window data for row " + k + " - allocating new window.");
            ((CursorWindow)localObject2).freeLastRow();
            CursorWindow localCursorWindow = new CursorWindow(false);
            localCursorWindow.setNumColumns(Builder.a(paramBuilder).length);
            localArrayList.add(localCursorWindow);
            i4 = k - 1;
            localObject4 = localCursorWindow;
            i3 = 0;
            int i5 = i4 + 1;
            localObject2 = localObject4;
            k = i5;
            m = i3;
            break label87;
          }
          int i3 = i1 + 1;
          int i4 = k;
          Object localObject4 = localObject2;
          continue;
        }
        throw localRuntimeException;
      }
      label658:
      return (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
      label675:
      int i1 = m;
      continue;
      label682:
      i2++;
      continue;
      label688:
      long l = 0L;
    }
  }
  
  public static Builder builder(String[] paramArrayOfString)
  {
    return new Builder(paramArrayOfString, null, null);
  }
  
  public static Builder builder(String[] paramArrayOfString, String paramString)
  {
    er.f(paramString);
    return new Builder(paramArrayOfString, paramString, null);
  }
  
  private void e(String paramString, int paramInt)
  {
    if ((this.Ab == null) || (!this.Ab.containsKey(paramString))) {
      throw new IllegalArgumentException("No such column: " + paramString);
    }
    if (isClosed()) {
      throw new IllegalArgumentException("Buffer is closed.");
    }
    if ((paramInt < 0) || (paramInt >= this.Af)) {
      throw new CursorIndexOutOfBoundsException(paramInt, this.Af);
    }
  }
  
  public static DataHolder empty(int paramInt)
  {
    return empty(paramInt, null);
  }
  
  public static DataHolder empty(int paramInt, Bundle paramBundle)
  {
    return new DataHolder(Ai, paramInt, paramBundle);
  }
  
  public int I(int paramInt)
  {
    int i = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < this.Af))
    {
      bool = true;
      er.v(bool);
    }
    for (;;)
    {
      if (i < this.Ae.length)
      {
        if (paramInt < this.Ae[i]) {
          i--;
        }
      }
      else
      {
        if (i == this.Ae.length) {
          i--;
        }
        return i;
        bool = false;
        break;
      }
      i++;
    }
  }
  
  public void c(Object paramObject)
  {
    this.Ag = paramObject;
  }
  
  public void close()
  {
    try
    {
      if (!this.mClosed)
      {
        this.mClosed = true;
        for (int i = 0; i < this.Ac.length; i++) {
          this.Ac[i].close();
        }
      }
      return;
    }
    finally {}
  }
  
  public void copyToBuffer(String paramString, int paramInt1, int paramInt2, CharArrayBuffer paramCharArrayBuffer)
  {
    e(paramString, paramInt1);
    this.Ac[paramInt2].copyStringToBuffer(paramInt1, this.Ab.getInt(paramString), paramCharArrayBuffer);
  }
  
  String[] dH()
  {
    return this.Aa;
  }
  
  CursorWindow[] dI()
  {
    return this.Ac;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  /* Error */
  protected void finalize()
    throws java.lang.Throwable
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 52	com/google/android/gms/common/data/DataHolder:Ah	Z
    //   4: ifeq +85 -> 89
    //   7: aload_0
    //   8: getfield 58	com/google/android/gms/common/data/DataHolder:Ac	[Landroid/database/CursorWindow;
    //   11: arraylength
    //   12: ifle +77 -> 89
    //   15: aload_0
    //   16: invokevirtual 295	com/google/android/gms/common/data/DataHolder:isClosed	()Z
    //   19: ifne +70 -> 89
    //   22: aload_0
    //   23: getfield 319	com/google/android/gms/common/data/DataHolder:Ag	Ljava/lang/Object;
    //   26: ifnonnull +68 -> 94
    //   29: new 178	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   36: ldc_w 340
    //   39: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: aload_0
    //   43: invokevirtual 341	java/lang/Object:toString	()Ljava/lang/String;
    //   46: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: astore_3
    //   53: ldc_w 343
    //   56: new 178	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   63: ldc_w 345
    //   66: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_3
    //   70: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 190
    //   75: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 205	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: aload_0
    //   86: invokevirtual 346	com/google/android/gms/common/data/DataHolder:close	()V
    //   89: aload_0
    //   90: invokespecial 348	java/lang/Object:finalize	()V
    //   93: return
    //   94: aload_0
    //   95: getfield 319	com/google/android/gms/common/data/DataHolder:Ag	Ljava/lang/Object;
    //   98: invokevirtual 341	java/lang/Object:toString	()Ljava/lang/String;
    //   101: astore_2
    //   102: aload_2
    //   103: astore_3
    //   104: goto -51 -> 53
    //   107: astore_1
    //   108: aload_0
    //   109: invokespecial 348	java/lang/Object:finalize	()V
    //   112: aload_1
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	DataHolder
    //   107	6	1	localObject1	Object
    //   101	2	2	str	String
    //   52	52	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	53	107	finally
    //   53	89	107	finally
    //   94	102	107	finally
  }
  
  public boolean getBoolean(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return Long.valueOf(this.Ac[paramInt2].getLong(paramInt1, this.Ab.getInt(paramString))).longValue() == 1L;
  }
  
  public byte[] getByteArray(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return this.Ac[paramInt2].getBlob(paramInt1, this.Ab.getInt(paramString));
  }
  
  public int getCount()
  {
    return this.Af;
  }
  
  public int getInteger(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return this.Ac[paramInt2].getInt(paramInt1, this.Ab.getInt(paramString));
  }
  
  public long getLong(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return this.Ac[paramInt2].getLong(paramInt1, this.Ab.getInt(paramString));
  }
  
  public Bundle getMetadata()
  {
    return this.Ad;
  }
  
  public int getStatusCode()
  {
    return this.yJ;
  }
  
  public String getString(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return this.Ac[paramInt2].getString(paramInt1, this.Ab.getInt(paramString));
  }
  
  int getVersionCode()
  {
    return this.wj;
  }
  
  public boolean hasColumn(String paramString)
  {
    return this.Ab.containsKey(paramString);
  }
  
  public boolean hasNull(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return this.Ac[paramInt2].isNull(paramInt1, this.Ab.getInt(paramString));
  }
  
  public boolean isClosed()
  {
    try
    {
      boolean bool = this.mClosed;
      return bool;
    }
    finally {}
  }
  
  public Uri parseUri(String paramString, int paramInt1, int paramInt2)
  {
    String str = getString(paramString, paramInt1, paramInt2);
    if (str == null) {
      return null;
    }
    return Uri.parse(str);
  }
  
  public void validateContents()
  {
    int i = 0;
    this.Ab = new Bundle();
    for (int j = 0; j < this.Aa.length; j++) {
      this.Ab.putInt(this.Aa[j], j);
    }
    this.Ae = new int[this.Ac.length];
    int k = 0;
    while (i < this.Ac.length)
    {
      this.Ae[i] = k;
      int m = k - this.Ac[i].getStartPosition();
      k += this.Ac[i].getNumRows() - m;
      i++;
    }
    this.Af = k;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    DataHolderCreator.a(this, paramParcel, paramInt);
  }
  
  public static class Builder
  {
    private final String[] Aa;
    private final ArrayList<HashMap<String, Object>> Aj;
    private final String Ak;
    private final HashMap<Object, Integer> Al;
    private boolean Am;
    private String An;
    
    private Builder(String[] paramArrayOfString, String paramString)
    {
      this.Aa = ((String[])er.f(paramArrayOfString));
      this.Aj = new ArrayList();
      this.Ak = paramString;
      this.Al = new HashMap();
      this.Am = false;
      this.An = null;
    }
    
    private void a(HashMap<String, Object> paramHashMap)
    {
      Object localObject = paramHashMap.get(this.Ak);
      if (localObject == null) {
        return;
      }
      Integer localInteger = (Integer)this.Al.remove(localObject);
      if (localInteger != null) {
        this.Aj.remove(localInteger.intValue());
      }
      this.Al.put(localObject, Integer.valueOf(this.Aj.size()));
    }
    
    private void dJ()
    {
      if (this.Ak != null)
      {
        this.Al.clear();
        int i = this.Aj.size();
        for (int j = 0; j < i; j++)
        {
          Object localObject = ((HashMap)this.Aj.get(j)).get(this.Ak);
          if (localObject != null) {
            this.Al.put(localObject, Integer.valueOf(j));
          }
        }
      }
    }
    
    public DataHolder build(int paramInt)
    {
      return new DataHolder(this, paramInt, null, null);
    }
    
    public DataHolder build(int paramInt, Bundle paramBundle)
    {
      return new DataHolder(this, paramInt, paramBundle, -1, null);
    }
    
    public DataHolder build(int paramInt1, Bundle paramBundle, int paramInt2)
    {
      return new DataHolder(this, paramInt1, paramBundle, paramInt2, null);
    }
    
    public int getCount()
    {
      return this.Aj.size();
    }
    
    public Builder removeRowsWithValue(String paramString, Object paramObject)
    {
      for (int i = -1 + this.Aj.size(); i >= 0; i--) {
        if (ep.equal(((HashMap)this.Aj.get(i)).get(paramString), paramObject)) {
          this.Aj.remove(i);
        }
      }
      return this;
    }
    
    public Builder sort(String paramString)
    {
      ed.d(paramString);
      if ((this.Am) && (paramString.equals(this.An))) {
        return this;
      }
      Collections.sort(this.Aj, new DataHolder.a(paramString));
      dJ();
      this.Am = true;
      this.An = paramString;
      return this;
    }
    
    public Builder withRow(ContentValues paramContentValues)
    {
      ed.d(paramContentValues);
      HashMap localHashMap = new HashMap(paramContentValues.size());
      Iterator localIterator = paramContentValues.valueSet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localHashMap.put(localEntry.getKey(), localEntry.getValue());
      }
      return withRow(localHashMap);
    }
    
    public Builder withRow(HashMap<String, Object> paramHashMap)
    {
      ed.d(paramHashMap);
      if (this.Ak != null) {
        a(paramHashMap);
      }
      this.Aj.add(paramHashMap);
      this.Am = false;
      return this;
    }
  }
  
  private static final class a
    implements Comparator<HashMap<String, Object>>
  {
    private final String Ao;
    
    a(String paramString)
    {
      this.Ao = ((String)er.f(paramString));
    }
    
    public int a(HashMap<String, Object> paramHashMap1, HashMap<String, Object> paramHashMap2)
    {
      Object localObject1 = er.f(paramHashMap1.get(this.Ao));
      Object localObject2 = er.f(paramHashMap2.get(this.Ao));
      if (localObject1.equals(localObject2)) {
        return 0;
      }
      if ((localObject1 instanceof Boolean)) {
        return ((Boolean)localObject1).compareTo((Boolean)localObject2);
      }
      if ((localObject1 instanceof Long)) {
        return ((Long)localObject1).compareTo((Long)localObject2);
      }
      if ((localObject1 instanceof Integer)) {
        return ((Integer)localObject1).compareTo((Integer)localObject2);
      }
      if ((localObject1 instanceof String)) {
        return ((String)localObject1).compareTo((String)localObject2);
      }
      throw new IllegalArgumentException("Unknown type for lValue " + localObject1);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.data.DataHolder
 * JD-Core Version:    0.7.0.1
 */