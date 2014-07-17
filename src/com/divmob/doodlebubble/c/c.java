package com.divmob.doodlebubble.c;

import com.divmob.doodlebubble.GameActivity;
import com.divmob.maegame.g.e;
import java.util.Random;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.entity.particle.ParticleSystem;
import org.anddev.andengine.entity.particle.emitter.PointParticleEmitter;
import org.anddev.andengine.entity.particle.initializer.AccelerationInitializer;
import org.anddev.andengine.entity.particle.initializer.RotationInitializer;
import org.anddev.andengine.entity.particle.initializer.VelocityInitializer;
import org.anddev.andengine.entity.particle.modifier.ExpireModifier;
import org.anddev.andengine.entity.primitive.Rectangle;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.sprite.AnimatedSprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.util.MathUtils;

public class c
  extends Rectangle
{
  private boolean a = false;
  private AnimatedSprite b;
  private ParticleSystem[] c;
  private float d;
  private float e;
  private int f;
  
  public c(TiledTextureRegion paramTiledTextureRegion, TextureRegion... paramVarArgs)
  {
    super(0.0F, 0.0F, 0.1F, 0.1F);
    this.b = new AnimatedSprite(0.0F, 0.0F, paramTiledTextureRegion.deepCopy());
    attachChild(this.b);
    this.c = new ParticleSystem[6];
    Random localRandom = new Random();
    for (int i = 0;; i++)
    {
      if (i >= this.c.length) {
        return;
      }
      ParticleSystem localParticleSystem = new ParticleSystem(new PointParticleEmitter(0.0F, 0.0F), 99.0F, 99.0F, 3 + localRandom.nextInt(3), paramVarArgs[i]);
      localParticleSystem.addParticleInitializer(new VelocityInitializer(-100.0F, 200.0F, -100.0F, 200.0F));
      localParticleSystem.addParticleInitializer(new AccelerationInitializer(0.0F, -2.0F));
      localParticleSystem.addParticleInitializer(new RotationInitializer(0.0F, 360.0F));
      localParticleSystem.addParticleModifier(new ExpireModifier(5.0F));
      attachChild(localParticleSystem);
      this.c[i] = localParticleSystem;
      e.e(this.c[i]);
    }
  }
  
  private void c()
  {
    for (int i = 0;; i++)
    {
      if (i >= this.c.length) {
        return;
      }
      e.e(this.c[i]);
    }
  }
  
  private void d()
  {
    for (int i = 0;; i++)
    {
      if (i >= this.c.length) {
        return;
      }
      e.d(this.c[i]);
      this.c[i].reset();
    }
  }
  
  private void e()
  {
    for (int i = 0;; i++)
    {
      if (i >= this.c.length)
      {
        e.d(this.c[this.f]);
        this.c[this.f].setPosition(0.0F, 0.0F);
        return;
      }
      e.e(this.c[i]);
    }
  }
  
  public void a()
  {
    e.e(this);
    e.e(this.b);
    e.e(this.c[this.f]);
  }
  
  public void a(com.divmob.doodlebubble.a.a parama, boolean paramBoolean)
  {
    setPosition(parama);
    this.f = parama.f();
    if ((this.f < 0) || (this.f > -1 + this.c.length)) {
      this.f = 0;
    }
    this.b.setCurrentTileIndex(parama.getCurrentTileIndex());
    if (paramBoolean)
    {
      d();
      e();
    }
    for (;;)
    {
      float f1 = MathUtils.random(30.0F, 150.0F);
      this.d = ((float)(7.0D * Math.cos(f1)));
      this.e = (-(float)(7.0D * Math.sin(f1)));
      this.a = true;
      return;
      c();
    }
  }
  
  public void a(Scene paramScene, int paramInt)
  {
    paramScene.getChild(paramInt).attachChild(this);
  }
  
  public void b()
  {
    e.d(this);
    e.d(this.b);
    this.b.setPosition(0.0F, 0.0F);
    this.c[this.f].setPosition(0.0F, 0.0F);
  }
  
  public void onManagedUpdate(float paramFloat)
  {
    super.onManagedUpdate(paramFloat);
    if (this.a)
    {
      this.b.setPosition(this.b.getX() + this.d, this.b.getY() + this.e);
      this.e = (0.5F + this.e);
      if ((this.b.getX() > com.divmob.maegame.a.a.g) || (this.b.getY() > com.divmob.maegame.a.a.h))
      {
        this.a = false;
        GameActivity.i.recyclePoolItem(this);
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.c.c
 * JD-Core Version:    0.7.0.1
 */