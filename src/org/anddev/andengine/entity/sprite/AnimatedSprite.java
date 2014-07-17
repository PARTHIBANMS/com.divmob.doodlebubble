package org.anddev.andengine.entity.sprite;

import java.util.Arrays;
import org.anddev.andengine.opengl.texture.region.TiledTextureRegion;
import org.anddev.andengine.opengl.vertex.RectangleVertexBuffer;
import org.anddev.andengine.util.MathUtils;
import org.anddev.andengine.util.constants.TimeConstants;

public class AnimatedSprite
  extends TiledSprite
  implements TimeConstants
{
  private static final int LOOP_CONTINUOUS = -1;
  private long mAnimationDuration;
  private IAnimationListener mAnimationListener;
  private long mAnimationProgress;
  private boolean mAnimationRunning;
  private int mFirstTileIndex;
  private int mFrameCount;
  private long[] mFrameEndsInNanoseconds;
  private int[] mFrames;
  private int mInitialLoopCount;
  private int mLoopCount;
  
  public AnimatedSprite(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramTiledTextureRegion);
  }
  
  public AnimatedSprite(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, TiledTextureRegion paramTiledTextureRegion, RectangleVertexBuffer paramRectangleVertexBuffer)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramTiledTextureRegion, paramRectangleVertexBuffer);
  }
  
  public AnimatedSprite(float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion);
  }
  
  public AnimatedSprite(float paramFloat1, float paramFloat2, TiledTextureRegion paramTiledTextureRegion, RectangleVertexBuffer paramRectangleVertexBuffer)
  {
    super(paramFloat1, paramFloat2, paramTiledTextureRegion, paramRectangleVertexBuffer);
  }
  
  private int calculateCurrentFrameIndex()
  {
    long l = this.mAnimationProgress;
    long[] arrayOfLong = this.mFrameEndsInNanoseconds;
    int i = this.mFrameCount;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        j = i - 1;
      }
      while (arrayOfLong[j] > l) {
        return j;
      }
    }
  }
  
  private AnimatedSprite init(long[] paramArrayOfLong, int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3, IAnimationListener paramIAnimationListener)
  {
    this.mFrameCount = paramInt1;
    this.mAnimationListener = paramIAnimationListener;
    this.mInitialLoopCount = paramInt3;
    this.mLoopCount = paramInt3;
    this.mFrames = paramArrayOfInt;
    this.mFirstTileIndex = paramInt2;
    if ((this.mFrameEndsInNanoseconds == null) || (this.mFrameCount > this.mFrameEndsInNanoseconds.length)) {
      this.mFrameEndsInNanoseconds = new long[this.mFrameCount];
    }
    long[] arrayOfLong = this.mFrameEndsInNanoseconds;
    MathUtils.arraySumInto(paramArrayOfLong, arrayOfLong, 1000000L);
    this.mAnimationDuration = arrayOfLong[(-1 + this.mFrameCount)];
    this.mAnimationProgress = 0L;
    this.mAnimationRunning = true;
    return this;
  }
  
  public AnimatedSprite animate(long paramLong)
  {
    return animate(paramLong, true);
  }
  
  public AnimatedSprite animate(long paramLong, int paramInt)
  {
    return animate(paramLong, paramInt, null);
  }
  
  public AnimatedSprite animate(long paramLong, int paramInt, IAnimationListener paramIAnimationListener)
  {
    long[] arrayOfLong = new long[getTextureRegion().getTileCount()];
    Arrays.fill(arrayOfLong, paramLong);
    return animate(arrayOfLong, paramInt, paramIAnimationListener);
  }
  
  public AnimatedSprite animate(long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = 0) {
      return animate(paramLong, i, null);
    }
  }
  
  public AnimatedSprite animate(long paramLong, boolean paramBoolean, IAnimationListener paramIAnimationListener)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = 0) {
      return animate(paramLong, i, paramIAnimationListener);
    }
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong)
  {
    return animate(paramArrayOfLong, true);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int paramInt)
  {
    return animate(paramArrayOfLong, paramInt, null);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3)
  {
    return animate(paramArrayOfLong, paramInt1, paramInt2, paramInt3, null);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, IAnimationListener paramIAnimationListener)
  {
    if (paramInt2 - paramInt1 < 1) {
      throw new IllegalArgumentException("An animation needs at least two tiles to animate between.");
    }
    int i = 1 + (paramInt2 - paramInt1);
    if (paramArrayOfLong.length != i) {
      throw new IllegalArgumentException("pFrameDurations must have the same length as pFirstTileIndex to pLastTileIndex.");
    }
    return init(paramArrayOfLong, i, null, paramInt1, paramInt3, paramIAnimationListener);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = 0) {
      return animate(paramArrayOfLong, paramInt1, paramInt2, i, null);
    }
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int paramInt, IAnimationListener paramIAnimationListener)
  {
    return animate(paramArrayOfLong, 0, -1 + getTextureRegion().getTileCount(), paramInt, paramIAnimationListener);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = 0) {
      return animate(paramArrayOfLong, i, null);
    }
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, boolean paramBoolean, IAnimationListener paramIAnimationListener)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = 0) {
      return animate(paramArrayOfLong, i, paramIAnimationListener);
    }
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int[] paramArrayOfInt, int paramInt)
  {
    return animate(paramArrayOfLong, paramArrayOfInt, paramInt, null);
  }
  
  public AnimatedSprite animate(long[] paramArrayOfLong, int[] paramArrayOfInt, int paramInt, IAnimationListener paramIAnimationListener)
  {
    int i = paramArrayOfInt.length;
    if (paramArrayOfLong.length != i) {
      throw new IllegalArgumentException("pFrameDurations must have the same length as pFrames.");
    }
    return init(paramArrayOfLong, i, paramArrayOfInt, 0, paramInt, paramIAnimationListener);
  }
  
  public boolean isAnimationRunning()
  {
    return this.mAnimationRunning;
  }
  
  protected void onManagedUpdate(float paramFloat)
  {
    super.onManagedUpdate(paramFloat);
    int i;
    if (this.mAnimationRunning)
    {
      this.mAnimationProgress = ((1.0E+009F * paramFloat) + this.mAnimationProgress);
      if (this.mAnimationProgress > this.mAnimationDuration)
      {
        this.mAnimationProgress %= this.mAnimationDuration;
        if (this.mInitialLoopCount != -1) {
          this.mLoopCount = (-1 + this.mLoopCount);
        }
      }
      if ((this.mInitialLoopCount != -1) && (this.mLoopCount < 0)) {
        break label118;
      }
      i = calculateCurrentFrameIndex();
      if (this.mFrames != null) {
        break label107;
      }
      setCurrentTileIndex(i + this.mFirstTileIndex);
    }
    label107:
    label118:
    do
    {
      return;
      setCurrentTileIndex(this.mFrames[i]);
      return;
      this.mAnimationRunning = false;
    } while (this.mAnimationListener == null);
    this.mAnimationListener.onAnimationEnd(this);
  }
  
  public void stopAnimation()
  {
    this.mAnimationRunning = false;
  }
  
  public void stopAnimation(int paramInt)
  {
    this.mAnimationRunning = false;
    setCurrentTileIndex(paramInt);
  }
  
  public static abstract interface IAnimationListener
  {
    public abstract void onAnimationEnd(AnimatedSprite paramAnimatedSprite);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.sprite.AnimatedSprite
 * JD-Core Version:    0.7.0.1
 */