package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions;

public class ArcBitmapTextureAtlasSourceDecoratorShape
  implements IBitmapTextureAtlasSourceDecoratorShape
{
  private static final float STARTANGLE_DEFAULT = 0.0F;
  private static final float SWEEPANGLE_DEFAULT = 360.0F;
  private static final boolean USECENTER_DEFAULT = true;
  private static ArcBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
  private final RectF mRectF = new RectF();
  private final float mStartAngle;
  private final float mSweepAngle;
  private final boolean mUseCenter;
  
  public ArcBitmapTextureAtlasSourceDecoratorShape()
  {
    this(0.0F, 360.0F, true);
  }
  
  public ArcBitmapTextureAtlasSourceDecoratorShape(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    this.mStartAngle = paramFloat1;
    this.mSweepAngle = paramFloat2;
    this.mUseCenter = paramBoolean;
  }
  
  @Deprecated
  public static ArcBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
  {
    if (sDefaultInstance == null) {
      sDefaultInstance = new ArcBitmapTextureAtlasSourceDecoratorShape();
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
    paramCanvas.drawArc(this.mRectF, this.mStartAngle, this.mSweepAngle, this.mUseCenter, paramPaint);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.ArcBitmapTextureAtlasSourceDecoratorShape
 * JD-Core Version:    0.7.0.1
 */