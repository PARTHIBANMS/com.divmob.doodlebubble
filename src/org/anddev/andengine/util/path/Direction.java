package org.anddev.andengine.util.path;

public enum Direction
{
  RIGHT(1, 0),  LEFT(-1, 0),  DOWN(0, 1),  UP(0, -1);
  
  private final int mDeltaX;
  private final int mDeltaY;
  
  private Direction(int paramInt1, int paramInt2)
  {
    this.mDeltaX = paramInt1;
    this.mDeltaY = paramInt2;
  }
  
  public static Direction fromDelta(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
    {
      if (paramInt2 == 1) {
        return DOWN;
      }
      if (paramInt2 == -1) {
        return UP;
      }
    }
    else if (paramInt2 == 0)
    {
      if (paramInt1 == 1) {
        return RIGHT;
      }
      if (paramInt1 == -1) {
        return LEFT;
      }
    }
    throw new IllegalArgumentException();
  }
  
  public int getDeltaX()
  {
    return this.mDeltaX;
  }
  
  public int getDeltaY()
  {
    return this.mDeltaY;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.Direction
 * JD-Core Version:    0.7.0.1
 */