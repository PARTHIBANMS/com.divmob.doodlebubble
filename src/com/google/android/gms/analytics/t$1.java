package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.Map;

class t$1
  implements Runnable
{
  t$1(t paramt, Map paramMap) {}
  
  public void run()
  {
    if (TextUtils.isEmpty((CharSequence)this.sf.get("&cid"))) {
      this.sf.put("&cid", t.a(this.sg));
    }
    if ((GoogleAnalytics.getInstance(t.b(this.sg)).getAppOptOut()) || (t.a(this.sg, this.sf))) {
      return;
    }
    if (!TextUtils.isEmpty(t.c(this.sg)))
    {
      u.bR().r(true);
      this.sf.putAll(new HitBuilders.HitBuilder().setCampaignParamsFromUrl(t.c(this.sg)).build());
      u.bR().r(false);
      t.a(this.sg, null);
    }
    t.b(this.sg, this.sf);
    t.c(this.sg, this.sf);
    Map localMap = y.s(this.sf);
    t.e(this.sg).b(localMap, Long.valueOf((String)this.sf.get("&ht")).longValue(), t.d(this.sg, this.sf), t.d(this.sg));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.t.1
 * JD-Core Version:    0.7.0.1
 */