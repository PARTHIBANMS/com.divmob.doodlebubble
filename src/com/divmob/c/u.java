package com.divmob.c;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.divmob.a.b;

class u
  implements Runnable
{
  u(s params, Bitmap paramBitmap) {}
  
  public void run()
  {
    if (this.b != null)
    {
      s.a(this.a).e.recycle();
      s.a(this.a).e = this.b;
      Bitmap localBitmap1 = b.a(s.a(this.a).e);
      Bitmap localBitmap2 = r.a(s.a(this.a), localBitmap1);
      if (r.b(s.a(this.a), localBitmap2)) {
        localBitmap2 = b.a(new Matrix(), localBitmap2, s.a(this.a).p, s.a(this.a).q, true);
      }
      s.a(this.a).k.a(localBitmap2);
      s.a(this.a).l = s.a(this.a).f;
      return;
    }
    r.a(s.a(this.a));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.u
 * JD-Core Version:    0.7.0.1
 */