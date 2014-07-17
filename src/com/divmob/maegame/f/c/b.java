package com.divmob.maegame.f.c;

import com.divmob.maegame.f.a.d;
import java.util.ArrayList;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class b
  extends d
{
  private ArrayList<b> a;
  private int c;
  
  public b(float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
    d();
  }
  
  public void a(ArrayList<b> paramArrayList)
  {
    if (paramArrayList == null) {
      paramArrayList = new ArrayList();
    }
    this.a = paramArrayList;
    this.c = paramArrayList.size();
    paramArrayList.add(this);
  }
  
  protected void b()
  {
    int i;
    if (this.a != null) {
      i = this.a.size();
    }
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        this.b = true;
        super.b();
        return;
      }
      ((b)this.a.get(j)).d();
    }
  }
  
  public int f()
  {
    return this.c;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.c.b
 * JD-Core Version:    0.7.0.1
 */