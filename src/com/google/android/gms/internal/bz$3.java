package com.google.android.gms.internal;

class bz$3
  implements Runnable
{
  bz$3(bz parambz) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (bz.a(this.nV))
      {
        if (bz.c(this.nV).errorCode != -2) {
          return;
        }
        bz.d(this.nV).bb().a(this.nV);
        if (bz.c(this.nV).errorCode == -3)
        {
          da.v("Loading URL in WebView: " + bz.c(this.nV).nw);
          bz.d(this.nV).loadUrl(bz.c(this.nV).nw);
          return;
        }
      }
      da.v("Loading HTML in WebView.");
      bz.d(this.nV).loadDataWithBaseURL(cv.p(bz.c(this.nV).nw), bz.c(this.nV).oi, "text/html", "UTF-8", null);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bz.3
 * JD-Core Version:    0.7.0.1
 */