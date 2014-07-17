package org.anddev.andengine.audio.sound;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.SoundPool;
import java.io.FileDescriptor;
import java.io.IOException;

public class SoundFactory
{
  private static String sAssetBasePath = "";
  
  public static Sound createSoundFromAsset(SoundManager paramSoundManager, Context paramContext, String paramString)
    throws IOException
  {
    Sound localSound = new Sound(paramSoundManager, paramSoundManager.getSoundPool().load(paramContext.getAssets().openFd(sAssetBasePath + paramString), 1));
    paramSoundManager.add(localSound);
    return localSound;
  }
  
  public static Sound createSoundFromFileDescriptor(SoundManager paramSoundManager, FileDescriptor paramFileDescriptor, long paramLong1, long paramLong2)
    throws IOException
  {
    Sound localSound = new Sound(paramSoundManager, paramSoundManager.getSoundPool().load(paramFileDescriptor, paramLong1, paramLong2, 1));
    paramSoundManager.add(localSound);
    return localSound;
  }
  
  public static Sound createSoundFromPath(SoundManager paramSoundManager, String paramString)
    throws IOException
  {
    Sound localSound = new Sound(paramSoundManager, paramSoundManager.getSoundPool().load(paramString, 1));
    paramSoundManager.add(localSound);
    return localSound;
  }
  
  public static Sound createSoundFromResource(SoundManager paramSoundManager, Context paramContext, int paramInt)
  {
    Sound localSound = new Sound(paramSoundManager, paramSoundManager.getSoundPool().load(paramContext, paramInt, 1));
    paramSoundManager.add(localSound);
    return localSound;
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
 * Qualified Name:     org.anddev.andengine.audio.sound.SoundFactory
 * JD-Core Version:    0.7.0.1
 */