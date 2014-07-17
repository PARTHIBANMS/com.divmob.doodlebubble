package com.divmob.c;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.divmob.a.c;
import com.divmob.a.d;
import com.divmob.a.e;
import com.divmob.a.h;
import com.divmob.a.h.a;
import java.io.InputStream;
import java.util.ArrayList;

class j
  implements c
{
  j(i parami) {}
  
  public void a(h.a parama, Bitmap paramBitmap)
  {
    if (this.a.e == null) {
      return;
    }
    this.a.e.runOnUiThread(new k(this, paramBitmap, parama));
  }
  
  public void a(h.a parama, InputStream paramInputStream)
  {
    if (this.a.e == null) {
      return;
    }
    this.a.a(paramInputStream);
    if (2 > this.a.i.size()) {}
    for (int i = this.a.i.size();; i = 2)
    {
      int j = 0;
      label47:
      h.a locala;
      if (j < i)
      {
        locala = new h.a(2, "bannerImage", ((a)this.a.i.get(j)).b);
        if (!d.a(this.a.e, ((a)this.a.i.get(j)).b.hashCode())) {
          break label207;
        }
        Bitmap localBitmap = BitmapFactory.decodeFile(d.g(this.a.e, ((a)this.a.i.get(j)).b.hashCode()));
        this.a.e.runOnUiThread(new l(this, localBitmap, j));
      }
      for (;;)
      {
        j++;
        break label47;
        break;
        label207:
        this.a.f.b(locala);
      }
    }
  }
  
  public void a(h paramh) {}
  
  public void a(h paramh, h.a parama) {}
  
  public void a(h paramh, h.a parama, long paramLong1, long paramLong2) {}
  
  public void b(h paramh) {}
  
  public void b(h paramh, h.a parama) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.j
 * JD-Core Version:    0.7.0.1
 */