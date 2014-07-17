package org.anddev.andengine.opengl.font;

import android.content.Context;
import android.graphics.Typeface;
import org.anddev.andengine.opengl.texture.ITexture;

public class FontFactory
{
  private static String sAssetBasePath = "";
  
  public static Font create(ITexture paramITexture, Typeface paramTypeface, float paramFloat, boolean paramBoolean, int paramInt)
  {
    return new Font(paramITexture, paramTypeface, paramFloat, paramBoolean, paramInt);
  }
  
  public static Font createFromAsset(ITexture paramITexture, Context paramContext, String paramString, float paramFloat, boolean paramBoolean, int paramInt)
  {
    return new Font(paramITexture, Typeface.createFromAsset(paramContext.getAssets(), sAssetBasePath + paramString), paramFloat, paramBoolean, paramInt);
  }
  
  public static StrokeFont createStroke(ITexture paramITexture, Typeface paramTypeface, float paramFloat1, boolean paramBoolean, int paramInt1, float paramFloat2, int paramInt2)
  {
    return new StrokeFont(paramITexture, paramTypeface, paramFloat1, paramBoolean, paramInt1, paramFloat2, paramInt2);
  }
  
  public static StrokeFont createStroke(ITexture paramITexture, Typeface paramTypeface, float paramFloat1, boolean paramBoolean1, int paramInt1, float paramFloat2, int paramInt2, boolean paramBoolean2)
  {
    return new StrokeFont(paramITexture, paramTypeface, paramFloat1, paramBoolean1, paramInt1, paramFloat2, paramInt2, paramBoolean2);
  }
  
  public static StrokeFont createStrokeFromAsset(ITexture paramITexture, Context paramContext, String paramString, float paramFloat1, boolean paramBoolean, int paramInt1, float paramFloat2, int paramInt2)
  {
    return new StrokeFont(paramITexture, Typeface.createFromAsset(paramContext.getAssets(), sAssetBasePath + paramString), paramFloat1, paramBoolean, paramInt1, paramFloat2, paramInt2);
  }
  
  public static StrokeFont createStrokeFromAsset(ITexture paramITexture, Context paramContext, String paramString, float paramFloat1, boolean paramBoolean1, int paramInt1, float paramFloat2, int paramInt2, boolean paramBoolean2)
  {
    return new StrokeFont(paramITexture, Typeface.createFromAsset(paramContext.getAssets(), sAssetBasePath + paramString), paramFloat1, paramBoolean1, paramInt1, paramFloat2, paramInt2, paramBoolean2);
  }
  
  public static void reset()
  {
    setAssetBasePath("");
  }
  
  public static void setAssetBasePath(String paramString)
  {
    if ((paramString.endsWith("/")) || (paramString.length() == 0))
    {
      sAssetBasePath = paramString;
      return;
    }
    throw new IllegalStateException("pAssetBasePath must end with '/' or be lenght zero.");
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.font.FontFactory
 * JD-Core Version:    0.7.0.1
 */