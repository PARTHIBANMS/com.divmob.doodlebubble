package com.divmob.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import com.divmob.a.c;
import com.divmob.a.e;
import com.divmob.a.h.a;
import com.divmob.listapp.a.c;
import com.divmob.listapp.a.d;
import com.divmob.listapp.a.g;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class i
{
  final String a = "http://divmob.com/api/morev2/index.php?package=%s&popexit=1";
  final String b = "http://divmob.com/api/morev2/index.php?package=%s&popexit=1&amazon=1";
  final Dialog c;
  LayoutInflater d;
  Activity e;
  e f;
  ImageButton[] g;
  String[] h;
  ArrayList<a> i;
  String j = "";
  c k = new j(this);
  View.OnClickListener l = new m(this);
  View.OnClickListener m = new n(this);
  View.OnClickListener n = new o(this);
  View.OnClickListener o = new p(this);
  DialogInterface.OnDismissListener p = new q(this);
  private int q;
  
  public i(Activity paramActivity, boolean paramBoolean, int paramInt)
  {
    this.e = paramActivity;
    this.d = LayoutInflater.from(paramActivity);
    this.c = new Dialog(paramActivity, a.g.Dialog_Quit);
    this.f = new e(paramActivity.getApplicationContext(), this.k);
    this.i = new ArrayList();
    this.g = new ImageButton[2];
    this.h = new String[2];
    this.q = paramInt;
    this.j = this.e.getPackageName();
    f();
    e();
  }
  
  private void e()
  {
    switch (this.q)
    {
    default: 
      if (com.divmob.a.j.a(this.c.getContext()))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.j;
        h.a locala2 = new h.a(0, "banner", String.format("http://divmob.com/api/morev2/index.php?package=%s&popexit=1", arrayOfObject2));
        this.f.b(locala2);
      }
      break;
    }
    do
    {
      return;
    } while (!com.divmob.a.j.a(this.c.getContext()));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.j;
    h.a locala1 = new h.a(0, "banner", String.format("http://divmob.com/api/morev2/index.php?package=%s&popexit=1&amazon=1", arrayOfObject1));
    this.f.b(locala1);
  }
  
  private void f()
  {
    View localView = this.d.inflate(a.d.popup_dialog_quit, null);
    this.g[0] = ((ImageButton)localView.findViewById(a.c.btnBanner1));
    this.g[0].setOnClickListener(this.n);
    this.g[1] = ((ImageButton)localView.findViewById(a.c.btnBanner2));
    this.g[1].setOnClickListener(this.o);
    localView.findViewById(a.c.btnYes).setOnClickListener(this.m);
    localView.findViewById(a.c.btnNo).setOnClickListener(this.l);
    this.c.setContentView(localView);
    this.c.setOnDismissListener(this.p);
  }
  
  public void a(int paramInt)
  {
    b();
  }
  
  public void a(InputStream paramInputStream)
  {
    this.i.clear();
    int i1;
    for (;;)
    {
      XmlPullParser localXmlPullParser;
      a locala;
      int i2;
      int i3;
      try
      {
        localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
        localXmlPullParser.setInput(paramInputStream, null);
        i1 = localXmlPullParser.getEventType();
        locala = null;
        i2 = 0;
        i3 = 0;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        String str2;
        localXmlPullParserException.printStackTrace();
        return;
        String str1 = localXmlPullParser.getName();
        if (!str1.equalsIgnoreCase("link")) {
          continue;
        }
        i3 = 0;
        continue;
        if (!str1.equalsIgnoreCase("banner")) {
          continue;
        }
        i2 = 0;
        continue;
        if (!str1.equalsIgnoreCase("game")) {
          continue;
        }
        this.i.add(locala);
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
      }
      i1 = localXmlPullParser.next();
      break;
      str2 = localXmlPullParser.getName();
      if (str2.equalsIgnoreCase("link"))
      {
        i3 = 1;
      }
      else if (str2.equalsIgnoreCase("banner"))
      {
        i2 = 1;
      }
      else if (str2.equalsIgnoreCase("game"))
      {
        locala = new a();
        continue;
        if (i3 != 0) {
          locala.a = localXmlPullParser.getText();
        } else if (i2 != 0) {
          locala.b = localXmlPullParser.getText();
        }
      }
    }
    if (i1 == 1) {
      return;
    }
    switch (i1)
    {
    }
  }
  
  public boolean a()
  {
    return this.c.isShowing();
  }
  
  public void b()
  {
    this.c.show();
  }
  
  public void c()
  {
    this.c.dismiss();
  }
  
  public void d()
  {
    if ((this.c != null) && (this.c.isShowing())) {
      this.c.dismiss();
    }
    this.f.b();
    this.f = null;
    this.e = null;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.i
 * JD-Core Version:    0.7.0.1
 */