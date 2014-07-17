package com.google.android.gms.tagmanager;

import android.util.LruCache;

class bb<K, V>
  implements k<K, V>
{
  private LruCache<K, V> Vw;
  
  bb(int paramInt, l.a<K, V> parama)
  {
    this.Vw = new bb.1(this, paramInt, parama);
  }
  
  public void e(K paramK, V paramV)
  {
    this.Vw.put(paramK, paramV);
  }
  
  public V get(K paramK)
  {
    return this.Vw.get(paramK);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.bb
 * JD-Core Version:    0.7.0.1
 */