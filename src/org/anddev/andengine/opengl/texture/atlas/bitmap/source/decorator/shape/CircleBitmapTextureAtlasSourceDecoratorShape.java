package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public class CircleBitmapTextureAtlasSourceDecoratorShape
  implements IBitmapTextureAtlasSourceDecoratorShape
{
  private static CircleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
  
  public static CircleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
  {
    if (sDefaultInstance == null) {
      sDefaultInstance = new CircleBitmapTextureAtlasSourceDecoratorShape();
    }
    return sDefaultInstance;
  }
  
  public void onDecorateBitmap(Canvas paramCanvas, Paint paramPaint, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    float f1 = paramCanvas.getWidth() - paramTextureAtlasSourceDecoratorOptions.getInsetLeft() - paramTextureAtlasSourceDecoratorOptions.getInsetRight();
    float f2 = paramCanvas.getHeight() - paramTextureAtlasSourceDecoratorOptions.getInsetTop() - paramTextureAtlasSourceDecoratorOptions.getInsetBottom();
    paramCanvas.drawCircle(0.5F * (paramCanvas.getWidth() + paramTextureAtlasSourceDecoratorOptions.getInsetLeft() - paramTextureAtlasSourceDecoratorOptions.getInsetRight()), 0.5F * (paramCanvas.getHeight() + paramTextureAtlasSourceDecoratorOptions.getInsetTop() - paramTextureAtlasSourceDecoratorOptions.getInsetBottom()), Math.min(f1 * 0.5F, f2 * 0.5F), paramPaint);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.CircleBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */