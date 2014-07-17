package com.divmob.maegame.g;

import android.graphics.Color;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.sprite.BaseSprite;
import org.anddev.andengine.entity.text.Text;
import org.anddev.andengine.util.MathUtils;

public class e
{
  public static final int[] a = { -16777216, -65536, -65281, -16711936, -16776961, -8388608, -8388480, -16744448, -8355840, -16777088, -16744320, -39424, -52480, -65434, -26368, -16737997, -4144960, -8355712 };
  
  public static void a(float paramFloat1, BaseSprite paramBaseSprite, float paramFloat2)
  {
    paramBaseSprite.setPosition(paramFloat1 + (paramFloat2 - paramBaseSprite.getWidth()) / 2.0F, paramBaseSprite.getY());
  }
  
  public static void a(float paramFloat1, Text paramText, float paramFloat2)
  {
    paramText.setPosition(paramFloat1 + (paramFloat2 - paramText.getWidth()) / 2.0F, paramText.getY());
  }
  
  public static void a(Entity paramEntity)
  {
    int i = MathUtils.random(0, -1 + a.length);
    a(paramEntity, a[i]);
  }
  
  public static void a(Entity paramEntity, int paramInt)
  {
    paramEntity.setColor(Color.red(paramInt) / 255.0F, Color.green(paramInt) / 255.0F, Color.blue(paramInt) / 255.0F);
  }
  
  public static void a(Rectangle paramRectangle, int paramInt1, int paramInt2)
  {
    paramRectangle.setPosition((paramInt1 - paramRectangle.getWidth()) / 2.0F, (paramInt2 - paramRectangle.getHeight()) / 2.0F);
  }
  
  public static void a(BaseSprite paramBaseSprite, float paramFloat)
  {
    a(0.0F, paramBaseSprite, paramFloat);
  }
  
  public static void a(BaseSprite paramBaseSprite, int paramInt1, int paramInt2)
  {
    paramBaseSprite.setPosition((paramInt1 - paramBaseSprite.getWidth()) / 2.0F, (paramInt2 - paramBaseSprite.getHeight()) / 2.0F);
  }
  
  public static void a(Text paramText, float paramFloat)
  {
    a(0.0F, paramText, paramFloat);
  }
  
  public static void b(Entity paramEntity)
  {
    paramEntity.setVisible(true);
  }
  
  public static void b(Entity paramEntity, int paramInt)
  {
    int i = a[paramInt];
    paramEntity.setColor(Color.red(i) / 255.0F, Color.green(i) / 255.0F, Color.blue(i) / 255.0F);
  }
  
  public static void c(Entity paramEntity)
  {
    paramEntity.setVisible(false);
  }
  
  public static void d(Entity paramEntity)
  {
    b(paramEntity);
    paramEntity.setIgnoreUpdate(false);
  }
  
  public static void e(Entity paramEntity)
  {
    c(paramEntity);
    paramEntity.setIgnoreUpdate(true);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.e
 * JD-Core Version:    0.7.0.1
 */