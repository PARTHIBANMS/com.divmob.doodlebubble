package org.anddev.andengine.entity.text;

import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.shape.RectangularShape;
import org.anddev.andengine.opengl.font.Font;
import org.anddev.andengine.opengl.texture.ITexture;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.opengl.texture.buffer.TextTextureBuffer;
import org.anddev.andengine.opengl.util.GLHelper;
import org.anddev.andengine.opengl.vertex.TextVertexBuffer;
import org.anddev.andengine.util.HorizontalAlign;
import org.anddev.andengine.util.StringUtils;

public class Text
  extends RectangularShape
{
  protected final int mCharactersMaximum;
  private final Font mFont;
  private String[] mLines;
  private int mMaximumLineWidth;
  private String mText;
  private final TextTextureBuffer mTextTextureBuffer;
  protected final int mVertexCount;
  private int[] mWidths;
  
  public Text(float paramFloat1, float paramFloat2, Font paramFont, String paramString)
  {
    this(paramFloat1, paramFloat2, paramFont, paramString, HorizontalAlign.LEFT);
  }
  
  public Text(float paramFloat1, float paramFloat2, Font paramFont, String paramString, HorizontalAlign paramHorizontalAlign)
  {
    this(paramFloat1, paramFloat2, paramFont, paramString, paramHorizontalAlign, paramString.length() - StringUtils.countOccurrences(paramString, '\n'));
  }
  
  protected Text(float paramFloat1, float paramFloat2, Font paramFont, String paramString, HorizontalAlign paramHorizontalAlign, int paramInt)
  {
    super(paramFloat1, paramFloat2, 0.0F, 0.0F, new TextVertexBuffer(paramInt, paramHorizontalAlign, 35044, true));
    this.mCharactersMaximum = paramInt;
    this.mVertexCount = (6 * this.mCharactersMaximum);
    this.mTextTextureBuffer = new TextTextureBuffer(2 * this.mVertexCount, 35044, true);
    this.mFont = paramFont;
    updateText(paramString);
    initBlendFunction();
  }
  
  private void applyTexture(GL10 paramGL10)
  {
    if (GLHelper.EXTENSIONS_VERTEXBUFFEROBJECTS)
    {
      GL11 localGL11 = (GL11)paramGL10;
      this.mTextTextureBuffer.selectOnHardware(localGL11);
      this.mFont.getTexture().bind(paramGL10);
      GLHelper.texCoordZeroPointer(localGL11);
      return;
    }
    this.mFont.getTexture().bind(paramGL10);
    GLHelper.texCoordPointer(paramGL10, this.mTextTextureBuffer.getFloatBuffer());
  }
  
  private void initBlendFunction()
  {
    if (this.mFont.getTexture().getTextureOptions().mPreMultipyAlpha) {
      setBlendFunction(1, 771);
    }
  }
  
  protected void drawVertices(GL10 paramGL10, Camera paramCamera)
  {
    paramGL10.glDrawArrays(4, 0, this.mVertexCount);
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    if (this.mTextTextureBuffer.isManaged()) {
      this.mTextTextureBuffer.unloadFromActiveBufferObjectManager();
    }
  }
  
  public int getCharactersMaximum()
  {
    return this.mCharactersMaximum;
  }
  
  public String getText()
  {
    return this.mText;
  }
  
  public TextVertexBuffer getVertexBuffer()
  {
    return (TextVertexBuffer)this.mVertexBuffer;
  }
  
  protected void onApplyTransformations(GL10 paramGL10)
  {
    super.onApplyTransformations(paramGL10);
    applyTexture(paramGL10);
  }
  
  protected void onInitDraw(GL10 paramGL10)
  {
    super.onInitDraw(paramGL10);
    GLHelper.enableTextures(paramGL10);
    GLHelper.enableTexCoordArray(paramGL10);
  }
  
  protected void onUpdateVertexBuffer()
  {
    Font localFont = this.mFont;
    if (localFont != null) {
      getVertexBuffer().update(localFont, this.mMaximumLineWidth, this.mWidths, this.mLines);
    }
  }
  
  protected void updateText(String paramString)
  {
    int i = 0;
    this.mText = paramString;
    Font localFont = this.mFont;
    this.mLines = StringUtils.split(this.mText, '\n', this.mLines);
    String[] arrayOfString = this.mLines;
    int j = arrayOfString.length;
    int k;
    int[] arrayOfInt;
    if ((this.mWidths != null) && (this.mWidths.length == j))
    {
      k = 1;
      if (k == 0) {
        this.mWidths = new int[j];
      }
      arrayOfInt = this.mWidths;
    }
    for (int m = j - 1;; m--)
    {
      if (m < 0)
      {
        this.mMaximumLineWidth = i;
        this.mWidth = this.mMaximumLineWidth;
        float f1 = this.mWidth;
        this.mBaseWidth = f1;
        this.mHeight = (j * localFont.getLineHeight() + (j - 1) * localFont.getLineGap());
        float f2 = this.mHeight;
        this.mBaseHeight = f2;
        this.mRotationCenterX = (f1 * 0.5F);
        this.mRotationCenterY = (f2 * 0.5F);
        this.mScaleCenterX = this.mRotationCenterX;
        this.mScaleCenterY = this.mRotationCenterY;
        this.mTextTextureBuffer.update(localFont, arrayOfString);
        updateVertexBuffer();
        return;
        k = 0;
        break;
      }
      arrayOfInt[m] = localFont.getStringWidth(arrayOfString[m]);
      i = Math.max(i, arrayOfInt[m]);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.text.Text
 * JD-Core Version:    0.7.0.1
 */