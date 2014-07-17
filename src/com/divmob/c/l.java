package com.divmob.c;

import android.graphics.Bitmap;
import android.widget.ImageButton;
import java.util.ArrayList;

class l
  implements Runnable
{
  l(j paramj, Bitmap paramBitmap, int paramInt) {}
  
  public void run()
  {
    if (this.b != null)
    {
      j.a(this.a).g[this.c].setImageBitmap(this.b);
      j.a(this.a).g[this.c].setVisibility(0);
      j.a(this.a).h[this.c] = ((a)j.a(this.a).i.get(this.c)).a;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.l
 * JD-Core Version:    0.7.0.1
 */