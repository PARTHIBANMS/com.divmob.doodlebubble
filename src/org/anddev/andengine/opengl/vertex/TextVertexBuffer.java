package org.anddev.andengine.opengl.vertex;

import org.anddev.andengine.opengl.font.Font;
import org.anddev.andengine.opengl.font.Letter;
import org.anddev.andengine.opengl.util.FastFloatBuffer;
import org.anddev.andengine.util.HorizontalAlign;

public class TextVertexBuffer
  extends VertexBuffer
{
  public static final int VERTICES_PER_CHARACTER = 6;
  private final HorizontalAlign mHorizontalAlign;
  
  public TextVertexBuffer(int paramInt1, HorizontalAlign paramHorizontalAlign, int paramInt2, boolean paramBoolean)
  {
    super(paramInt1 * 12, paramInt2, paramBoolean);
    this.mHorizontalAlign = paramHorizontalAlign;
  }
  
  public void update(Font paramFont, int paramInt, int[] paramArrayOfInt, String[] paramArrayOfString)
  {
    for (;;)
    {
      int[] arrayOfInt;
      int j;
      int m;
      String str;
      int i1;
      int i2;
      int i3;
      int i4;
      try
      {
        arrayOfInt = this.mBufferData;
        i = 0;
        j = paramFont.getLineHeight();
        int k = paramArrayOfString.length;
        m = 0;
        if (m >= k)
        {
          FastFloatBuffer localFastFloatBuffer = this.mFloatBuffer;
          localFastFloatBuffer.position(0);
          localFastFloatBuffer.put(arrayOfInt);
          localFastFloatBuffer.position(0);
          super.setHardwareBufferNeedsUpdate();
          return;
        }
        str = paramArrayOfString[m];
        switch (this.mHorizontalAlign)
        {
        case RIGHT: 
          i1 = m * (paramFont.getLineHeight() + paramFont.getLineGap());
          i2 = Float.floatToRawIntBits(i1);
          i3 = str.length();
          i4 = 0;
        }
      }
      finally {}
      int n = paramInt - paramArrayOfInt[m];
      continue;
      n = paramInt - paramArrayOfInt[m] >> 1;
      continue;
      Letter localLetter = paramFont.getLetter(str.charAt(i4));
      int i5 = i1 + j;
      int i6 = n + localLetter.mWidth;
      int i7 = Float.floatToRawIntBits(n);
      int i8 = Float.floatToRawIntBits(i6);
      int i9 = Float.floatToRawIntBits(i5);
      int i10 = i + 1;
      arrayOfInt[i] = i7;
      int i11 = i10 + 1;
      arrayOfInt[i10] = i2;
      int i12 = i11 + 1;
      arrayOfInt[i11] = i7;
      int i13 = i12 + 1;
      arrayOfInt[i12] = i9;
      int i14 = i13 + 1;
      arrayOfInt[i13] = i8;
      int i15 = i14 + 1;
      arrayOfInt[i14] = i9;
      int i16 = i15 + 1;
      arrayOfInt[i15] = i8;
      int i17 = i16 + 1;
      arrayOfInt[i16] = i9;
      int i18 = i17 + 1;
      arrayOfInt[i17] = i8;
      int i19 = i18 + 1;
      arrayOfInt[i18] = i2;
      int i20 = i19 + 1;
      arrayOfInt[i19] = i7;
      int i = i20 + 1;
      arrayOfInt[i20] = i2;
      int i21 = localLetter.mAdvance;
      n += i21;
      i4++;
      break label406;
      n = 0;
      continue;
      label406:
      if (i4 >= i3) {
        m++;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.vertex.TextVertexBuffer
 * JD-Core Version:    0.7.0.1
 */