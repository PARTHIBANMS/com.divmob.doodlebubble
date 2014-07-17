package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.AvoidXfermode;
import android.graphics.AvoidXfermode.Mode;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;

public class ColorSwapBitmapTextureAtlasSourceDecorator
  extends BaseShapeBitmapTextureAtlasSourceDecorator
{
  private static final int TOLERANCE_DEFAULT;
  protected final int mColorKeyColor;
  protected final int mColorSwapColor;
  protected final int mTolerance;
  
  public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, 0, paramInt2, null);
  }
  
  public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, paramInt2, paramInt3, null);
  }
  
  public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, int paramInt3, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramTextureAtlasSourceDecoratorOptions);
    this.mColorKeyColor = paramInt1;
    this.mTolerance = paramInt2;
    this.mColorSwapColor = paramInt3;
    this.mPaint.setXfermode(new AvoidXfermode(paramInt1, paramInt2, AvoidXfermode.Mode.TARGET));
    this.mPaint.setColor(paramInt3);
  }
  
  public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, 0, paramInt2, paramTextureAtlasSourceDecoratorOptions);
  }
  
  public ColorSwapBitmapTextureAtlasSourceDecorator deepCopy()
  {
    return new ColorSwapBitmapTextureAtlasSourceDecorator(this.mBitmapTextureAtlasSource, this.mBitmapTextureAtlasSourceDecoratorShape, this.mColorKeyColor, this.mTolerance, this.mColorSwapColor, this.mTextureAtlasSourceDecoratorOptions);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.ColorSwapBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */