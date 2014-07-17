package com.divmob.maegame.g;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class f
{
  public static Bitmap a(AssetManager paramAssetManager, String paramString)
  {
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(paramAssetManager.open(paramString));
      return localBitmap;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.g.f
 * JD-Core Version:    0.7.0.1
 */