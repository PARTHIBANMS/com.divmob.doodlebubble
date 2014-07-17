package com.divmob.c;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.divmob.a.b;
import com.divmob.a.c;
import com.divmob.a.e;
import com.divmob.a.h.a;
import com.divmob.a.j;
import com.divmob.listapp.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class r
{
  String a = "market://details?id=com.divmob.kidpuzzleworld";
  final String b = "http://divmob.com/api/more/index.php?pop=1";
  final String c = "http://divmob.com/api/more/index.php?pop=1&kid=1";
  final String d = "http://divmob.com/api/more/index.php?pop=1&amazon=1";
  Bitmap e;
  String f;
  LayoutInflater g;
  Activity h;
  e i;
  ViewGroup j;
  x k;
  String l;
  String m;
  int n;
  int o;
  int p;
  int q;
  int r;
  int s;
  boolean t;
  c u = new s(this);
  View.OnClickListener v = new v(this);
  View.OnClickListener w = new w(this);
  
  public r(Activity paramActivity)
  {
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    this.n = localDisplay.getHeight();
    this.o = localDisplay.getWidth();
    this.h = paramActivity;
    this.j = ((ViewGroup)paramActivity.getWindow().getDecorView());
    this.k = new x(paramActivity);
    this.j.addView(this.k);
    this.k.setOnClickListener(this.w);
    this.k.setVisibility(8);
    this.i = new e(paramActivity.getApplicationContext(), this.u);
    this.e = BitmapFactory.decodeResource(this.h.getResources(), a.b.banner_default1);
    this.l = this.a;
  }
  
  private boolean a(Bitmap paramBitmap)
  {
    return (this.p != 0) && (this.q != 0) && ((this.p != paramBitmap.getWidth()) || (this.q != paramBitmap.getHeight()));
  }
  
  private Bitmap b(Bitmap paramBitmap)
  {
    if ((this.p > this.q) && (paramBitmap.getHeight() > paramBitmap.getWidth())) {
      paramBitmap = b.a(paramBitmap, 90);
    }
    if ((this.p < this.q) && (paramBitmap.getHeight() < paramBitmap.getWidth())) {
      paramBitmap = b.a(paramBitmap, 90);
    }
    return paramBitmap;
  }
  
  private void d()
  {
    this.t = true;
    this.k.a(this.r, this.s);
    g();
    if (j.a(this.h))
    {
      h.a locala = new h.a(0, "banner", "http://divmob.com/api/more/index.php?pop=1");
      this.i.b(locala);
    }
    if (this.t) {
      this.k.setVisibility(0);
    }
  }
  
  private void e()
  {
    this.t = true;
    this.k.a(this.r, this.s);
    g();
    if (j.a(this.h))
    {
      h.a locala = new h.a(0, "banner", "http://divmob.com/api/more/index.php?pop=1&kid=1");
      this.i.b(locala);
    }
    if (this.t) {
      this.k.setVisibility(0);
    }
  }
  
  private void f()
  {
    this.t = true;
    this.k.a(this.r, this.s);
    g();
    if (j.a(this.h))
    {
      h.a locala = new h.a(0, "banner", "http://divmob.com/api/more/index.php?pop=1&amazon=1");
      this.i.b(locala);
    }
    if (this.t) {
      this.k.setVisibility(0);
    }
  }
  
  private void g()
  {
    Bitmap localBitmap = b(b.a(this.e));
    if (a(localBitmap)) {
      localBitmap = b.a(new Matrix(), localBitmap, this.p, this.q, true);
    }
    this.k.a(localBitmap);
  }
  
  public void a(int paramInt)
  {
    this.p = 0;
    this.q = 0;
    if (new Random().nextInt(100) <= paramInt) {
      e();
    }
  }
  
  public void a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.r = ((int)(paramFloat1 * this.o));
    this.s = ((int)(paramFloat2 * this.n));
    this.p = ((int)(paramFloat3 * this.o));
    this.q = ((int)(paramFloat4 * this.n));
    if (new Random().nextInt(100) <= paramInt) {
      d();
    }
  }
  
  public void a(InputStream paramInputStream)
  {
    int i1;
    for (;;)
    {
      try
      {
        localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
        localXmlPullParser.setInput(paramInputStream, null);
        i1 = localXmlPullParser.getEventType();
        i2 = 0;
        i3 = 0;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        XmlPullParser localXmlPullParser;
        int i2;
        int i3;
        String str2;
        String str1;
        localXmlPullParserException.printStackTrace();
        return;
        if (i2 == 0) {
          continue;
        }
        this.m = localXmlPullParser.getText();
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
      }
      i1 = localXmlPullParser.next();
      break label181;
      str2 = localXmlPullParser.getName();
      if (str2.equalsIgnoreCase("link"))
      {
        i3 = 1;
      }
      else if (str2.equalsIgnoreCase("banner"))
      {
        i2 = 1;
        continue;
        str1 = localXmlPullParser.getName();
        if (str1.equalsIgnoreCase("link"))
        {
          i3 = 0;
        }
        else if (str1.equalsIgnoreCase("banner"))
        {
          i2 = 0;
          continue;
          if (i3 == 0) {
            continue;
          }
          this.f = localXmlPullParser.getText();
        }
      }
    }
    label181:
    if (i1 == 1) {
      return;
    }
    switch (i1)
    {
    }
  }
  
  public void a(String paramString)
  {
    if (this.l.equals(this.a)) {
      this.l = paramString;
    }
    this.a = paramString;
  }
  
  public boolean a()
  {
    return this.k.getVisibility() == 0;
  }
  
  public void b()
  {
    this.t = false;
    this.k.setVisibility(8);
  }
  
  public void b(int paramInt)
  {
    this.p = 0;
    this.q = 0;
    if (new Random().nextInt(100) <= paramInt) {
      f();
    }
  }
  
  public void b(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.r = ((int)(paramFloat1 * this.o));
    this.s = ((int)(paramFloat2 * this.n));
    this.p = ((int)(paramFloat3 * this.o));
    this.q = ((int)(paramFloat4 * this.n));
    if (new Random().nextInt(100) <= paramInt) {
      e();
    }
  }
  
  public void c()
  {
    this.j = null;
    this.k = null;
    this.i.b();
    this.i = null;
    this.h = null;
    this.e.recycle();
  }
  
  public void c(int paramInt)
  {
    this.p = 0;
    this.q = 0;
    if (new Random().nextInt(100) <= paramInt) {
      d();
    }
  }
  
  public void c(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.r = ((int)(paramFloat1 * this.o));
    this.s = ((int)(paramFloat2 * this.n));
    this.p = ((int)(paramFloat3 * this.o));
    this.q = ((int)(paramFloat4 * this.n));
    if (new Random().nextInt(100) <= paramInt) {
      f();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.r
 * JD-Core Version:    0.7.0.1
 */