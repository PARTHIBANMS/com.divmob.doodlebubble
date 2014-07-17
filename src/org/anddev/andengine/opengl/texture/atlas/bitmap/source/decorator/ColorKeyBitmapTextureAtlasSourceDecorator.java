package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;

public class ColorKeyBitmapTextureAtlasSourceDecorator
  extends ColorSwapBitmapTextureAtlasSourceDecorator
{
  public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt, 0);
  }
  
  public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, 0, paramInt2);
  }
  
  public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, paramInt2, 0, paramTextureAtlasSourceDecoratorOptions);
  }
  
  public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt, 0, paramTextureAtlasSourceDecoratorOptions);
  }
  
  public ColorKeyBitmapTextureAtlasSourceDecorator deepCopy()
  {
    return new ColorKeyBitmapTextureAtlasSourceDecorator(this.mBitmapTextureAtlasSource, this.mBitmapTextureAtlasSourceDecoratorShape, this.mColorKeyColor, this.mTolerance, this.mTextureAtlasSourceDecoratorOptions);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.ColorKeyBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */