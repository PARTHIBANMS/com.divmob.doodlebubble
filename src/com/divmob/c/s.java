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

class s
  implements c
{
  s(r paramr) {}
  
  public void a(h.a parama, Bitmap paramBitmap)
  {
    if (this.a.h == null) {
      return;
    }
    this.a.h.runOnUiThread(new t(this, paramBitmap));
  }
  
  public void a(h.a parama, InputStream paramInputStream)
  {
    if (this.a.h == null) {
      return;
    }
    this.a.a(paramInputStream);
    h.a locala = new h.a(2, "bannerImage", this.a.m);
    if (d.a(this.a.h, this.a.m.hashCode()))
    {
      Bitmap localBitmap = BitmapFactory.decodeFile(d.g(this.a.h, this.a.m.hashCode()));
      this.a.h.runOnUiThread(new u(this, localBitmap));
      return;
    }
    this.a.i.b(locala);
  }
  
  public void a(h paramh) {}
  
  public void a(h paramh, h.a parama) {}
  
  public void a(h paramh, h.a parama, long paramLong1, long paramLong2) {}
  
  public void b(h paramh) {}
  
  public void b(h paramh, h.a parama) {}
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.s
 * JD-Core Version:    0.7.0.1
 */