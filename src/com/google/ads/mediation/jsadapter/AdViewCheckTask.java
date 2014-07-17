package com.google.ads.mediation.jsadapter;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.internal.da;

public final class AdViewCheckTask
  implements Runnable
{
  public static final int BACKGROUND_COLOR;
  private final JavascriptAdapter r;
  private final Handler s;
  private final long t;
  private long u;
  
  public AdViewCheckTask(JavascriptAdapter paramJavascriptAdapter, long paramLong1, long paramLong2)
  {
    this.r = paramJavascriptAdapter;
    this.t = paramLong1;
    this.u = paramLong2;
    this.s = new Handler(Looper.getMainLooper());
  }
  
  public void run()
  {
    if ((this.r == null) || (this.r.shouldStopAdCheck())) {
      return;
    }
    new a(this.r.getWebViewWidth(), this.r.getWebViewHeight(), this.r.getWebView()).execute(new Void[0]);
  }
  
  public void start()
  {
    this.s.postDelayed(this, this.t);
  }
  
  private final class a
    extends AsyncTask<Void, Void, Boolean>
  {
    private final int v;
    private final int w;
    private final WebView x;
    private Bitmap y;
    
    public a(int paramInt1, int paramInt2, WebView paramWebView)
    {
      this.v = paramInt2;
      this.w = paramInt1;
      this.x = paramWebView;
    }
    
    protected Boolean a(Void... paramVarArgs)
    {
      for (;;)
      {
        int k;
        try
        {
          int i = this.y.getWidth();
          int j = this.y.getHeight();
          Object localObject2;
          if ((i == 0) || (j == 0))
          {
            Boolean localBoolean1 = Boolean.valueOf(false);
            localObject2 = localBoolean1;
            return localObject2;
          }
          k = 0;
          int m = 0;
          int n;
          if (k < i)
          {
            n = 0;
            if (n >= j) {
              break label139;
            }
            if (this.y.getPixel(k, n) != 0) {
              m++;
            }
          }
          else
          {
            if (m / (i * j / 100.0D) > 0.1D)
            {
              bool = true;
              Boolean localBoolean2 = Boolean.valueOf(bool);
              localObject2 = localBoolean2;
              continue;
            }
            boolean bool = false;
            continue;
          }
          n += 10;
        }
        finally {}
        continue;
        label139:
        k += 10;
      }
    }
    
    protected void a(Boolean paramBoolean)
    {
      AdViewCheckTask.a(AdViewCheckTask.this);
      if (paramBoolean.booleanValue())
      {
        AdViewCheckTask.b(AdViewCheckTask.this).sendAdReceivedUpdate();
        return;
      }
      if (AdViewCheckTask.c(AdViewCheckTask.this) > 0L)
      {
        if (da.n(2)) {
          da.s("Ad not detected, scheduling another run.");
        }
        AdViewCheckTask.e(AdViewCheckTask.this).postDelayed(AdViewCheckTask.this, AdViewCheckTask.d(AdViewCheckTask.this));
        return;
      }
      da.s("Ad not detected, Not scheduling anymore runs.");
      AdViewCheckTask.b(AdViewCheckTask.this).sendAdNotReceivedUpdate();
    }
    
    protected void onPreExecute()
    {
      try
      {
        this.y = Bitmap.createBitmap(this.w, this.v, Bitmap.Config.ARGB_8888);
        this.x.setVisibility(0);
        this.x.measure(View.MeasureSpec.makeMeasureSpec(this.w, 0), View.MeasureSpec.makeMeasureSpec(this.v, 0));
        this.x.layout(0, 0, this.w, this.v);
        Canvas localCanvas = new Canvas(this.y);
        this.x.draw(localCanvas);
        this.x.invalidate();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.ads.mediation.jsadapter.AdViewCheckTask
 * JD-Core Version:    0.7.0.1
 */