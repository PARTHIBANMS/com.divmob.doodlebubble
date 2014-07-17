package com.divmob.c;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.divmob.a.h;
import com.divmob.a.h.a;
import java.io.InputStream;

class d
  implements com.divmob.a.c
{
  d(c paramc) {}
  
  public void a(h.a parama, Bitmap paramBitmap)
  {
    if (this.a.d == null) {
      return;
    }
    this.a.d.runOnUiThread(new e(this, paramBitmap));
  }
  
  public void a(h.a parama, InputStream paramInputStream)
  {
    if (this.a.d == null) {
      return;
    }
    this.a.a(paramInputStream);
    h.a locala = new h.a(2, "bannerImage", this.a.i);
    if (com.divmob.a.d.a(this.a.d, this.a.i.hashCode()))
    {
      Bitmap localBitmap = BitmapFactory.decodeFile(com.divmob.a.d.g(this.a.d, this.a.i.hashCode()));
      this.a.d.runOnUiThread(new f(this, localBitmap));
      return;
    }
    this.a.e.b(locala);
  }
  
  public void a(h paramh) {}
  
  public void a(h paramh, h.a parama) {}
  
  public void a(h paramh, h.a parama, long paramLong1, long paramLong2) {}
  
  public void b(h paramh) {}
  
  public void b(h paramh, h.a parama) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.d
 * JD-Core Version:    0.7.0.1
 */