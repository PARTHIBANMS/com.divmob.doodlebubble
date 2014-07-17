package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public class RoundedRectangleBitmapTextureAtlasSourceDecoratorShape
  implements IBitmapTextureAtlasSourceDecoratorShape
{
  private static final float CORNER_RADIUS_DEFAULT = 1.0F;
  private static RoundedRectangleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
  private final float mCornerRadiusX;
  private final float mCornerRadiusY;
  private final RectF mRectF = new RectF();
  
  public RoundedRectangleBitmapTextureAtlasSourceDecoratorShape()
  {
    this(1.0F, 1.0F);
  }
  
  public RoundedRectangleBitmapTextureAtlasSourceDecoratorShape(float paramFloat1, float paramFloat2)
  {
    this.mCornerRadiusX = paramFloat1;
    this.mCornerRadiusY = paramFloat2;
  }
  
  public static RoundedRectangleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
  {
    if (sDefaultInstance == null) {
      sDefaultInstance = new RoundedRectangleBitmapTextureAtlasSourceDecoratorShape();
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
    paramCanvas.drawRoundRect(this.mRectF, this.mCornerRadiusX, this.mCornerRadiusY, paramPaint);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.RoundedRectangleBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */