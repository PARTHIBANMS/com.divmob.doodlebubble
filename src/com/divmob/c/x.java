package com.divmob.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;

public class x
  extends View
{
  float a;
  float b;
  float c = 0.0F;
  float d = 0.0F;
  Bitmap e;
  boolean f;
  
  public x(Context paramContext)
  {
    super(paramContext);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    this.c = paramFloat1;
    this.d = paramFloat2;
  }
  
  public void a(Bitmap paramBitmap)
  {
    this.e = paramBitmap;
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.e != null) {
      paramCanvas.drawBitmap(this.e, this.c, this.d, null);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.a = paramMotionEvent.getX();
    this.b = paramMotionEvent.getY();
    if (this.e == null) {}
    while ((this.a < this.c) || (this.a > this.c + this.e.getWidth()) || (this.b < this.d) || (this.b > this.d + this.e.getHeight())) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.c.x
 * JD-Core Version:    0.7.0.1
 */