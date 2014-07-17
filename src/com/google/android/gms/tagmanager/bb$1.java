package com.google.android.gms.tagmanager;

import android.util.LruCache;

class bb$1
  extends LruCache<K, V>
{
  bb$1(bb parambb, int paramInt, l.a parama)
  {
    super(paramInt);
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return this.Vx.sizeOf(paramK, paramV);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.bb.1
 * JD-Core Version:    0.7.0.1
 */