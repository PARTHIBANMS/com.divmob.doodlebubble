package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.anddev.andengine.util.ArrayUtils;

public class RadialGradientFillBitmapTextureAtlasSourceDecorator
  extends BaseShapeBitmapTextureAtlasSourceDecorator
{
  private static final float[] POSITIONS_DEFAULT = { 0.0F, 1.0F };
  protected final int[] mColors;
  protected final float[] mPositions;
  protected final RadialGradientDirection mRadialGradientDirection;
  
  public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, RadialGradientDirection paramRadialGradientDirection)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramInt1, paramInt2, paramRadialGradientDirection, null);
  }
  
  public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int paramInt1, int paramInt2, RadialGradientDirection paramRadialGradientDirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, new int[] { paramInt1, paramInt2 }, POSITIONS_DEFAULT, paramRadialGradientDirection, paramTextureAtlasSourceDecoratorOptions);
  }
  
  public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int[] paramArrayOfInt, float[] paramArrayOfFloat, RadialGradientDirection paramRadialGradientDirection)
  {
    this(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramArrayOfInt, paramArrayOfFloat, paramRadialGradientDirection, null);
  }
  
  public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, IBitmapTextureAtlasSourceDecoratorShape paramIBitmapTextureAtlasSourceDecoratorShape, int[] paramArrayOfInt, float[] paramArrayOfFloat, RadialGradientDirection paramRadialGradientDirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource, paramIBitmapTextureAtlasSourceDecoratorShape, paramTextureAtlasSourceDecoratorOptions);
    this.mColors = paramArrayOfInt;
    this.mPositions = paramArrayOfFloat;
    this.mRadialGradientDirection = paramRadialGradientDirection;
    this.mPaint.setStyle(Paint.Style.FILL);
    int i = paramIBitmapTextureAtlasSource.getWidth();
    int j = paramIBitmapTextureAtlasSource.getHeight();
    float f1 = 0.5F * i;
    float f2 = 0.5F * j;
    float f3 = Math.max(f1, f2);
    switch (paramRadialGradientDirection)
    {
    default: 
      return;
    case INSIDE_OUT: 
      this.mPaint.setShader(new RadialGradient(f1, f2, f3, paramArrayOfInt, paramArrayOfFloat, Shader.TileMode.CLAMP));
      return;
    }
    ArrayUtils.reverse(paramArrayOfInt);
    this.mPaint.setShader(new RadialGradient(f1, f2, f3, paramArrayOfInt, paramArrayOfFloat, Shader.TileMode.CLAMP));
  }
  
  public RadialGradientFillBitmapTextureAtlasSourceDecorator deepCopy()
  {
    return new RadialGradientFillBitmapTextureAtlasSourceDecorator(this.mBitmapTextureAtlasSource, this.mBitmapTextureAtlasSourceDecoratorShape, this.mColors, this.mPositions, this.mRadialGradientDirection, this.mTextureAtlasSourceDecoratorOptions);
  }
  
  public static enum RadialGradientDirection
  {
    OUTSIDE_IN,  INSIDE_OUT;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.RadialGradientFillBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */