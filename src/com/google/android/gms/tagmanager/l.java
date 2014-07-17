package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class l<K, V>
{
  final a<K, V> TK = new l.1(this);
  
  public k<K, V> a(int paramInt, a<K, V> parama)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (iA() < 12) {
      return new da(paramInt, parama);
    }
    return new bb(paramInt, parama);
  }
  
  int iA()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public static abstract interface a<K, V>
  {
    public abstract int sizeOf(K paramK, V paramV);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.l
 * JD-Core Version:    0.7.0.1
 */