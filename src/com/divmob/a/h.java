package com.divmob.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class h
{
  protected Context a;
  protected final ArrayList<a> b = new ArrayList();
  protected boolean c;
  protected Thread d;
  protected a e;
  protected final AtomicBoolean f = new AtomicBoolean(false);
  protected c g;
  
  public h(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public h(Context paramContext, c paramc)
  {
    this.a = paramContext.getApplicationContext();
    this.g = paramc;
    c();
  }
  
  private void c()
  {
    if (this.d != null) {}
    do
    {
      return;
      this.c = false;
      this.d = new Thread(new d(null));
      this.d.setName("Resource-Downloading");
      this.d.start();
    } while (this.g == null);
    this.g.a(this);
  }
  
  private int d(a parama)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.b.size()) {
        i = -1;
      }
      while (((a)this.b.get(i)).equals(parama)) {
        return i;
      }
    }
  }
  
  public c a()
  {
    return this.g;
  }
  
  public void a(c paramc)
  {
    this.g = paramc;
  }
  
  public abstract boolean a(a parama);
  
  public void b()
  {
    synchronized (this.b)
    {
      this.c = true;
      this.e = null;
      this.b.notifyAll();
      if (this.d != null)
      {
        this.d.interrupt();
        this.d = null;
      }
      if (this.g != null)
      {
        this.g.b(this);
        this.g = null;
      }
      return;
    }
  }
  
  public void b(a parama)
  {
    if (this.d == null) {
      c();
    }
    if ((this.e != null) && (this.e.equals(parama))) {
      return;
    }
    for (;;)
    {
      int i;
      StringBuffer localStringBuffer;
      int j;
      synchronized (this.b)
      {
        i = d(parama);
        if (i > 0)
        {
          this.b.remove(i);
          this.b.add(0, parama);
          localStringBuffer = new StringBuffer();
          j = 0;
          if (j < this.b.size()) {
            break label134;
          }
          if (!this.f.get()) {
            this.b.notifyAll();
          }
          return;
        }
      }
      if (i < 0)
      {
        this.b.add(0, parama);
        continue;
        label134:
        localStringBuffer.append(((a)this.b.get(j)).toString()).append(" ");
        j++;
      }
    }
  }
  
  public boolean c(a parama)
  {
    synchronized (this.b)
    {
      int i = d(parama);
      if (i >= 0)
      {
        this.b.remove(i);
        return true;
      }
      return false;
    }
  }
  
  public static class a
  {
    public String a;
    public String b;
    public int c;
    public int d;
    public int e;
    
    public a(int paramInt, String paramString1, String paramString2)
    {
      this.c = paramInt;
      this.a = paramString1;
      this.b = paramString2;
    }
    
    public a(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
    {
      this.c = paramInt1;
      this.a = paramString1;
      this.b = paramString2;
      this.d = paramInt2;
      this.e = paramInt3;
    }
    
    public boolean equals(Object paramObject)
    {
      a locala = (a)paramObject;
      return (this.a.equals(locala.a)) && (this.b.equals(locala.b)) && (this.c == locala.c);
    }
    
    public String toString()
    {
      return "(" + this.c + ", " + this.a + ")";
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(long paramLong1, long paramLong2);
    
    public abstract void a(Bitmap paramBitmap);
  }
  
  public static abstract class c
    implements c
  {
    public void a(h paramh) {}
    
    public void a(h paramh, h.a parama) {}
    
    public void a(h paramh, h.a parama, long paramLong1, long paramLong2) {}
    
    public void b(h paramh) {}
  }
  
  private class d
    implements Runnable
  {
    private d() {}
    
    public void run()
    {
      for (;;)
      {
        h.this.e = null;
        synchronized (h.this.b)
        {
          if (h.this.c) {
            return;
          }
          if (!h.this.b.isEmpty())
          {
            h.this.e = ((h.a)h.this.b.remove(0));
            if (h.this.e == null) {
              continue;
            }
            h.this.f.set(true);
            if (h.this.a(h.this.e)) {
              continue;
            }
          }
        }
        try
        {
          synchronized (h.this.f)
          {
            h.this.f.wait();
          }
        }
        catch (InterruptedException localInterruptedException2)
        {
          try
          {
            h.this.b.wait();
            label151:
            continue;
            localObject1 = finally;
            throw localObject1;
            localInterruptedException2 = localInterruptedException2;
          }
          catch (InterruptedException localInterruptedException1)
          {
            break label151;
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.h
 * JD-Core Version:    0.7.0.1
 */