package com.divmob.maegame.g;

import java.util.ArrayList;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;

public class c
  extends Rectangle
{
  private d a;
  private ArrayList<AnimatedSprite> b;
  private ArrayList<AnimatedSprite> c;
  private int d;
  
  public c(float paramFloat1, float paramFloat2, String paramString, d paramd)
  {
    super(paramFloat1, paramFloat2, 0.1F, 0.1F);
    this.a = paramd;
    this.b = new ArrayList();
    this.c = new ArrayList();
    a(paramString);
    this.d = 0;
  }
  
  public c(String paramString, d paramd)
  {
    this(0.0F, 0.0F, paramString, paramd);
  }
  
  private void c(int paramInt)
  {
    if (this.c.isEmpty())
    {
      AnimatedSprite localAnimatedSprite2 = this.a.a();
      this.b.add(localAnimatedSprite2);
      this.a.a(localAnimatedSprite2, paramInt);
      attachChild(localAnimatedSprite2);
      return;
    }
    AnimatedSprite localAnimatedSprite1 = (AnimatedSprite)this.c.remove(0);
    this.b.add(localAnimatedSprite1);
    e.d(localAnimatedSprite1);
    this.a.a(localAnimatedSprite1, paramInt);
  }
  
  public void a(int paramInt)
  {
    this.d = paramInt;
    for (int i = 0;; i++)
    {
      if (i >= this.b.size()) {
        return;
      }
      e.a((Entity)this.b.get(i), paramInt);
    }
  }
  
  public void a(String paramString)
  {
    this.a.b();
    int i = 0;
    int j = 0;
    label19:
    int k;
    if (j >= paramString.length())
    {
      if (this.b.size() <= i) {
        if (this.d != 0) {
          a(this.d);
        }
      }
    }
    else
    {
      k = paramString.charAt(j);
      if (k != 32) {
        break label170;
      }
      this.a.a(null, k);
    }
    label170:
    for (int m = i - 1;; m = i)
    {
      try
      {
        AnimatedSprite localAnimatedSprite1 = (AnimatedSprite)this.b.get(m);
        this.a.a(localAnimatedSprite1, k);
        int n = j + 1;
        int i1 = m + 1;
        j = n;
        i = i1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          c(k);
        }
      }
      AnimatedSprite localAnimatedSprite2 = (AnimatedSprite)this.b.remove(-1 + this.b.size());
      this.c.add(localAnimatedSprite2);
      e.e(localAnimatedSprite2);
      break label19;
    }
  }
  
  public void a(Scene paramScene)
  {
    paramScene.attachChild(this);
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
  }
  
  public float b()
  {
    return this.a.c();
  }
  
  public void b(int paramInt)
  {
    setPosition(0.5F * (paramInt - b()), this.mY);
  }
  
  public float c()
  {
    return ((AnimatedSprite)this.b.get(0)).getHeight();
  }
  
  public float getHeight()
  {
    return c();
  }
  
  public float getWidth()
  {
    return b();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.c
 * JD-Core Version:    0.7.0.1
 */