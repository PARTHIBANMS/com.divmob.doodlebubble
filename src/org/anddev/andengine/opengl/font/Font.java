package org.anddev.andengine.opengl.font;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.FloatMath;
import android.util.SparseArray;
import java.util.ArrayList;
import org.anddev.andengine.opengl.texture.ITexture;

public class Font
{
  protected static final int LETTER_EXTRA_WIDTH = 10;
  protected static final float LETTER_LEFT_OFFSET = 0.0F;
  protected static final int PADDING = 1;
  private final Paint mBackgroundPaint;
  protected final Canvas mCanvas = new Canvas();
  private final Size mCreateLetterTemporarySize = new Size();
  private int mCurrentTextureX = 0;
  private int mCurrentTextureY = 0;
  protected final Paint.FontMetrics mFontMetrics;
  private final Rect mGetLetterBitmapTemporaryRect = new Rect();
  private final Rect mGetLetterBoundsTemporaryRect = new Rect();
  private final Rect mGetStringWidthTemporaryRect = new Rect();
  private final ArrayList<Letter> mLettersPendingToBeDrawnToTexture = new ArrayList();
  private final int mLineGap;
  private final int mLineHeight;
  private final SparseArray<Letter> mManagedCharacterToLetterMap = new SparseArray();
  protected final Paint mPaint;
  private final float[] mTemporaryTextWidthFetchers = new float[1];
  private final ITexture mTexture;
  private final float mTextureHeight;
  private final float mTextureWidth;
  
  public Font(ITexture paramITexture, Typeface paramTypeface, float paramFloat, boolean paramBoolean, int paramInt)
  {
    this.mTexture = paramITexture;
    this.mTextureWidth = paramITexture.getWidth();
    this.mTextureHeight = paramITexture.getHeight();
    this.mPaint = new Paint();
    this.mPaint.setTypeface(paramTypeface);
    this.mPaint.setColor(paramInt);
    this.mPaint.setTextSize(paramFloat);
    this.mPaint.setAntiAlias(paramBoolean);
    this.mBackgroundPaint = new Paint();
    this.mBackgroundPaint.setColor(0);
    this.mBackgroundPaint.setStyle(Paint.Style.FILL);
    this.mFontMetrics = this.mPaint.getFontMetrics();
    this.mLineHeight = (2 + (int)FloatMath.ceil(Math.abs(this.mFontMetrics.ascent) + Math.abs(this.mFontMetrics.descent)));
    this.mLineGap = ((int)FloatMath.ceil(this.mFontMetrics.leading));
  }
  
  private Letter createLetter(char paramChar)
  {
    float f1 = this.mTextureWidth;
    float f2 = this.mTextureHeight;
    Size localSize = this.mCreateLetterTemporarySize;
    getLetterBounds(paramChar, localSize);
    float f3 = localSize.getWidth();
    float f4 = localSize.getHeight();
    if (f3 + this.mCurrentTextureX >= f1)
    {
      this.mCurrentTextureX = 0;
      this.mCurrentTextureY += getLineGap() + getLineHeight();
    }
    float f5 = this.mCurrentTextureX / f1;
    float f6 = this.mCurrentTextureY / f2;
    float f7 = f3 / f1;
    float f8 = f4 / f2;
    Letter localLetter = new Letter(paramChar, getLetterAdvance(paramChar), (int)f3, (int)f4, f5, f6, f7, f8);
    this.mCurrentTextureX = ((int)(f3 + this.mCurrentTextureX));
    return localLetter;
  }
  
  private int getLetterAdvance(char paramChar)
  {
    this.mPaint.getTextWidths(String.valueOf(paramChar), this.mTemporaryTextWidthFetchers);
    return (int)FloatMath.ceil(this.mTemporaryTextWidthFetchers[0]);
  }
  
