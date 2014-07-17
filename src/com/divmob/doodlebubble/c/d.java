package com.divmob.doodlebubble.c;

import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.util.pool.GenericPool;

public class d
  extends GenericPool<c>
{
  private TiledTextureRegion a;
  private TextureRegion[] b;
  
  public d(TiledTextureRegion paramTiledTextureRegion, TextureRegion... paramVarArgs)
  {
    this.a = paramTiledTextureRegion;
    this.b = paramVarArgs;
  }
  
  protected c a()
  {
    return new c(this.a, this.b);
  }
  
  protected void a(c paramc)
  {
    paramc.b();
  }
  
  protected void b(c paramc)
  {
    paramc.a();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.d
 * JD-Core Version:    0.7.0.1
 */