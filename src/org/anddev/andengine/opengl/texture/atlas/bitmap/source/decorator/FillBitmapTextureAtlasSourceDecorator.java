package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Paint;
import android.graphics.Paint.Style;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;

public class FillBitmapTextureAtlasSourceDecorator
  extends BaseShapeBitmapTextureAtlasSourceDecorator
{
  protected final int mFillColor;
  
  public FillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt, null);
  }
  
  public FillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramTextureAtlasSourceDecoratorOptions);
    this.mFillColor = paramInt;
    this.mPaint.setStyle(Paint.Style.FILL);
    this.mPaint.setColor(paramInt);
  }
  
  public FillBitmapTextureAtlasSourceDecorator deepCopy()
  {
    return new FillBitmapTextureAtlasSourceDecorator(this.mBitmapTextureAtlasSource, this.mBitmapTextureAtlasSourceDecoratorShape, this.mFillColor, this.mTextureAtlasSourceDecoratorOptions);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.FillBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */