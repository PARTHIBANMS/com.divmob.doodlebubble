package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Paint;
import android.graphics.Paint.Style;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;

public class OutlineBitmapTextureAtlasSourceDecorator
  extends BaseShapeBitmapTextureAtlasSourceDecorator
{
  protected final int mOutlineColor;
  
  public OutlineBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt, null);
  }
  
  public OutlineBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramTextureAtlasSourceDecoratorOptions);
    this.mOutlineColor = paramInt;
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.mPaint.setColor(paramInt);
  }
  
  public OutlineBitmapTextureAtlasSourceDecorator deepCopy()
  {
    return new OutlineBitmapTextureAtlasSourceDecorator(this.mBitmapTextureAtlasSource, this.mBitmapTextureAtlasSourceDecoratorShape, this.mOutlineColor, this.mTextureAtlasSourceDecoratorOptions);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.OutlineBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */