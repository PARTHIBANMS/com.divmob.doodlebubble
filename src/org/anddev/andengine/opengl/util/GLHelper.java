package org.anddev.andengine.opengl.util;

import android.graphics.Bitmap;
import android.opengl.GLException;
import android.os.Build;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.engine.options.RenderOptions;
import org.anddev.andengine.opengl.texture.Texture.PixelFormat;
import org.anddev.andengine.util.Debug;

public class GLHelper
{
  public static final int BYTES_PER_FLOAT = 4;
  public static final int BYTES_PER_PIXEL_RGBA = 4;
  public static boolean EXTENSIONS_DRAWTEXTURE;
  public static boolean EXTENSIONS_TEXTURE_NON_POWER_OF_TWO;
  public static boolean EXTENSIONS_VERTEXBUFFEROBJECTS;
  private static final int[] HARDWAREBUFFERID_CONTAINER;
  private static final int[] HARDWARETEXTUREID_CONTAINER;
  private static final boolean IS_LITTLE_ENDIAN;
  private static float sAlpha;
  private static float sBlue;
  private static int sCurrentDestinationBlendMode;
  private static int sCurrentHardwareBufferID;
  private static int sCurrentHardwareTextureID;
  private static int sCurrentMatrix;
  private static int sCurrentSourceBlendMode;
  private static FastFloatBuffer sCurrentTextureFloatBuffer;
  private static FastFloatBuffer sCurrentVertexFloatBuffer;
  private static boolean sEnableBlend;
  private static boolean sEnableCulling;
  private static boolean sEnableDepthTest;
  private static boolean sEnableDither;
  private static boolean sEnableLightning;
  private static boolean sEnableMultisample;
  private static boolean sEnableScissorTest;
  private static boolean sEnableTexCoordArray;
  private static boolean sEnableTextures;
  private static boolean sEnableVertexArray;
  private static float sGreen;
  private static float sLineWidth;
  private static float sRed;
  
  static
  {
    if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {}
    for (boolean bool = true;; bool = false)
    {
      IS_LITTLE_ENDIAN = bool;
      HARDWARETEXTUREID_CONTAINER = new int[1];
      HARDWAREBUFFERID_CONTAINER = new int[1];
      sCurrentHardwareBufferID = -1;
      sCurrentHardwareTextureID = -1;
      sCurrentMatrix = -1;
      sCurrentSourceBlendMode = -1;
      sCurrentDestinationBlendMode = -1;
      sCurrentVertexFloatBuffer = null;
      sCurrentTextureFloatBuffer = null;
      sEnableDither = true;
      sEnableLightning = true;
      sEnableDepthTest = true;
      sEnableMultisample = true;
      sEnableScissorTest = false;
      sEnableBlend = false;
      sEnableCulling = false;
      sEnableTextures = false;
      sEnableTexCoordArray = false;
      sEnableVertexArray = false;
      sLineWidth = 1.0F;
      sRed = -1.0F;
      sGreen = -1.0F;
      sBlue = -1.0F;
      sAlpha = -1.0F;
      EXTENSIONS_VERTEXBUFFEROBJECTS = false;
      EXTENSIONS_DRAWTEXTURE = false;
      EXTENSIONS_TEXTURE_NON_POWER_OF_TWO = false;
      return;
    }
  }
  
  public static void bindBuffer(GL11 paramGL11, int paramInt)
  {
    if (sCurrentHardwareBufferID != paramInt)
    {
      sCurrentHardwareBufferID = paramInt;
      paramGL11.glBindBuffer(34962, paramInt);
    }
  }
  
  public static void bindTexture(GL10 paramGL10, int paramInt)
  {
    if (sCurrentHardwareTextureID != paramInt)
    {
      sCurrentHardwareTextureID = paramInt;
      paramGL10.glBindTexture(3553, paramInt);
    }
  }
  
  public static void blendFunction(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    if ((sCurrentSourceBlendMode != paramInt1) || (sCurrentDestinationBlendMode != paramInt2))
    {
      sCurrentSourceBlendMode = paramInt1;
      sCurrentDestinationBlendMode = paramInt2;
      paramGL10.glBlendFunc(paramInt1, paramInt2);
    }
  }
  
  public static void bufferData(GL11 paramGL11, ByteBuffer paramByteBuffer, int paramInt)
  {
    paramGL11.glBufferData(34962, paramByteBuffer.capacity(), paramByteBuffer, paramInt);
  }
  
  public static void checkGLError(GL10 paramGL10)
    throws GLException
  {
    int i = paramGL10.glGetError();
    if (i != 0) {
      throw new GLException(i);
    }
  }
  
  private static byte[] convertARGB_8888toARGB_4444(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[2 * paramArrayOfInt.length];
    int i4;
    int i5;
    if (IS_LITTLE_ENDIAN)
    {
      i4 = -1 + paramArrayOfInt.length;
      i5 = -1 + arrayOfByte.length;
      if (i4 >= 0) {}
    }
    for (;;)
    {
      return arrayOfByte;
      int i6 = paramArrayOfInt[i4];
      int i7 = 0xF & i6 >> 28;
      int i8 = 0xF0 & i6 >> 16;
      int i9 = 0xF0 & i6 >> 8;
      int i10 = i6 & 0xF;
      int i11 = i5 - 1;
      arrayOfByte[i5] = ((byte)(i7 | i8));
      i5 = i11 - 1;
      arrayOfByte[i11] = ((byte)(i10 | i9));
      i4--;
      break;
      int i = -1 + paramArrayOfInt.length;
      int j = -1 + arrayOfByte.length;
      while (i >= 0)
      {
        int k = paramArrayOfInt[i];
        int m = 0xF & k >> 28;
        int n = 0xF0 & k >> 16;
        int i1 = 0xF0 & k >> 8;
        int i2 = k & 0xF;
        int i3 = j - 1;
        arrayOfByte[j] = ((byte)(i2 | i1));
        j = i3 - 1;
        arrayOfByte[i3] = ((byte)(m | n));
        i--;
      }
    }
  }
  
  private static byte[] convertARGB_8888toA_8(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[paramArrayOfInt.length];
    int j;
    if (IS_LITTLE_ENDIAN)
    {
      j = -1 + paramArrayOfInt.length;
      if (j >= 0) {}
    }
    for (;;)
    {
      return arrayOfByte;
      arrayOfByte[j] = ((byte)(paramArrayOfInt[j] >> 24));
      j--;
      break;
      for (int i = -1 + paramArrayOfInt.length; i >= 0; i--) {
        arrayOfByte[i] = ((byte)(0xFF & paramArrayOfInt[i]));
      }
    }
  }
  
  private static int[] convertARGB_8888toRGBA_8888(int[] paramArrayOfInt)
  {
    int k;
    if (IS_LITTLE_ENDIAN)
    {
      k = -1 + paramArrayOfInt.length;
      if (k >= 0) {}
    }
    for (;;)
    {
      return paramArrayOfInt;
      int m = paramArrayOfInt[k];
      paramArrayOfInt[k] = (0xFF00FF00 & m | (m & 0xFF) << 16 | (m & 0xFF0000) >> 16);
      k--;
      break;
      for (int i = -1 + paramArrayOfInt.length; i >= 0; i--)
      {
        int j = paramArrayOfInt[i];
        paramArrayOfInt[i] = ((0xFFFFFF & j) << 8 | (j & 0xFF000000) >> 24);
      }
    }
  }
  
  private static byte[] convertARGB_8888toRGB_565(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[2 * paramArrayOfInt.length];
    int i3;
    int i4;
    if (IS_LITTLE_ENDIAN)
    {
      i3 = -1 + paramArrayOfInt.length;
      i4 = -1 + arrayOfByte.length;
      if (i3 >= 0) {}
    }
    for (;;)
    {
      return arrayOfByte;
      int i5 = paramArrayOfInt[i3];
      int i6 = 0xFF & i5 >> 16;
      int i7 = 0xFF & i5 >> 8;
      int i8 = i5 & 0xFF;
      int i9 = i4 - 1;
      arrayOfByte[i4] = ((byte)(i6 & 0xF8 | i7 >> 5));
      i4 = i9 - 1;
      arrayOfByte[i9] = ((byte)(0xE0 & i7 << 3 | i8 >> 3));
      i3--;
      break;
      int i = -1 + paramArrayOfInt.length;
      int j = -1 + arrayOfByte.length;
      while (i >= 0)
      {
        int k = paramArrayOfInt[i];
        int m = 0xFF & k >> 16;
        int n = 0xFF & k >> 8;
        int i1 = k & 0xFF;
        int i2 = j - 1;
        arrayOfByte[j] = ((byte)(0xE0 & n << 3 | i1 >> 3));
        j = i2 - 1;
        arrayOfByte[i2] = ((byte)(m & 0xF8 | n >> 5));
        i--;
      }
    }
  }
  
  public static void deleteBuffer(GL11 paramGL11, int paramInt)
  {
    HARDWAREBUFFERID_CONTAINER[0] = paramInt;
    paramGL11.glDeleteBuffers(1, HARDWAREBUFFERID_CONTAINER, 0);
  }
  
  public static void deleteTexture(GL10 paramGL10, int paramInt)
  {
    HARDWARETEXTUREID_CONTAINER[0] = paramInt;
    paramGL10.glDeleteTextures(1, HARDWARETEXTUREID_CONTAINER, 0);
  }
  
  public static void disableBlend(GL10 paramGL10)
  {
    if (sEnableBlend)
    {
      sEnableBlend = false;
      paramGL10.glDisable(3042);
    }
  }
  
  public static void disableCulling(GL10 paramGL10)
  {
    if (sEnableCulling)
    {
      sEnableCulling = false;
      paramGL10.glDisable(2884);
    }
  }
  
  public static void disableDepthTest(GL10 paramGL10)
  {
    if (sEnableDepthTest)
    {
      sEnableDepthTest = false;
      paramGL10.glDisable(2929);
    }
  }
  
  public static void disableDither(GL10 paramGL10)
  {
    if (sEnableDither)
    {
      sEnableDither = false;
      paramGL10.glDisable(3024);
    }
  }
  
  public static void disableLightning(GL10 paramGL10)
  {
    if (sEnableLightning)
    {
      sEnableLightning = false;
      paramGL10.glDisable(2896);
    }
  }
  
  public static void disableMultisample(GL10 paramGL10)
  {
    if (sEnableMultisample)
    {
      sEnableMultisample = false;
      paramGL10.glDisable(32925);
    }
  }
  
  public static void disableScissorTest(GL10 paramGL10)
  {
    if (sEnableScissorTest)
    {
      sEnableScissorTest = false;
      paramGL10.glDisable(3089);
    }
  }
  
  public static void disableTexCoordArray(GL10 paramGL10)
  {
    if (sEnableTexCoordArray)
    {
      sEnableTexCoordArray = false;
      paramGL10.glDisableClientState(32888);
    }
  }
  
  public static void disableTextures(GL10 paramGL10)
  {
    if (sEnableTextures)
    {
      sEnableTextures = false;
      paramGL10.glDisable(3553);
    }
  }
  
  public static void disableVertexArray(GL10 paramGL10)
  {
    if (sEnableVertexArray)
    {
      sEnableVertexArray = false;
      paramGL10.glDisableClientState(32884);
    }
  }
  
  public static void enableBlend(GL10 paramGL10)
  {
    if (!sEnableBlend)
    {
      sEnableBlend = true;
      paramGL10.glEnable(3042);
    }
  }
  
  public static void enableCulling(GL10 paramGL10)
  {
    if (!sEnableCulling)
    {
      sEnableCulling = true;
      paramGL10.glEnable(2884);
    }
  }
  
  public static void enableDepthTest(GL10 paramGL10)
  {
    if (!sEnableDepthTest)
    {
      sEnableDepthTest = true;
      paramGL10.glEnable(2929);
    }
  }
  
  public static void enableDither(GL10 paramGL10)
  {
    if (!sEnableDither)
    {
      sEnableDither = true;
      paramGL10.glEnable(3024);
    }
  }
  
  public static void enableExtensions(GL10 paramGL10, RenderOptions paramRenderOptions)
  {
    String str1 = paramGL10.glGetString(7938);
    String str2 = paramGL10.glGetString(7937);
    String str3 = paramGL10.glGetString(7939);
    Debug.d("RENDERER: " + str2);
    Debug.d("VERSION: " + str1);
    Debug.d("EXTENSIONS: " + str3);
    boolean bool1 = str1.contains("1.0");
    boolean bool2 = str1.contains("2.");
    boolean bool3 = str2.contains("PixelFlinger");
    boolean bool4 = str3.contains("_vertex_buffer_object");
    boolean bool5 = str3.contains("draw_texture");
    boolean bool6 = str3.contains("texture_npot");
    boolean bool7;
    boolean bool8;
    label198:
    boolean bool9;
    if ((!paramRenderOptions.isDisableExtensionVertexBufferObjects()) && (!bool3) && ((bool4) || (!bool1)))
    {
      bool7 = true;
      EXTENSIONS_VERTEXBUFFEROBJECTS = bool7;
      if ((paramRenderOptions.isDisableExtensionVertexBufferObjects()) || ((!bool5) && (bool1))) {
        break label275;
      }
      bool8 = true;
      EXTENSIONS_DRAWTEXTURE = bool8;
      if (bool6) {
        break label281;
      }
      bool9 = false;
      if (bool2) {
        break label281;
      }
    }
    for (;;)
    {
      EXTENSIONS_TEXTURE_NON_POWER_OF_TWO = bool9;
      hackBrokenDevices();
      Debug.d("EXTENSIONS_VERXTEXBUFFEROBJECTS = " + EXTENSIONS_VERTEXBUFFEROBJECTS);
      Debug.d("EXTENSIONS_DRAWTEXTURE = " + EXTENSIONS_DRAWTEXTURE);
      return;
      bool7 = false;
      break;
      label275:
      bool8 = false;
      break label198;
      label281:
      bool9 = true;
    }
  }
  
  public static void enableLightning(GL10 paramGL10)
  {
    if (!sEnableLightning)
    {
      sEnableLightning = true;
      paramGL10.glEnable(2896);
    }
  }
  
  public static void enableMultisample(GL10 paramGL10)
  {
    if (!sEnableMultisample)
    {
      sEnableMultisample = true;
      paramGL10.glEnable(32925);
    }
  }
  
  public static void enableScissorTest(GL10 paramGL10)
  {
    if (!sEnableScissorTest)
    {
      sEnableScissorTest = true;
      paramGL10.glEnable(3089);
    }
  }
  
  public static void enableTexCoordArray(GL10 paramGL10)
  {
    if (!sEnableTexCoordArray)
    {
      sEnableTexCoordArray = true;
      paramGL10.glEnableClientState(32888);
    }
  }
  
  public static void enableTextures(GL10 paramGL10)
  {
    if (!sEnableTextures)
    {
      sEnableTextures = true;
      paramGL10.glEnable(3553);
    }
  }
  
  public static void enableVertexArray(GL10 paramGL10)
  {
    if (!sEnableVertexArray)
    {
      sEnableVertexArray = true;
      paramGL10.glEnableClientState(32884);
    }
  }
  
  public static void forceBindTexture(GL10 paramGL10, int paramInt)
  {
    sCurrentHardwareTextureID = paramInt;
    paramGL10.glBindTexture(3553, paramInt);
  }
  
  private static Buffer getPixels(Bitmap paramBitmap, Texture.PixelFormat paramPixelFormat)
  {
    int[] arrayOfInt = getPixelsARGB_8888(paramBitmap);
    switch (paramPixelFormat)
    {
    case I_8: 
    default: 
      throw new IllegalArgumentException("Unexpected " + Texture.PixelFormat.class.getSimpleName() + ": '" + paramPixelFormat + "'.");
    case RGBA_5551: 
      return ByteBuffer.wrap(convertARGB_8888toRGB_565(arrayOfInt));
    case RGBA_4444: 
      return IntBuffer.wrap(convertARGB_8888toRGBA_8888(arrayOfInt));
    case A_8: 
      return ByteBuffer.wrap(convertARGB_8888toARGB_4444(arrayOfInt));
    }
    return ByteBuffer.wrap(convertARGB_8888toA_8(arrayOfInt));
  }
  
  public static int[] getPixelsARGB_8888(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    int[] arrayOfInt = new int[i * j];
    paramBitmap.getPixels(arrayOfInt, 0, i, 0, 0, i, j);
    return arrayOfInt;
  }
  
  public static void glTexImage2D(GL10 paramGL10, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3, Texture.PixelFormat paramPixelFormat)
  {
    Buffer localBuffer = getPixels(paramBitmap, paramPixelFormat);
    paramGL10.glTexImage2D(paramInt1, paramInt2, paramPixelFormat.getGLFormat(), paramBitmap.getWidth(), paramBitmap.getHeight(), paramInt3, paramPixelFormat.getGLFormat(), paramPixelFormat.getGLType(), localBuffer);
  }
  
