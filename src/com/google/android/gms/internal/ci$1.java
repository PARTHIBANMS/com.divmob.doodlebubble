package com.google.android.gms.internal;

import android.content.Context;

final class ci$1
  implements Runnable
{
  ci$1(Context paramContext, cd paramcd, ck paramck, String paramString) {}
  
  public void run()
  {
    dd localdd = dd.a(this.os, new ab(), false, false, null, this.ot.kN);
    localdd.setWillNotDraw(true);
    this.ou.b(localdd);
    de localde = localdd.bb();
    localde.a("/invalidRequest", this.ou.oz);
    localde.a("/loadAdURL", this.ou.oA);
    localde.a("/log", aq.mb);
    da.s("Getting the ad request URL.");
    localdd.loadDataWithBaseURL("http://googleads.g.doubleclick.net", "<!DOCTYPE html><html><head><script src=\"http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.js\"></script><script>AFMA_buildAdURL(" + this.ov + ");</script></head><body></body></html>", "text/html", "UTF-8", null);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ci.1
 * JD-Core Version:    0.7.0.1
 */