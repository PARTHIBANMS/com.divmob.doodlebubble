package com.divmob.doodlebubble.c;

import com.divmob.doodlebubble.a.a;
import com.divmob.maegame.g.e;
import java.util.ArrayList;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;

public class h
{
  private static final int a = 40;
  private static int[] g = { -2963712, -875781, -225280, -7940096, -4079167, -16727297 };
  private ArrayList<a> b = new ArrayList();
  private ArrayList<a> c = new ArrayList();
  private TextureRegion d;
  private int e = 0;
  private int f;
  
  public h(TextureRegion paramTextureRegion)
  {
    this.d = paramTextureRegion;
  }
  
  private void a(a parama)
  {
    a locala = (a)this.c.remove(0);
    this.b.add(locala);
    e.d(locala);
    locala.setPosition(parama);
    a.a(locala);
    e.a(locala, this.f);
    locala.a();
  }
  
  public void a(int paramInt)
  {
    this.f = g[paramInt];
  }
  
  public void a(a parama, Scene paramScene, int paramInt)
  {
    if (this.b.size() < 40)
    {
      if (!this.c.isEmpty()) {
        break label86;
      }
      a locala = new a(0.0F, 0.0F, this.d);
      locala.setPosition(parama);
      e.a(locala, this.f);
      locala.a();
      paramScene.getChild(paramInt).attachChild(locala);
    }
    for (;;)
    {
      this.e = Math.min(10, 1 + this.e);
      return;
      label86:
      a(parama);
    }
  }
  
  class a
    extends Sprite
  {
    private boolean b;
    
    public a(float paramFloat1, float paramFloat2, TextureRegion paramTextureRegion)
    {
      super(paramFloat2, paramTextureRegion);
      setBlendFunction(770, 1);
      b();
      h.a(h.this).add(this);
      this.b = false;
    }
    
    private void b()
    {
      setScale(0.3F + 0.08F * h.b(h.this));
    }
    
    private void c()
    {
      h.a(h.this, Math.max(0, -1 + h.b(h.this)));
      this.b = false;
      setAlpha(1.0F);
      h.a(h.this).remove(this);
      h.c(h.this).add(this);
      e.e(this);
    }
    
    public void a()
    {
      this.b = true;
    }
    
    public void onManagedUpdate(float paramFloat)
    {
      super.onManagedUpdate(paramFloat);
      if (this.b)
      {
        this.mAlpha -= 0.02F;
        if (this.mAlpha < 0.0F) {
          c();
        }
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.h
 * JD-Core Version:    0.7.0.1
 */