  private Bitmap getLetterBitmap(char paramChar)
  {
    Rect localRect = this.mGetLetterBitmapTemporaryRect;
    String str = String.valueOf(paramChar);
    this.mPaint.getTextBounds(str, 0, 1, localRect);
    localRect.right = (2 + localRect.right);
    int i = getLineHeight();
    if (localRect.width() == 0) {}
    for (int j = 3;; j = 10 + localRect.width())
    {
      Bitmap localBitmap = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888);
      this.mCanvas.setBitmap(localBitmap);
      this.mCanvas.drawRect(0.0F, 0.0F, localBitmap.getWidth(), localBitmap.getHeight(), this.mBackgroundPaint);
      drawCharacterString(str);
      return localBitmap;
    }
  }
  
  private void getLetterBounds(char paramChar, Size paramSize)
  {
    this.mPaint.getTextBounds(String.valueOf(paramChar), 0, 1, this.mGetLetterBoundsTemporaryRect);
    paramSize.set(2 + (10 + this.mGetLetterBoundsTemporaryRect.width()), getLineHeight());
  }
  
  protected void drawCharacterString(String paramString)
  {
    this.mCanvas.drawText(paramString, 1.0F, 1.0F + -this.mFontMetrics.ascent, this.mPaint);
  }
  
  public Letter getLetter(char paramChar)
  {
    try
    {
      SparseArray localSparseArray = this.mManagedCharacterToLetterMap;
      Letter localLetter = (Letter)localSparseArray.get(paramChar);
      if (localLetter == null)
      {
        localLetter = createLetter(paramChar);
        this.mLettersPendingToBeDrawnToTexture.add(localLetter);
        localSparseArray.put(paramChar, localLetter);
      }
      return localLetter;
    }
    finally {}
  }
  
  public int getLineGap()
  {
    return this.mLineGap;
  }
  
  public int getLineHeight()
  {
    return this.mLineHeight;
  }
  
  public int getStringWidth(String paramString)
  {
    this.mPaint.getTextBounds(paramString, 0, paramString.length(), this.mGetStringWidthTemporaryRect);
    return this.mGetStringWidthTemporaryRect.width();
  }
  
  public ITexture getTexture()
  {
    return this.mTexture;
  }
  
  public void prepareLetters(char... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      getLetter(paramVarArgs[j]);
    }
  }
  
  /* Error */
  public void reload()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 60	org/anddev/andengine/opengl/font/Font:mLettersPendingToBeDrawnToTexture	Ljava/util/ArrayList;
    //   6: astore_2
    //   7: aload_0
    //   8: getfield 55	org/anddev/andengine/opengl/font/Font:mManagedCharacterToLetterMap	Landroid/util/SparseArray;
    //   11: astore_3
    //   12: aload_3
    //   13: invokevirtual 273	android/util/SparseArray:size	()I
    //   16: istore 4
    //   18: iload 4
    //   20: iconst_1
    //   21: isub
    //   22: istore 5
    //   24: iload 5
    //   26: ifge +6 -> 32
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_2
    //   33: aload_3
    //   34: iload 5
    //   36: invokevirtual 276	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   39: checkcast 180	org/anddev/andengine/opengl/font/Letter
    //   42: invokevirtual 254	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   45: pop
    //   46: iinc 5 255
    //   49: goto -25 -> 24
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	Font
    //   52	4	1	localObject	Object
    //   6	27	2	localArrayList	ArrayList
    //   11	23	3	localSparseArray	SparseArray
    //   16	6	4	i	int
    //   22	25	5	j	int
    // Exception table:
    //   from	to	target	type
    //   2	18	52	finally
    //   32	46	52	finally
  }
  
  /* Error */
  public void update(javax.microedition.khronos.opengles.GL10 paramGL10)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 60	org/anddev/andengine/opengl/font/Font:mLettersPendingToBeDrawnToTexture	Ljava/util/ArrayList;
    //   6: astore_3
    //   7: aload_3
    //   8: invokevirtual 279	java/util/ArrayList:size	()I
    //   11: ifle +45 -> 56
    //   14: aload_0
    //   15: getfield 83	org/anddev/andengine/opengl/font/Font:mTexture	Lorg/anddev/andengine/opengl/texture/ITexture;
    //   18: aload_1
    //   19: invokeinterface 282 2 0
    //   24: aload_0
    //   25: getfield 91	org/anddev/andengine/opengl/font/Font:mTextureWidth	F
    //   28: fstore 4
    //   30: aload_0
    //   31: getfield 96	org/anddev/andengine/opengl/font/Font:mTextureHeight	F
    //   34: fstore 5
    //   36: iconst_m1
    //   37: aload_3
    //   38: invokevirtual 279	java/util/ArrayList:size	()I
    //   41: iadd
    //   42: istore 6
    //   44: iload 6
    //   46: ifge +13 -> 59
    //   49: aload_3
    //   50: invokevirtual 285	java/util/ArrayList:clear	()V
    //   53: invokestatic 290	java/lang/System:gc	()V
    //   56: aload_0
    //   57: monitorexit
    //   58: return
    //   59: aload_3
    //   60: iload 6
    //   62: invokevirtual 291	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   65: checkcast 180	org/anddev/andengine/opengl/font/Letter
    //   68: astore 7
    //   70: aload_0
    //   71: aload 7
    //   73: getfield 295	org/anddev/andengine/opengl/font/Letter:mCharacter	C
    //   76: invokespecial 297	org/anddev/andengine/opengl/font/Font:getLetterBitmap	(C)Landroid/graphics/Bitmap;
    //   79: astore 8
    //   81: sipush 3553
    //   84: iconst_0
    //   85: fload 4
    //   87: aload 7
    //   89: getfield 300	org/anddev/andengine/opengl/font/Letter:mTextureX	F
    //   92: fmul
    //   93: f2i
    //   94: fload 5
    //   96: aload 7
    //   98: getfield 303	org/anddev/andengine/opengl/font/Letter:mTextureY	F
    //   101: fmul
    //   102: f2i
    //   103: aload 8
    //   105: invokestatic 309	android/opengl/GLUtils:texSubImage2D	(IIIILandroid/graphics/Bitmap;)V
    //   108: aload 8
    //   110: invokevirtual 312	android/graphics/Bitmap:recycle	()V
    //   113: iinc 6 255
    //   116: goto -72 -> 44
    //   119: astore_2
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_2
    //   123: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	Font
    //   0	124	1	paramGL10	javax.microedition.khronos.opengles.GL10
    //   119	4	2	localObject	Object
    //   6	54	3	localArrayList	ArrayList
    //   28	58	4	f1	float
    //   34	61	5	f2	float
    //   42	72	6	i	int
    //   68	29	7	localLetter	Letter
    //   79	30	8	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   2	44	119	finally
    //   49	56	119	finally
    //   59	113	119	finally
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.font.Font
 * JD-Core Version:    0.7.0.1
 */