package org.anddev.andengine.opengl.font;

import android.util.SparseArray;
import org.anddev.andengine.util.Library;

public class FontLibrary
  extends Library<Font>
{
  public FontLibrary() {}
  
  public FontLibrary(int paramInt)
  {
    super(paramInt);
  }
  
  void loadFonts(FontManager paramFontManager)
  {
    SparseArray localSparseArray = this.mItems;
    for (int i = -1 + localSparseArray.size();; i--)
    {
      if (i < 0) {
        return;
      }
      Font localFont = (Font)localSparseArray.valueAt(i);
      if (localFont != null) {
        paramFontManager.loadFont(localFont);
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.font.FontLibrary
 * JD-Core Version:    0.7.0.1
 */