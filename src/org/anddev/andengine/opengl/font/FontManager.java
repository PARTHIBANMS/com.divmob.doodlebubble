package org.anddev.andengine.opengl.font;

import java.util.ArrayList;

public class FontManager
{
  private final ArrayList<Font> mFontsManaged = new ArrayList();
  
  public void clear()
  {
    try
    {
      this.mFontsManaged.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void loadFont(Font paramFont)
  {
    if (paramFont == null) {
      try
      {
        throw new IllegalArgumentException("pFont must not be null!");
      }
      finally {}
    }
    this.mFontsManaged.add(paramFont);
  }
  
  public void loadFonts(FontLibrary paramFontLibrary)
  {
    try
    {
      paramFontLibrary.loadFonts(this);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void loadFonts(Font... paramVarArgs)
  {
    for (int i = -1 + paramVarArgs.length;; i--)
    {
      if (i < 0) {
        return;
      }
      loadFont(paramVarArgs[i]);
    }
  }
  
  /* Error */
  public void reloadFonts()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	org/anddev/andengine/opengl/font/FontManager:mFontsManaged	Ljava/util/ArrayList;
    //   6: astore_2
    //   7: aload_2
    //   8: invokevirtual 47	java/util/ArrayList:size	()I
    //   11: istore_3
    //   12: iload_3
    //   13: iconst_1
    //   14: isub
    //   15: istore 4
    //   17: iload 4
    //   19: ifge +6 -> 25
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_2
    //   26: iload 4
    //   28: invokevirtual 51	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   31: checkcast 53	org/anddev/andengine/opengl/font/Font
    //   34: invokevirtual 56	org/anddev/andengine/opengl/font/Font:reload	()V
    //   37: iinc 4 255
    //   40: goto -23 -> 17
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	FontManager
    //   43	4	1	localObject	Object
    //   6	20	2	localArrayList	ArrayList
    //   11	4	3	i	int
    //   15	23	4	j	int
    // Exception table:
    //   from	to	target	type
    //   2	12	43	finally
    //   25	37	43	finally
  }
  
  /* Error */
  public void updateFonts(javax.microedition.khronos.opengles.GL10 paramGL10)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	org/anddev/andengine/opengl/font/FontManager:mFontsManaged	Ljava/util/ArrayList;
    //   6: astore_3
    //   7: aload_3
    //   8: invokevirtual 47	java/util/ArrayList:size	()I
    //   11: istore 4
    //   13: iload 4
    //   15: ifle +14 -> 29
    //   18: iload 4
    //   20: iconst_1
    //   21: isub
    //   22: istore 5
    //   24: iload 5
    //   26: ifge +6 -> 32
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_3
    //   33: iload 5
    //   35: invokevirtual 51	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   38: checkcast 53	org/anddev/andengine/opengl/font/Font
    //   41: aload_1
    //   42: invokevirtual 61	org/anddev/andengine/opengl/font/Font:update	(Ljavax/microedition/khronos/opengles/GL10;)V
    //   45: iinc 5 255
    //   48: goto -24 -> 24
    //   51: astore_2
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	FontManager
    //   0	56	1	paramGL10	javax.microedition.khronos.opengles.GL10
    //   51	4	2	localObject	Object
    //   6	27	3	localArrayList	ArrayList
    //   11	11	4	i	int
    //   22	24	5	j	int
    // Exception table:
    //   from	to	target	type
    //   2	13	51	finally
    //   32	45	51	finally
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.font.FontManager
 * JD-Core Version:    0.7.0.1
 */