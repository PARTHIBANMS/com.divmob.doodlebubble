package com.divmob.common;

import com.divmob.maegame.d.a;
import com.divmob.maegame.d.b;
import com.divmob.maegame.f.a.d;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;

class c
  extends d
{
  c(ClassicGame paramClassicGame, float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion, boolean paramBoolean)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion, paramBoolean);
  }
  
  public void a()
  {
    a locala = ClassicGame.a(this.a);
    if (a.b) {}
    for (boolean bool = false;; bool = true)
    {
      locala.b(bool);
      ClassicGame.b(this.a).b(a.b);
      return;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.common.c
 * JD-Core Version:    0.7.0.1
 */