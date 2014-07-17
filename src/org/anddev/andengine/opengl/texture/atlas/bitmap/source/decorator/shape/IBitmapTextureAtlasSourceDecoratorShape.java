package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public abstract interface IBitmapTextureAtlasSourceDecoratorShape
{
  public abstract void onDecorateBitmap(Canvas paramCanvas, Paint paramPaint, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */