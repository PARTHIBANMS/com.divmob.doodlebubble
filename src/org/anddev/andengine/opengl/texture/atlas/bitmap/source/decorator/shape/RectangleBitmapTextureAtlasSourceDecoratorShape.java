package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public class RectangleBitmapTextureAtlasSourceDecoratorShape
  implements IBitmapTextureAtlasSourceDecoratorShape
{
  private static RectangleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
  
  public static RectangleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
  {
    if (sDefaultInstance == null) {
      sDefaultInstance = new RectangleBitmapTextureAtlasSourceDecoratorShape();
    }
    return sDefaultInstance;
  }
  
  public void onDecorateBitmap(Canvas paramCanvas, Paint paramPaint, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    paramCanvas.drawRect(paramTextureAtlasSourceDecoratorOptions.getInsetLeft(), paramTextureAtlasSourceDecoratorOptions.getInsetTop(), paramCanvas.getWidth() - paramTextureAtlasSourceDecoratorOptions.getInsetRight(), paramCanvas.getHeight() - paramTextureAtlasSourceDecoratorOptions.getInsetBottom(), paramPaint);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.RectangleBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */