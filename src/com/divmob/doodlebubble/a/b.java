package com.divmob.doodlebubble.a;

import com.divmob.doodlebubble.GameActivity;
import java.util.ArrayList;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

public class b
  extends a
{
  public static final float f = 18.0F;
  private float g;
  private float h;
  private boolean i = false;
  
  public b(TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramTiledTextureRegion);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    this.i = true;
    b(paramFloat1, paramFloat2);
  }
  
  public boolean a(ArrayList<a> paramArrayList)
  {
    for (int j = 0;; j++)
    {
      if (j >= paramArrayList.size()) {
        return false;
      }
      if (a((a)paramArrayList.get(j))) {
        return true;
      }
    }
  }
  
  public void b(float paramFloat1, float paramFloat2)
  {
    this.g = paramFloat1;
    this.h = paramFloat2;
  }
  
  public boolean g()
  {
    return this.i;
  }
  
  public void h()
  {
    this.mX += this.g;
    if (this.mX <= 0.0D)
    {
      this.mX = ((float)(this.mX + (0.0D - this.mX)));
      this.g = (-1.0F * this.g);
    }
    if (this.mX >= 432.0D)
    {
      this.mX = ((float)(this.mX + (432.0D - this.mX)));
      this.g = (-1.0F * this.g);
    }
    this.mY += this.h;
    if (this.mY > 672.0D)
    {
      this.mY = ((float)(this.mY + (672.0D - this.mY)));
      this.h = (-1.0F * this.h);
    }
    if (this.mY < GameActivity.h)
    {
      this.mY = GameActivity.h;
      this.h = 0.0F;
      this.g = 0.0F;
      this.i = false;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.a.b
 * JD-Core Version:    0.7.0.1
 */