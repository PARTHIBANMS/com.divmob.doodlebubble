package com.divmob.c;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.widget.ImageView;
import com.divmob.a.b;

class e
  implements Runnable
{
  e(d paramd, Bitmap paramBitmap) {}
  
  public void run()
  {
    if (this.b != null)
    {
      d.a(this.a).b = this.b;
      Bitmap localBitmap = b.a(d.a(this.a).b);
      c.a(d.a(this.a), localBitmap);
      if (c.b(d.a(this.a), localBitmap)) {
        localBitmap = b.a(new Matrix(), localBitmap, d.a(this.a).l, d.a(this.a).m, true);
      }
      d.a(this.a).f.setImageBitmap(localBitmap);
      d.a(this.a).g = d.a(this.a).h;
      return;
    }
    c.a(d.a(this.a));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.e
 * JD-Core Version:    0.7.0.1
 */