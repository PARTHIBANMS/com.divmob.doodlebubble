package com.divmob.c;

import android.graphics.Bitmap;
import android.widget.ImageButton;
import com.divmob.a.h.a;
import java.util.ArrayList;

class k
  implements Runnable
{
  k(j paramj, Bitmap paramBitmap, h.a parama) {}
  
  public void run()
  {
    if ((this.b != null) && (j.a(this.a).i.size() >= 1))
    {
      if (this.c.b.equals(((a)j.a(this.a).i.get(0)).b))
      {
        j.a(this.a).g[0].setImageBitmap(this.b);
        j.a(this.a).g[0].setVisibility(0);
        j.a(this.a).h[0] = ((a)j.a(this.a).i.get(0)).a;
      }
    }
    else {
      return;
    }
    j.a(this.a).g[1].setImageBitmap(this.b);
    j.a(this.a).g[1].setVisibility(0);
    j.a(this.a).h[1] = ((a)j.a(this.a).i.get(1)).a;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.k
 * JD-Core Version:    0.7.0.1
 */