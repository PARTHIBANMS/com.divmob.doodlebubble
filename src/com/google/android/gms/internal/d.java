package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

public abstract interface d
{
  public static final class a
    extends ka<a>
  {
    private static volatile a[] fX;
    public String fY;
    public a[] fZ;
    public a[] ga;
    public a[] gb;
    public String gc;
    public String gd;
    public long ge;
    public boolean gf;
    public a[] gg;
    public int[] gh;
    public boolean gi;
    public int type;
    
    public a()
    {
      s();
    }
    
    public static a[] r()
    {
      if (fX == null) {}
      synchronized (kc.aah)
      {
        if (fX == null) {
          fX = new a[0];
        }
        return fX;
      }
    }
    
    public void a(jz paramjz)
      throws IOException
    {
      paramjz.f(1, this.type);
      if (!this.fY.equals("")) {
        paramjz.b(2, this.fY);
      }
      if ((this.fZ != null) && (this.fZ.length > 0)) {
        for (int i1 = 0; i1 < this.fZ.length; i1++)
        {
          a locala4 = this.fZ[i1];
          if (locala4 != null) {
            paramjz.a(3, locala4);
          }
        }
      }
      if ((this.ga != null) && (this.ga.length > 0)) {
        for (int n = 0; n < this.ga.length; n++)
        {
          a locala3 = this.ga[n];
          if (locala3 != null) {
            paramjz.a(4, locala3);
          }
        }
      }
      if ((this.gb != null) && (this.gb.length > 0)) {
        for (int m = 0; m < this.gb.length; m++)
        {
          a locala2 = this.gb[m];
          if (locala2 != null) {
            paramjz.a(5, locala2);
          }
        }
      }
      if (!this.gc.equals("")) {
        paramjz.b(6, this.gc);
      }
      if (!this.gd.equals("")) {
        paramjz.b(7, this.gd);
      }
      if (this.ge != 0L) {
        paramjz.b(8, this.ge);
      }
      if (this.gi) {
        paramjz.a(9, this.gi);
      }
      if ((this.gh != null) && (this.gh.length > 0)) {
        for (int k = 0; k < this.gh.length; k++) {
          paramjz.f(10, this.gh[k]);
        }
      }
      if (this.gg != null)
      {
        int i = this.gg.length;
        int j = 0;
        if (i > 0) {
          while (j < this.gg.length)
          {
            a locala1 = this.gg[j];
            if (locala1 != null) {
              paramjz.a(11, locala1);
            }
            j++;
          }
        }
      }
      if (this.gf) {
        paramjz.a(12, this.gf);
      }
      super.a(paramjz);
    }
    
    public int c()
    {
      int i = super.c() + jz.g(1, this.type);
      if (!this.fY.equals("")) {
        i += jz.g(2, this.fY);
      }
      if ((this.fZ != null) && (this.fZ.length > 0))
      {
        int i5 = i;
        for (int i6 = 0; i6 < this.fZ.length; i6++)
        {
          a locala4 = this.fZ[i6];
          if (locala4 != null) {
            i5 += jz.b(3, locala4);
          }
        }
        i = i5;
      }
      if ((this.ga != null) && (this.ga.length > 0))
      {
        int i3 = i;
        for (int i4 = 0; i4 < this.ga.length; i4++)
        {
          a locala3 = this.ga[i4];
          if (locala3 != null) {
            i3 += jz.b(4, locala3);
          }
        }
        i = i3;
      }
      if ((this.gb != null) && (this.gb.length > 0))
      {
        int i1 = i;
        for (int i2 = 0; i2 < this.gb.length; i2++)
        {
          a locala2 = this.gb[i2];
          if (locala2 != null) {
            i1 += jz.b(5, locala2);
          }
        }
        i = i1;
      }
      if (!this.gc.equals("")) {
        i += jz.g(6, this.gc);
      }
      if (!this.gd.equals("")) {
        i += jz.g(7, this.gd);
      }
      if (this.ge != 0L) {
        i += jz.d(8, this.ge);
      }
      if (this.gi) {
        i += jz.b(9, this.gi);
      }
      if ((this.gh != null) && (this.gh.length > 0))
      {
        int m = 0;
        int n = 0;
        while (m < this.gh.length)
        {
          n += jz.cC(this.gh[m]);
          m++;
        }
        i = i + n + 1 * this.gh.length;
      }
      if (this.gg != null)
      {
        int j = this.gg.length;
        int k = 0;
        if (j > 0) {
          while (k < this.gg.length)
          {
            a locala1 = this.gg[k];
            if (locala1 != null) {
              i += jz.b(11, locala1);
            }
            k++;
          }
        }
      }
      if (this.gf) {
        i += jz.b(12, this.gf);
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
      label69:
      do
      {
        String str2;
        do
        {
          boolean bool5;
          do
          {
            boolean bool4;
            do
            {
              boolean bool3;
              do
              {
                String str3;
                do
                {
                  int i;
                  int j;
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
                    i = this.type;
                    j = locala.type;
                    bool2 = false;
                  } while (i != j);
                  if (this.fY != null) {
                    break;
                  }
                  str3 = locala.fY;
                  bool2 = false;
                } while (str3 != null);
                bool3 = kc.equals(this.fZ, locala.fZ);
                bool2 = false;
              } while (!bool3);
              bool4 = kc.equals(this.ga, locala.ga);
              bool2 = false;
            } while (!bool4);
            bool5 = kc.equals(this.gb, locala.gb);
            bool2 = false;
          } while (!bool5);
          if (this.gc != null) {
            break label344;
          }
          str2 = locala.gc;
          bool2 = false;
        } while (str2 != null);
        if (this.gd != null) {
          break label361;
        }
        str1 = locala.gd;
        bool2 = false;
      } while (str1 != null);
      label153:
      label344:
      label361:
      while (this.gd.equals(locala.gd))
      {
        String str1;
        boolean bool6 = this.ge < locala.ge;
        bool2 = false;
        if (bool6) {
          break;
        }
        boolean bool7 = this.gf;
        boolean bool8 = locala.gf;
        bool2 = false;
        if (bool7 != bool8) {
          break;
        }
        boolean bool9 = kc.equals(this.gg, locala.gg);
        bool2 = false;
        if (!bool9) {
          break;
        }
        boolean bool10 = kc.equals(this.gh, locala.gh);
        bool2 = false;
        if (!bool10) {
          break;
        }
        boolean bool11 = this.gi;
        boolean bool12 = locala.gi;
        bool2 = false;
        if (bool11 != bool12) {
          break;
        }
        if ((this.aae != null) && (!this.aae.isEmpty())) {
          break label378;
        }
        if (locala.aae != null)
        {
          boolean bool13 = locala.aae.isEmpty();
          bool2 = false;
          if (!bool13) {
            break;
          }
        }
        return true;
        if (this.fY.equals(locala.fY)) {
          break label69;
        }
        return false;
        if (this.gc.equals(locala.gc)) {
          break label153;
        }
        return false;
      }
      return false;
      label378:
      return this.aae.equals(locala.aae);
    }
    
    public int hashCode()
    {
      int i = 1231;
      int j = 31 * (527 + this.type);
      int k;
      int n;
      label76:
      int i2;
      label96:
      int i4;
      label133:
      label172:
      int i6;
      int i7;
      if (this.fY == null)
      {
        k = 0;
        int m = 31 * (31 * (31 * (31 * (k + j) + kc.hashCode(this.fZ)) + kc.hashCode(this.ga)) + kc.hashCode(this.gb));
        if (this.gc != null) {
          break label231;
        }
        n = 0;
        int i1 = 31 * (n + m);
        if (this.gd != null) {
          break label243;
        }
        i2 = 0;
        int i3 = 31 * (31 * (i2 + i1) + (int)(this.ge ^ this.ge >>> 32));
        if (!this.gf) {
          break label255;
        }
        i4 = i;
        int i5 = 31 * (31 * (31 * (i4 + i3) + kc.hashCode(this.gg)) + kc.hashCode(this.gh));
        if (!this.gi) {
          break label263;
        }
        i6 = 31 * (i5 + i);
        List localList = this.aae;
        i7 = 0;
        if (localList != null)
        {
          boolean bool = this.aae.isEmpty();
          i7 = 0;
          if (!bool) {
            break label270;
          }
        }
      }
      for (;;)
      {
        return i6 + i7;
        k = this.fY.hashCode();
        break;
        label231:
        n = this.gc.hashCode();
        break label76;
        label243:
        i2 = this.gd.hashCode();
        break label96;
        label255:
        i4 = 1237;
        break label133;
        label263:
        i = 1237;
        break label172;
        label270:
        i7 = this.aae.hashCode();
      }
    }
    
    public a l(jy paramjy)
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
          int i17 = paramjy.kB();
          switch (i17)
          {
          default: 
            break;
          }
          this.type = i17;
          break;
        case 18: 
          this.fY = paramjy.readString();
          break;
        case 26: 
          int i15 = kh.c(paramjy, 26);
          if (this.fZ == null) {}
          a[] arrayOfa4;
          for (int i16 = 0;; i16 = this.fZ.length)
          {
            arrayOfa4 = new a[i15 + i16];
            if (i16 != 0) {
              System.arraycopy(this.fZ, 0, arrayOfa4, 0, i16);
            }
            while (i16 < -1 + arrayOfa4.length)
            {
              arrayOfa4[i16] = new a();
              paramjy.a(arrayOfa4[i16]);
              paramjy.ky();
              i16++;
            }
          }
          arrayOfa4[i16] = new a();
          paramjy.a(arrayOfa4[i16]);
          this.fZ = arrayOfa4;
          break;
        case 34: 
          int i13 = kh.c(paramjy, 34);
          if (this.ga == null) {}
          a[] arrayOfa3;
          for (int i14 = 0;; i14 = this.ga.length)
          {
            arrayOfa3 = new a[i13 + i14];
            if (i14 != 0) {
              System.arraycopy(this.ga, 0, arrayOfa3, 0, i14);
            }
            while (i14 < -1 + arrayOfa3.length)
            {
              arrayOfa3[i14] = new a();
              paramjy.a(arrayOfa3[i14]);
              paramjy.ky();
              i14++;
            }
          }
          arrayOfa3[i14] = new a();
          paramjy.a(arrayOfa3[i14]);
          this.ga = arrayOfa3;
          break;
        case 42: 
          int i11 = kh.c(paramjy, 42);
          if (this.gb == null) {}
          a[] arrayOfa2;
          for (int i12 = 0;; i12 = this.gb.length)
          {
            arrayOfa2 = new a[i11 + i12];
            if (i12 != 0) {
              System.arraycopy(this.gb, 0, arrayOfa2, 0, i12);
            }
            while (i12 < -1 + arrayOfa2.length)
            {
              arrayOfa2[i12] = new a();
              paramjy.a(arrayOfa2[i12]);
              paramjy.ky();
              i12++;
            }
          }
          arrayOfa2[i12] = new a();
          paramjy.a(arrayOfa2[i12]);
          this.gb = arrayOfa2;
          break;
        case 50: 
          this.gc = paramjy.readString();
          break;
        case 58: 
          this.gd = paramjy.readString();
          break;
        case 64: 
          this.ge = paramjy.kA();
          break;
        case 72: 
          this.gi = paramjy.kC();
          break;
        case 80: 
          int i5 = kh.c(paramjy, 80);
          int[] arrayOfInt2 = new int[i5];
          int i6 = 0;
          int i7 = 0;
          if (i6 < i5)
          {
            if (i6 != 0) {
              paramjy.ky();
            }
            int i9 = paramjy.kB();
            int i10;
            switch (i9)
            {
            default: 
              i10 = i7;
            }
            for (;;)
            {
              i6++;
              i7 = i10;
              break;
              i10 = i7 + 1;
              arrayOfInt2[i7] = i9;
            }
          }
          if (i7 == 0) {
            continue;
          }
          if (this.gh == null) {}
          for (int i8 = 0;; i8 = this.gh.length)
          {
            if ((i8 != 0) || (i7 != arrayOfInt2.length)) {
              break label849;
            }
            this.gh = arrayOfInt2;
            break;
          }
          int[] arrayOfInt3 = new int[i8 + i7];
          if (i8 != 0) {
            System.arraycopy(this.gh, 0, arrayOfInt3, 0, i8);
          }
          System.arraycopy(arrayOfInt2, 0, arrayOfInt3, i8, i7);
          this.gh = arrayOfInt3;
          break;
        case 82: 
          int m = paramjy.cw(paramjy.kE());
          int n = paramjy.getPosition();
          int i1 = 0;
          while (paramjy.kJ() > 0) {
            switch (paramjy.kB())
            {
            default: 
              break;
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: 
            case 13: 
            case 14: 
            case 15: 
            case 16: 
            case 17: 
              i1++;
            }
          }
          if (i1 != 0)
          {
            paramjy.cy(n);
            if (this.gh == null) {}
            int[] arrayOfInt1;
            for (int i2 = 0;; i2 = this.gh.length)
            {
              arrayOfInt1 = new int[i1 + i2];
              if (i2 != 0) {
                System.arraycopy(this.gh, 0, arrayOfInt1, 0, i2);
              }
              while (paramjy.kJ() > 0)
              {
                int i3 = paramjy.kB();
                switch (i3)
                {
                default: 
                  break;
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 5: 
                case 6: 
                case 7: 
                case 8: 
                case 9: 
                case 10: 
                case 11: 
                case 12: 
                case 13: 
                case 14: 
                case 15: 
                case 16: 
                case 17: 
                  int i4 = i2 + 1;
                  arrayOfInt1[i2] = i3;
                  i2 = i4;
                }
              }
            }
            this.gh = arrayOfInt1;
          }
          paramjy.cx(m);
          break;
        case 90: 
          label849:
          int j = kh.c(paramjy, 90);
          if (this.gg == null) {}
          a[] arrayOfa1;
          for (int k = 0;; k = this.gg.length)
          {
            arrayOfa1 = new a[j + k];
            if (k != 0) {
              System.arraycopy(this.gg, 0, arrayOfa1, 0, k);
            }
            while (k < -1 + arrayOfa1.length)
            {
              arrayOfa1[k] = new a();
              paramjy.a(arrayOfa1[k]);
              paramjy.ky();
              k++;
            }
          }
          arrayOfa1[k] = new a();
          paramjy.a(arrayOfa1[k]);
          this.gg = arrayOfa1;
          break;
        }
        this.gf = paramjy.kC();
      }
    }
    
    public a s()
    {
      this.type = 1;
      this.fY = "";
      this.fZ = r();
      this.ga = r();
      this.gb = r();
      this.gc = "";
      this.gd = "";
      this.ge = 0L;
      this.gf = false;
      this.gg = r();
      this.gh = kh.aaj;
      this.gi = false;
      this.aae = null;
      this.DY = -1;
      return this;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.d
 * JD-Core Version:    0.7.0.1
 */