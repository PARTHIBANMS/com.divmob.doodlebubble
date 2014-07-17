package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

public abstract interface jd
{
  public static final class a
    extends ka<a>
  {
    public long Yb;
    public c.j Yc;
    public c.f fV;
    
    public a()
    {
      kw();
    }
    
    public static a l(byte[] paramArrayOfByte)
      throws kd
    {
      return (a)ke.a(new a(), paramArrayOfByte);
    }
    
    public void a(jz paramjz)
      throws IOException
    {
      paramjz.b(1, this.Yb);
      if (this.fV != null) {
        paramjz.a(2, this.fV);
      }
      if (this.Yc != null) {
        paramjz.a(3, this.Yc);
      }
      super.a(paramjz);
    }
    
    public int c()
    {
      int i = super.c() + jz.d(1, this.Yb);
      if (this.fV != null) {
        i += jz.b(2, this.fV);
      }
      if (this.Yc != null) {
        i += jz.b(3, this.Yc);
      }
      this.DY = i;
      return i;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2;
      if (paramObject == this) {
        bool2 = true;
      }
      a locala;
      label66:
      c.j localj;
      do
      {
        c.f localf;
        do
        {
          boolean bool3;
          do
          {
            boolean bool1;
            do
            {
              return bool2;
              bool1 = paramObject instanceof a;
              bool2 = false;
            } while (!bool1);
            locala = (a)paramObject;
            bool3 = this.Yb < locala.Yb;
            bool2 = false;
          } while (bool3);
          if (this.fV != null) {
            break;
          }
          localf = locala.fV;
          bool2 = false;
        } while (localf != null);
        if (this.Yc != null) {
          break label152;
        }
        localj = locala.Yc;
        bool2 = false;
      } while (localj != null);
      for (;;)
      {
        if ((this.aae == null) || (this.aae.isEmpty()))
        {
          if (locala.aae != null)
          {
            boolean bool4 = locala.aae.isEmpty();
            bool2 = false;
            if (!bool4) {
              break;
            }
          }
          return true;
          if (this.fV.equals(locala.fV)) {
            break label66;
          }
          return false;
          label152:
          if (!this.Yc.equals(locala.Yc)) {
            return false;
          }
        }
      }
      return this.aae.equals(locala.aae);
    }
    
    public int hashCode()
    {
      int i = 31 * (527 + (int)(this.Yb ^ this.Yb >>> 32));
      int j;
      int m;
      label47:
      int n;
      int i1;
      if (this.fV == null)
      {
        j = 0;
        int k = 31 * (j + i);
        if (this.Yc != null) {
          break label106;
        }
        m = 0;
        n = 31 * (m + k);
        List localList = this.aae;
        i1 = 0;
        if (localList != null)
        {
          boolean bool = this.aae.isEmpty();
          i1 = 0;
          if (!bool) {
            break label118;
          }
        }
      }
      for (;;)
      {
        return n + i1;
        j = this.fV.hashCode();
        break;
        label106:
        m = this.Yc.hashCode();
        break label47;
        label118:
        i1 = this.aae.hashCode();
      }
    }
    
    public a kw()
    {
      this.Yb = 0L;
      this.fV = null;
      this.Yc = null;
      this.aae = null;
      this.DY = -1;
      return this;
    }
    
    public a n(jy paramjy)
      throws IOException
    {
      for (;;)
      {
        int i = paramjy.ky();
        switch (i)
        {
        default: 
          if (a(paramjy, i)) {
            continue;
          }
        case 0: 
          return this;
        case 8: 
          this.Yb = paramjy.kA();
          break;
        case 18: 
          if (this.fV == null) {
            this.fV = new c.f();
          }
          paramjy.a(this.fV);
          break;
        }
        if (this.Yc == null) {
          this.Yc = new c.j();
        }
        paramjy.a(this.Yc);
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.jd
 * JD-Core Version:    0.7.0.1
 */