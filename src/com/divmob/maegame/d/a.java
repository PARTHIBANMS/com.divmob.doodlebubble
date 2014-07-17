package com.divmob.maegame.d;

import org.anddev.andengine.audio.music.Music;
import org.anddev.andengine.audio.sound.Sound;

public class a
{
  public static boolean a = false;
  public static boolean b = false;
  private Music c;
  
  public static void a(Sound paramSound)
  {
    if (a) {}
    try
    {
      paramSound.play();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void a()
  {
    if ((b) && (this.c != null)) {
      this.c.play();
    }
  }
  
  public void a(Music paramMusic)
  {
    this.c = paramMusic;
    this.c.setLooping(true);
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramBoolean1;
    b = paramBoolean2;
  }
  
  public void b()
  {
    if ((this.c != null) && (this.c.isPlaying()))
    {
      this.c.pause();
      b = false;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    b = paramBoolean;
    if (b)
    {
      a();
      return;
    }
    b();
  }
  
  public void c()
  {
    if (this.c != null) {
      this.c.stop();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.d.a
 * JD-Core Version:    0.7.0.1
 */