package org.anddev.andengine.entity.modifier;

import android.util.FloatMath;
import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
import org.anddev.andengine.util.modifier.SequenceModifier;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class PathModifier
  extends EntityModifier
{
  private final Path mPath;
  private IPathModifierListener mPathModifierListener;
  private final SequenceModifier<IEntity> mSequenceModifier;
  
  public PathModifier(float paramFloat, Path paramPath)
  {
    this(paramFloat, paramPath, null, null, IEaseFunction.DEFAULT);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IEntityModifier.IEntityModifierListener paramIEntityModifierListener)
  {
    this(paramFloat, paramPath, paramIEntityModifierListener, null, IEaseFunction.DEFAULT);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IPathModifierListener paramIPathModifierListener)
    throws IllegalArgumentException
  {
    this(paramFloat, paramPath, paramIEntityModifierListener, paramIPathModifierListener, IEaseFunction.DEFAULT);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IPathModifierListener paramIPathModifierListener, IEaseFunction paramIEaseFunction)
    throws IllegalArgumentException
  {
    super(paramIEntityModifierListener);
    int i = paramPath.getSize();
    if (i < 2) {
      throw new IllegalArgumentException("Path needs at least 2 waypoints!");
    }
    this.mPath = paramPath;
    this.mPathModifierListener = paramIPathModifierListener;
    MoveModifier[] arrayOfMoveModifier = new MoveModifier[i - 1];
    float[] arrayOfFloat1 = paramPath.getCoordinatesX();
    float[] arrayOfFloat2 = paramPath.getCoordinatesY();
    float f = paramPath.getLength() / paramFloat;
    int j = arrayOfMoveModifier.length;
    for (int k = 0;; k++)
    {
      if (k >= j)
      {
        this.mSequenceModifier = new SequenceModifier(new PathModifier.1(this), new PathModifier.2(this), arrayOfMoveModifier);
        return;
      }
      arrayOfMoveModifier[k] = new MoveModifier(paramPath.getSegmentLength(k) / f, arrayOfFloat1[k], arrayOfFloat1[(k + 1)], arrayOfFloat2[k], arrayOfFloat2[(k + 1)], null, paramIEaseFunction);
    }
  }
  
  public PathModifier(float paramFloat, Path paramPath, IEntityModifier.IEntityModifierListener paramIEntityModifierListener, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat, paramPath, paramIEntityModifierListener, null, paramIEaseFunction);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IPathModifierListener paramIPathModifierListener)
  {
    this(paramFloat, paramPath, null, paramIPathModifierListener, IEaseFunction.DEFAULT);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IPathModifierListener paramIPathModifierListener, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat, paramPath, null, paramIPathModifierListener, paramIEaseFunction);
  }
  
  public PathModifier(float paramFloat, Path paramPath, IEaseFunction paramIEaseFunction)
  {
    this(paramFloat, paramPath, null, null, paramIEaseFunction);
  }
  
  protected PathModifier(PathModifier paramPathModifier)
    throws IModifier.DeepCopyNotSupportedException
  {
    this.mPath = paramPathModifier.mPath.deepCopy();
    this.mSequenceModifier = paramPathModifier.mSequenceModifier.deepCopy();
  }
  
  public PathModifier deepCopy()
    throws IModifier.DeepCopyNotSupportedException
  {
    return new PathModifier(this);
  }
  
  public float getDuration()
  {
    return this.mSequenceModifier.getDuration();
  }
  
  public Path getPath()
  {
    return this.mPath;
  }
  
  public IPathModifierListener getPathModifierListener()
  {
    return this.mPathModifierListener;
  }
  
  public float getSecondsElapsed()
  {
    return this.mSequenceModifier.getSecondsElapsed();
  }
  
  public boolean isFinished()
  {
    return this.mSequenceModifier.isFinished();
  }
  
  public float onUpdate(float paramFloat, IEntity paramIEntity)
  {
    return this.mSequenceModifier.onUpdate(paramFloat, paramIEntity);
  }
  
  public void reset()
  {
    this.mSequenceModifier.reset();
  }
  
  public void setPathModifierListener(IPathModifierListener paramIPathModifierListener)
  {
    this.mPathModifierListener = paramIPathModifierListener;
  }
  
  public static abstract interface IPathModifierListener
  {
    public abstract void onPathFinished(PathModifier paramPathModifier, IEntity paramIEntity);
    
    public abstract void onPathStarted(PathModifier paramPathModifier, IEntity paramIEntity);
    
    public abstract void onPathWaypointFinished(PathModifier paramPathModifier, IEntity paramIEntity, int paramInt);
    
    public abstract void onPathWaypointStarted(PathModifier paramPathModifier, IEntity paramIEntity, int paramInt);
  }
  
  public static class Path
  {
    private final float[] mCoordinatesX;
    private final float[] mCoordinatesY;
    private int mIndex;
    private float mLength;
    private boolean mLengthChanged = false;
    
    public Path(int paramInt)
    {
      this.mCoordinatesX = new float[paramInt];
      this.mCoordinatesY = new float[paramInt];
      this.mIndex = 0;
      this.mLengthChanged = false;
    }
    
    public Path(Path paramPath)
    {
      int i = paramPath.getSize();
      this.mCoordinatesX = new float[i];
      this.mCoordinatesY = new float[i];
      System.arraycopy(paramPath.mCoordinatesX, 0, this.mCoordinatesX, 0, i);
      System.arraycopy(paramPath.mCoordinatesY, 0, this.mCoordinatesY, 0, i);
      this.mIndex = paramPath.mIndex;
      this.mLengthChanged = paramPath.mLengthChanged;
      this.mLength = paramPath.mLength;
    }
    
    public Path(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
      throws IllegalArgumentException
    {
      if (paramArrayOfFloat1.length != paramArrayOfFloat2.length) {
        throw new IllegalArgumentException("Coordinate-Arrays must have the same length.");
      }
      this.mCoordinatesX = paramArrayOfFloat1;
      this.mCoordinatesY = paramArrayOfFloat2;
      this.mIndex = paramArrayOfFloat1.length;
      this.mLengthChanged = true;
    }
    
    private void updateLength()
    {
      float f = 0.0F;
      for (int i = -2 + this.mIndex;; i--)
      {
        if (i < 0)
        {
          this.mLength = f;
          return;
        }
        f += getSegmentLength(i);
      }
    }
    
    public Path deepCopy()
    {
      return new Path(this);
    }
    
    public float[] getCoordinatesX()
    {
      return this.mCoordinatesX;
    }
    
    public float[] getCoordinatesY()
    {
      return this.mCoordinatesY;
    }
    
    public float getLength()
    {
      if (this.mLengthChanged) {
        updateLength();
      }
      return this.mLength;
    }
    
    public float getSegmentLength(int paramInt)
    {
      float[] arrayOfFloat1 = this.mCoordinatesX;
      float[] arrayOfFloat2 = this.mCoordinatesY;
      int i = paramInt + 1;
      float f1 = arrayOfFloat1[paramInt] - arrayOfFloat1[i];
      float f2 = arrayOfFloat2[paramInt] - arrayOfFloat2[i];
      return FloatMath.sqrt(f1 * f1 + f2 * f2);
    }
    
    public int getSize()
    {
      return this.mCoordinatesX.length;
    }
    
    public Path to(float paramFloat1, float paramFloat2)
    {
      this.mCoordinatesX[this.mIndex] = paramFloat1;
      this.mCoordinatesY[this.mIndex] = paramFloat2;
      this.mIndex = (1 + this.mIndex);
      this.mLengthChanged = true;
      return this;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.PathModifier
 * JD-Core Version:    0.7.0.1
 */