  public static void glTexSubImage2D(GL10 paramGL10, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Bitmap paramBitmap, Texture.PixelFormat paramPixelFormat)
  {
    Buffer localBuffer = getPixels(paramBitmap, paramPixelFormat);
    paramGL10.glTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramBitmap.getWidth(), paramBitmap.getHeight(), paramPixelFormat.getGLFormat(), paramPixelFormat.getGLType(), localBuffer);
  }
  
  private static void hackBrokenDevices()
  {
    if (Build.PRODUCT.contains("morrison")) {
      EXTENSIONS_VERTEXBUFFEROBJECTS = false;
    }
  }
  
  public static void lineWidth(GL10 paramGL10, float paramFloat)
  {
    if (sLineWidth != paramFloat)
    {
      sLineWidth = paramFloat;
      paramGL10.glLineWidth(paramFloat);
    }
  }
  
  public static void reset(GL10 paramGL10)
  {
    sCurrentHardwareBufferID = -1;
    sCurrentHardwareTextureID = -1;
    sCurrentMatrix = -1;
    sCurrentSourceBlendMode = -1;
    sCurrentDestinationBlendMode = -1;
    sCurrentVertexFloatBuffer = null;
    sCurrentTextureFloatBuffer = null;
    enableDither(paramGL10);
    enableLightning(paramGL10);
    enableDepthTest(paramGL10);
    enableMultisample(paramGL10);
    disableBlend(paramGL10);
    disableCulling(paramGL10);
    disableTextures(paramGL10);
    disableTexCoordArray(paramGL10);
    disableVertexArray(paramGL10);
    sLineWidth = 1.0F;
    sRed = -1.0F;
    sGreen = -1.0F;
    sBlue = -1.0F;
    sAlpha = -1.0F;
    EXTENSIONS_VERTEXBUFFEROBJECTS = false;
    EXTENSIONS_DRAWTEXTURE = false;
    EXTENSIONS_TEXTURE_NON_POWER_OF_TWO = false;
  }
  
  public static void setColor(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((paramFloat4 != sAlpha) || (paramFloat1 != sRed) || (paramFloat2 != sGreen) || (paramFloat3 != sBlue))
    {
      sAlpha = paramFloat4;
      sRed = paramFloat1;
      sGreen = paramFloat2;
      sBlue = paramFloat3;
      paramGL10.glColor4f(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    }
  }
  
  public static void setModelViewIdentityMatrix(GL10 paramGL10)
  {
    switchToModelViewMatrix(paramGL10);
    paramGL10.glLoadIdentity();
  }
  
  public static void setPerspectiveCorrectionHintFastest(GL10 paramGL10)
  {
    paramGL10.glHint(3152, 4353);
  }
  
  public static void setProjectionIdentityMatrix(GL10 paramGL10)
  {
    switchToProjectionMatrix(paramGL10);
    paramGL10.glLoadIdentity();
  }
  
  public static void setShadeModelFlat(GL10 paramGL10)
  {
    paramGL10.glShadeModel(7424);
  }
  
  public static void switchToModelViewMatrix(GL10 paramGL10)
  {
    if (sCurrentMatrix != 5888)
    {
      sCurrentMatrix = 5888;
      paramGL10.glMatrixMode(5888);
    }
  }
  
  public static void switchToProjectionMatrix(GL10 paramGL10)
  {
    if (sCurrentMatrix != 5889)
    {
      sCurrentMatrix = 5889;
      paramGL10.glMatrixMode(5889);
    }
  }
  
  public static void texCoordPointer(GL10 paramGL10, FastFloatBuffer paramFastFloatBuffer)
  {
    if (sCurrentTextureFloatBuffer != paramFastFloatBuffer)
    {
      sCurrentTextureFloatBuffer = paramFastFloatBuffer;
      paramGL10.glTexCoordPointer(2, 5126, 0, paramFastFloatBuffer.mByteBuffer);
    }
  }
  
  public static void texCoordZeroPointer(GL11 paramGL11)
  {
    paramGL11.glTexCoordPointer(2, 5126, 0, 0);
  }
  
  public static void vertexPointer(GL10 paramGL10, FastFloatBuffer paramFastFloatBuffer)
  {
    if (sCurrentVertexFloatBuffer != paramFastFloatBuffer)
    {
      sCurrentVertexFloatBuffer = paramFastFloatBuffer;
      paramGL10.glVertexPointer(2, 5126, 0, paramFastFloatBuffer.mByteBuffer);
    }
  }
  
  public static void vertexZeroPointer(GL11 paramGL11)
  {
    paramGL11.glVertexPointer(2, 5126, 0, 0);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.util.GLHelper
 * JD-Core Version:    0.7.0.1
 */