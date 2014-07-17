package org.anddev.andengine.entity.particle;

import android.util.FloatMath;
import java.util.ArrayList;
import java.util.Random;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.Entity;
import org.anddev.andengine.entity.particle.emitter.IParticleEmitter;
import org.anddev.andengine.entity.particle.emitter.RectangleParticleEmitter;
import org.anddev.andengine.entity.particle.initializer.IParticleInitializer;
import org.anddev.andengine.entity.particle.modifier.IParticleModifier;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.opengl.vertex.RectangleVertexBuffer;
import org.anddev.andengine.util.MathUtils;

public class ParticleSystem
  extends Entity
{
  private static final int BLENDFUNCTION_DESTINATION_DEFAULT = 771;
  private static final int BLENDFUNCTION_SOURCE_DEFAULT = 1;
  private final float[] POSITION_OFFSET = new float[2];
  private int mDestinationBlendFunction = 771;
  private final IParticleEmitter mParticleEmitter;
  private int mParticleInitializerCount;
  private final ArrayList<IParticleInitializer> mParticleInitializers = new ArrayList();
  private int mParticleModifierCount;
  private final ArrayList<IParticleModifier> mParticleModifiers = new ArrayList();
  private final Particle[] mParticles;
  private int mParticlesAlive;
  private float mParticlesDueToSpawn;
  private final int mParticlesMaximum;
  private boolean mParticlesSpawnEnabled = true;
  private final float mRateMaximum;
  private final float mRateMinimum;
  private RectangleVertexBuffer mSharedParticleVertexBuffer;
  private int mSourceBlendFunction = 1;
  private final TextureRegion mTextureRegion;
  
  @Deprecated
  public ParticleSystem(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, int paramInt, TextureRegion paramTextureRegion)
  {
    this(new RectangleParticleEmitter(paramFloat1 + paramFloat3 * 0.5F, paramFloat2 + 0.5F * paramFloat4, paramFloat3, paramFloat4), paramFloat5, paramFloat6, paramInt, paramTextureRegion);
  }
  
  public ParticleSystem(IParticleEmitter paramIParticleEmitter, float paramFloat1, float paramFloat2, int paramInt, TextureRegion paramTextureRegion)
  {
    super(0.0F, 0.0F);
    this.mParticleEmitter = paramIParticleEmitter;
    this.mParticles = new Particle[paramInt];
    this.mRateMinimum = paramFloat1;
    this.mRateMaximum = paramFloat2;
    this.mParticlesMaximum = paramInt;
    this.mTextureRegion = paramTextureRegion;
    registerUpdateHandler(this.mParticleEmitter);
  }
  
  private float determineCurrentRate()
  {
    if (this.mRateMinimum == this.mRateMaximum) {
      return this.mRateMinimum;
    }
    return MathUtils.RANDOM.nextFloat() * (this.mRateMaximum - this.mRateMinimum) + this.mRateMinimum;
  }
  
  private void spawnParticle()
  {
    Particle[] arrayOfParticle = this.mParticles;
    int i = this.mParticlesAlive;
    float f1;
    float f2;
    Object localObject;
    ArrayList localArrayList1;
    int j;
    label97:
    ArrayList localArrayList2;
    if (i < this.mParticlesMaximum)
    {
      Particle localParticle1 = arrayOfParticle[i];
      this.mParticleEmitter.getPositionOffset(this.POSITION_OFFSET);
      f1 = this.POSITION_OFFSET[0];
      f2 = this.POSITION_OFFSET[1];
      if (localParticle1 == null) {
        break label132;
      }
      localParticle1.reset();
      localParticle1.setPosition(f1, f2);
      localObject = localParticle1;
      ((Particle)localObject).setBlendFunction(this.mSourceBlendFunction, this.mDestinationBlendFunction);
      localArrayList1 = this.mParticleInitializers;
      j = -1 + this.mParticleInitializerCount;
      if (j >= 0) {
        break label198;
      }
      localArrayList2 = this.mParticleModifiers;
    }
    for (int k = -1 + this.mParticleModifierCount;; k--)
    {
      if (k < 0)
      {
        this.mParticlesAlive = (1 + this.mParticlesAlive);
        return;
        label132:
        Particle localParticle2;
        if (i == 0)
        {
          localParticle2 = new Particle(f1, f2, this.mTextureRegion);
          this.mSharedParticleVertexBuffer = localParticle2.getVertexBuffer();
        }
        for (;;)
        {
          arrayOfParticle[i] = localParticle2;
          localObject = localParticle2;
          break;
          localParticle2 = new Particle(f1, f2, this.mTextureRegion, this.mSharedParticleVertexBuffer);
        }
        label198:
        ((IParticleInitializer)localArrayList1.get(j)).onInitializeParticle((Particle)localObject);
        j--;
        break label97;
      }
      ((IParticleModifier)localArrayList2.get(k)).onInitializeParticle((Particle)localObject);
    }
  }
  
  private void spawnParticles(float paramFloat)
  {
    this.mParticlesDueToSpawn = (paramFloat * determineCurrentRate() + this.mParticlesDueToSpawn);
    int i = Math.min(this.mParticlesMaximum - this.mParticlesAlive, (int)FloatMath.floor(this.mParticlesDueToSpawn));
    this.mParticlesDueToSpawn -= i;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      spawnParticle();
    }
  }
  
  public void addParticleInitializer(IParticleInitializer paramIParticleInitializer)
  {
    this.mParticleInitializers.add(paramIParticleInitializer);
    this.mParticleInitializerCount = (1 + this.mParticleInitializerCount);
  }
  
  public void addParticleModifier(IParticleModifier paramIParticleModifier)
  {
    this.mParticleModifiers.add(paramIParticleModifier);
    this.mParticleModifierCount = (1 + this.mParticleModifierCount);
  }
  
  public IParticleEmitter getParticleEmitter()
  {
    return this.mParticleEmitter;
  }
  
  public boolean isParticlesSpawnEnabled()
  {
    return this.mParticlesSpawnEnabled;
  }
  
  protected void onManagedDraw(GL10 paramGL10, Camera paramCamera)
  {
    Particle[] arrayOfParticle = this.mParticles;
    for (int i = -1 + this.mParticlesAlive;; i--)
    {
      if (i < 0) {
        return;
      }
      arrayOfParticle[i].onDraw(paramGL10, paramCamera);
    }
  }
  
  protected void onManagedUpdate(float paramFloat)
  {
    super.onManagedUpdate(paramFloat);
    if (this.mParticlesSpawnEnabled) {
      spawnParticles(paramFloat);
    }
    Particle[] arrayOfParticle = this.mParticles;
    ArrayList localArrayList = this.mParticleModifiers;
    int i = -1 + this.mParticleModifierCount;
    int j = -1 + this.mParticlesAlive;
    if (j < 0) {
      return;
    }
    Particle localParticle = arrayOfParticle[j];
    for (int k = i;; k--)
    {
      if (k < 0)
      {
        localParticle.onUpdate(paramFloat);
        if (localParticle.mDead)
        {
          this.mParticlesAlive = (-1 + this.mParticlesAlive);
          int m = this.mParticlesAlive;
          arrayOfParticle[j] = arrayOfParticle[m];
          arrayOfParticle[m] = localParticle;
        }
        j--;
        break;
      }
      ((IParticleModifier)localArrayList.get(k)).onUpdateParticle(localParticle);
    }
  }
  
  public void removeParticleInitializer(IParticleInitializer paramIParticleInitializer)
  {
    this.mParticleInitializerCount = (-1 + this.mParticleInitializerCount);
    this.mParticleInitializers.remove(paramIParticleInitializer);
  }
  
  public void removeParticleModifier(IParticleModifier paramIParticleModifier)
  {
    this.mParticleModifierCount = (-1 + this.mParticleModifierCount);
    this.mParticleModifiers.remove(paramIParticleModifier);
  }
  
  public void reset()
  {
    super.reset();
    this.mParticlesDueToSpawn = 0.0F;
    this.mParticlesAlive = 0;
  }
  
  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    this.mSourceBlendFunction = paramInt1;
    this.mDestinationBlendFunction = paramInt2;
  }
  
  public void setParticlesSpawnEnabled(boolean paramBoolean)
  {
    this.mParticlesSpawnEnabled = paramBoolean;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.ParticleSystem
 * JD-Core Version:    0.7.0.1
 */