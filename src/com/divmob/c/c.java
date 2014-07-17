package com.divmob.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;
import com.divmob.a.b;
import com.divmob.a.e;
import com.divmob.a.h.a;
import com.divmob.a.j;
import com.divmob.listapp.a.b;
import com.divmob.listapp.a.c;
import com.divmob.listapp.a.d;
import com.divmob.listapp.a.g;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class c
{
  final Dialog a;
  Bitmap b;
  LayoutInflater c;
  Activity d;
  e e;
  ImageView f;
  String g;
  String h;
  String i;
  int j;
  int k;
  int l;
  int m;
  final float n = 15.0F;
  boolean o = false;
  final float p = 0.8F;
  String q = "";
  int r = 0;
  View s = null;
  int t = 0;
  String u = "market://details?id=com.divmob.aodonline";
  final String v = "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d";
  final String w = "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d&amazon=1";
  com.divmob.a.c x = new d(this);
  View.OnClickListener y = new g(this);
  View.OnClickListener z = new h(this);
  
  public c(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    this.j = localDisplay.getHeight();
    this.k = localDisplay.getWidth();
    this.d = paramActivity;
    this.t = this.d.getResources().getConfiguration().orientation;
    if (this.t == 2)
    {
      this.r = 1;
      this.b = BitmapFactory.decodeResource(this.d.getResources(), a.b.banner_default1);
    }
    for (;;)
    {
      this.a = new Dialog(paramActivity, a.g.Dialog);
      this.c = LayoutInflater.from(paramActivity);
      this.s = this.c.inflate(a.d.popup_dialog, null);
      this.f = ((ImageView)this.s.findViewById(a.c.btnBanner));
      this.s.findViewById(a.c.btnClose).setOnClickListener(this.y);
      this.f.setOnClickListener(this.z);
      this.a.setContentView(this.s);
      this.e = new e(paramActivity.getApplicationContext(), this.x);
      this.g = this.u;
      this.o = paramBoolean2;
      this.q = this.d.getPackageName();
      f();
      return;
      if (this.t == 1)
      {
        this.r = 0;
        this.b = BitmapFactory.decodeResource(this.d.getResources(), a.b.banner_default0);
      }
    }
  }
  
  private boolean a(Bitmap paramBitmap)
  {
    return (this.l != 0) && (this.m != 0) && ((this.l != paramBitmap.getWidth()) || (this.m != paramBitmap.getHeight()));
  }
  
  private void b(Bitmap paramBitmap)
  {
    if (!this.o)
    {
      this.l = paramBitmap.getWidth();
      this.m = paramBitmap.getHeight();
      return;
    }
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    if (f1 / f2 > this.k / this.j)
    {
      float f6 = 0.8F * this.k / f1;
      float f7 = f1 * f6;
      float f8 = f2 * f6;
      this.l = ((int)f7);
      this.m = ((int)f8);
      return;
    }
    float f3 = 0.8F * this.j / f2;
    float f4 = f1 * f3;
    float f5 = f2 * f3;
    this.l = ((int)f4);
    this.m = ((int)f5);
  }
  
  private void f()
  {
    if (j.a(this.a.getContext()))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.q;
      arrayOfObject[1] = Integer.valueOf(this.r);
      h.a locala = new h.a(0, "banner", String.format("http://divmob.com/api/morev2/index.php?package=%s&landscape=%d", arrayOfObject));
      this.e.b(locala);
    }
  }
  
  private void g()
  {
    Bitmap localBitmap = this.b;
    b(localBitmap);
    if (a(localBitmap)) {
      localBitmap = b.a(new Matrix(), localBitmap, this.l, this.m, true);
    }
    this.f.setImageBitmap(localBitmap);
  }
  
  public void a(int paramInt)
  {
    this.l = 0;
    this.m = 0;
    if (new Random().nextInt(100) <= paramInt) {
      c();
    }
  }
  
  public void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    this.l = ((int)(paramFloat1 * this.k));
    this.m = ((int)(paramFloat2 * this.j));
    if (new Random().nextInt(100) <= paramInt) {
      b();
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
        this.i = localXmlPullParser.getText();
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
      }
      i1 = localXmlPullParser.next();
      break label183;
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
          this.h = localXmlPullParser.getText();
        }
      }
    }
    label183:
    if (i1 == 1) {
      return;
    }
    switch (i1)
    {
    }
  }
  
  public boolean a()
  {
    return this.a.isShowing();
  }
  
  public void b()
  {
    g();
    this.a.show();
  }
  
  public void b(int paramInt)
  {
    b();
  }
  
  public void b(int paramInt, float paramFloat1, float paramFloat2)
  {
    this.l = ((int)(paramFloat1 * this.k));
    this.m = ((int)(paramFloat2 * this.j));
    if (new Random().nextInt(100) <= paramInt) {
      c();
    }
  }
  
  public void c()
  {
    if (j.a(this.a.getContext()))
    {
      g();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.q;
      arrayOfObject[1] = Integer.valueOf(this.r);
      h.a locala = new h.a(0, "banner", String.format("http://divmob.com/api/morev2/index.php?package=%s&landscape=%d&amazon=1", arrayOfObject));
      this.e.b(locala);
      this.a.show();
    }
  }
  
  public void d()
  {
    this.a.dismiss();
    f();
  }
  
  public void e()
  {
    if ((this.a != null) && (this.a.isShowing())) {
      this.a.dismiss();
    }
    this.e.b();
    this.e = null;
    this.d = null;
    this.b.recycle();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.c
 * JD-Core Version:    0.7.0.1
 */