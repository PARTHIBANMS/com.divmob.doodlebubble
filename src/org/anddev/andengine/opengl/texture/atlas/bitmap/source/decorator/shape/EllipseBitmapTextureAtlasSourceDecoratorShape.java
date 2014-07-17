package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public class EllipseBitmapTextureAtlasSourceDecoratorShape
  implements IBitmapTextureAtlasSourceDecoratorShape
{
  private static EllipseBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
  private final RectF mRectF = new RectF();
  
  public static EllipseBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
  {
    if (sDefaultInstance == null) {
      sDefaultInstance = new EllipseBitmapTextureAtlasSourceDecoratorShape();
    }
    return sDefaultInstance;
  }
  
  public void onDecorateBitmap(Canvas paramCanvas, Paint paramPaint, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    float f1 = paramTextureAtlasSourceDecoratorOptions.getInsetLeft();
    float f2 = paramTextureAtlasSourceDecoratorOptions.getInsetTop();
    float f3 = paramCanvas.getWidth() - paramTextureAtlasSourceDecoratorOptions.getInsetRight();
    float f4 = paramCanvas.getHeight() - paramTextureAtlasSourceDecoratorOptions.getInsetBottom();
    this.mRectF.set(f1, f2, f3, f4);
    paramCanvas.drawOval(this.mRectF, paramPaint);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.EllipseBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */