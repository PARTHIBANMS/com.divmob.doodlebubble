package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;

public abstract class BaseShapeBitmapTextureAtlasSourceDecorator
  extends BaseBitmapTextureAtlasSourceDecorator
{
  protected final IBitmapTextureAtlasSourceDecoratorShape mBitmapTextureAtlasSourceDecoratorShape;
  
  public BaseShapeBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramTextureAtlasSourceDecoratorOptions);
    this.mBitmapTextureAtlasSourceDecoratorShape = paramIBitmapTextureAtlasSourceDecoratorShape;
  }
  
  public abstract BaseShapeBitmapTextureAtlasSourceDecorator deepCopy();
  
  protected void onDecorateBitmap(Canvas paramCanvas)
  {
    IBitmapTextureAtlasSourceDecoratorShape localIBitmapTextureAtlasSourceDecoratorShape = this.mBitmapTextureAtlasSourceDecoratorShape;
    Paint localPaint = this.mPaint;
    if (this.mTextureAtlasSourceDecoratorOptions == null) {}
    for (BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions localTextureAtlasSourceDecoratorOptions = BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions.DEFAULT;; localTextureAtlasSourceDecoratorOptions = this.mTextureAtlasSourceDecoratorOptions)
    {
      localIBitmapTextureAtlasSourceDecoratorShape.onDecorateBitmap(paramCanvas, localPaint, localTextureAtlasSourceDecoratorOptions);
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseShapeBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */