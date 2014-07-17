package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager
{
  private static TagManager XB;
  private final DataLayer TN;
  private final r Wj;
  private final ConcurrentMap<n, Boolean> XA;
  private final a Xz;
  private final Context mContext;
  
  TagManager(Context paramContext, a parama, DataLayer paramDataLayer)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    this.mContext = paramContext.getApplicationContext();
    this.Xz = parama;
    this.XA = new ConcurrentHashMap();
    this.TN = paramDataLayer;
    this.TN.a(new TagManager.1(this));
    this.TN.a(new d(this.mContext));
    this.Wj = new r();
  }
  
  private void bE(String paramString)
  {
    Iterator localIterator = this.XA.keySet().iterator();
    while (localIterator.hasNext()) {
      ((n)localIterator.next()).ba(paramString);
    }
  }
  
  public static TagManager getInstance(Context paramContext)
  {
    try
    {
      if (XB != null) {
        break label65;
      }
      if (paramContext == null)
      {
        bh.t("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    XB = new TagManager(paramContext, new TagManager.2(), new DataLayer(new v(paramContext)));
    label65:
    TagManager localTagManager = XB;
    return localTagManager;
  }
  
  void a(n paramn)
  {
    this.XA.put(paramn, Boolean.valueOf(true));
  }
  
  boolean b(n paramn)
  {
    return this.XA.remove(paramn) != null;
  }
  
  boolean f(Uri paramUri)
  {
    for (;;)
    {
      ce localce;
      String str;
      boolean bool;
      try
      {
        localce = ce.ju();
        if (!localce.f(paramUri)) {
          break label228;
        }
        str = localce.getContainerId();
        int i = 3.XD[localce.jv().ordinal()];
        switch (i)
        {
        default: 
          bool = true;
          return bool;
        }
      }
      finally {}
      Iterator localIterator2 = this.XA.keySet().iterator();
      if (localIterator2.hasNext())
      {
        n localn2 = (n)localIterator2.next();
        if (localn2.getContainerId().equals(str))
        {
          localn2.bc(null);
          localn2.refresh();
        }
      }
      else
      {
        continue;
        Iterator localIterator1 = this.XA.keySet().iterator();
        while (localIterator1.hasNext())
        {
          n localn1 = (n)localIterator1.next();
          if (localn1.getContainerId().equals(str))
          {
            localn1.bc(localce.jw());
            localn1.refresh();
          }
          else if (localn1.iF() != null)
          {
            localn1.bc(null);
            localn1.refresh();
          }
        }
        continue;
        label228:
        bool = false;
      }
    }
  }
  
  public DataLayer getDataLayer()
  {
    return this.TN;
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt)
  {
    o localo = this.Xz.a(this.mContext, this, null, paramString, paramInt, this.Wj);
    localo.iI();
    return localo;
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt, Handler paramHandler)
  {
    o localo = this.Xz.a(this.mContext, this, paramHandler.getLooper(), paramString, paramInt, this.Wj);
    localo.iI();
    return localo;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt)
  {
    o localo = this.Xz.a(this.mContext, this, null, paramString, paramInt, this.Wj);
    localo.iK();
    return localo;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt, Handler paramHandler)
  {
    o localo = this.Xz.a(this.mContext, this, paramHandler.getLooper(), paramString, paramInt, this.Wj);
    localo.iK();
    return localo;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt)
  {
    o localo = this.Xz.a(this.mContext, this, null, paramString, paramInt, this.Wj);
    localo.iJ();
    return localo;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt, Handler paramHandler)
  {
    o localo = this.Xz.a(this.mContext, this, paramHandler.getLooper(), paramString, paramInt, this.Wj);
    localo.iJ();
    return localo;
  }
  
  public void setVerboseLoggingEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 5)
    {
      bh.setLogLevel(i);
      return;
    }
  }
  
  static abstract interface a
  {
    public abstract o a(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, r paramr);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.TagManager
 * JD-Core Version:    0.7.0.1
 */