package org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.anddev.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.anddev.andengine.opengl.texture.source.BaseTextureAtlasSource;

public abstract class BaseBitmapTextureAtlasSourceDecorator
  extends BaseTextureAtlasSource
  implements IBitmapTextureAtlasSource
{
  protected final IBitmapTextureAtlasSource mBitmapTextureAtlasSource;
  protected Paint mPaint = new Paint();
  protected TextureAtlasSourceDecoratorOptions mTextureAtlasSourceDecoratorOptions;
  
  public BaseBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource)
  {
    this(paramIBitmapTextureAtlasSource, new TextureAtlasSourceDecoratorOptions());
  }
  
  public BaseBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource paramIBitmapTextureAtlasSource, TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    super(paramIBitmapTextureAtlasSource.getTexturePositionX(), paramIBitmapTextureAtlasSource.getTexturePositionY());
    this.mBitmapTextureAtlasSource = paramIBitmapTextureAtlasSource;
    if (paramTextureAtlasSourceDecoratorOptions == null) {
      paramTextureAtlasSourceDecoratorOptions = new TextureAtlasSourceDecoratorOptions();
    }
    this.mTextureAtlasSourceDecoratorOptions = paramTextureAtlasSourceDecoratorOptions;
    this.mPaint.setAntiAlias(this.mTextureAtlasSourceDecoratorOptions.getAntiAliasing());
  }
  
  private Bitmap ensureLoadedBitmapIsMutable(Bitmap paramBitmap)
  {
    if (paramBitmap.isMutable()) {
      return paramBitmap;
    }
    Bitmap localBitmap = paramBitmap.copy(paramBitmap.getConfig(), true);
    paramBitmap.recycle();
    return localBitmap;
  }
  
  public abstract BaseBitmapTextureAtlasSourceDecorator deepCopy();
  
  public int getHeight()
  {
    return this.mBitmapTextureAtlasSource.getHeight();
  }
  
  public Paint getPaint()
  {
    return this.mPaint;
  }
  
  public TextureAtlasSourceDecoratorOptions getTextureAtlasSourceDecoratorOptions()
  {
    return this.mTextureAtlasSourceDecoratorOptions;
  }
  
  public int getWidth()
  {
    return this.mBitmapTextureAtlasSource.getWidth();
  }
  
  protected abstract void onDecorateBitmap(Canvas paramCanvas);
  
  public Bitmap onLoadBitmap(Bitmap.Config paramConfig)
  {
    Bitmap localBitmap = ensureLoadedBitmapIsMutable(this.mBitmapTextureAtlasSource.onLoadBitmap(paramConfig));
    onDecorateBitmap(new Canvas(localBitmap));
    return localBitmap;
  }
  
  public void setPaint(Paint paramPaint)
  {
    this.mPaint = paramPaint;
  }
  
  public void setTextureAtlasSourceDecoratorOptions(TextureAtlasSourceDecoratorOptions paramTextureAtlasSourceDecoratorOptions)
  {
    this.mTextureAtlasSourceDecoratorOptions = paramTextureAtlasSourceDecoratorOptions;
  }
  
  public static class TextureAtlasSourceDecoratorOptions
  {
    public static final TextureAtlasSourceDecoratorOptions DEFAULT = new TextureAtlasSourceDecoratorOptions();
    private boolean mAntiAliasing;
    private float mInsetBottom = 0.25F;
    private float mInsetLeft = 0.25F;
    private float mInsetRight = 0.25F;
    private float mInsetTop = 0.25F;
    
    protected TextureAtlasSourceDecoratorOptions deepCopy()
    {
      TextureAtlasSourceDecoratorOptions localTextureAtlasSourceDecoratorOptions = new TextureAtlasSourceDecoratorOptions();
      localTextureAtlasSourceDecoratorOptions.setInsets(this.mInsetLeft, this.mInsetTop, this.mInsetRight, this.mInsetBottom);
      localTextureAtlasSourceDecoratorOptions.setAntiAliasing(this.mAntiAliasing);
      return localTextureAtlasSourceDecoratorOptions;
    }
    
    public boolean getAntiAliasing()
    {
      return this.mAntiAliasing;
    }
    
    public float getInsetBottom()
    {
      return this.mInsetBottom;
    }
    
    public float getInsetLeft()
    {
      return this.mInsetLeft;
    }
    
    public float getInsetRight()
    {
      return this.mInsetRight;
    }
    
    public float getInsetTop()
    {
      return this.mInsetTop;
    }
    
    public TextureAtlasSourceDecoratorOptions setAntiAliasing(boolean paramBoolean)
    {
      this.mAntiAliasing = paramBoolean;
      return this;
    }
    
    public TextureAtlasSourceDecoratorOptions setInsetBottom(float paramFloat)
    {
      this.mInsetBottom = paramFloat;
      return this;
    }
    
    public TextureAtlasSourceDecoratorOptions setInsetLeft(float paramFloat)
    {
      this.mInsetLeft = paramFloat;
      return this;
    }
    
    public TextureAtlasSourceDecoratorOptions setInsetRight(float paramFloat)
    {
      this.mInsetRight = paramFloat;
      return this;
    }
    
    public TextureAtlasSourceDecoratorOptions setInsetTop(float paramFloat)
    {
      this.mInsetTop = paramFloat;
      return this;
    }
    
    public TextureAtlasSourceDecoratorOptions setInsets(float paramFloat)
    {
      return setInsets(paramFloat, paramFloat, paramFloat, paramFloat);
    }
    
    public TextureAtlasSourceDecoratorOptions setInsets(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      this.mInsetLeft = paramFloat1;
      this.mInsetTop = paramFloat2;
      this.mInsetRight = paramFloat3;
      this.mInsetBottom = paramFloat4;
      return this;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator
 * JD-Core Version:    0.7.0.1
 */