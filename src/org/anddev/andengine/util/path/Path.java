package org.anddev.andengine.util.path;

import java.util.ArrayList;

public class Path
{
  private final ArrayList<Step> mSteps = new ArrayList();
  
  public void append(int paramInt1, int paramInt2)
  {
    append(new Step(paramInt1, paramInt2));
  }
  
  public void append(Step paramStep)
  {
    this.mSteps.add(paramStep);
  }
  
  public boolean contains(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = this.mSteps;
    for (int i = -1 + localArrayList.size();; i--)
    {
      if (i < 0) {
        return false;
      }
      Step localStep = (Step)localArrayList.get(i);
      if ((localStep.getTileColumn() == paramInt1) && (localStep.getTileRow() == paramInt2)) {
        return true;
      }
    }
  }
  
  public Direction getDirectionToNextStep(int paramInt)
  {
    if (paramInt == -1 + getLength()) {
      return null;
    }
    return Direction.fromDelta(getTileColumn(paramInt + 1) - getTileColumn(paramInt), getTileRow(paramInt + 1) - getTileRow(paramInt));
  }
  
  public Direction getDirectionToPreviousStep(int paramInt)
  {
    if (paramInt == 0) {
      return null;
    }
    return Direction.fromDelta(getTileColumn(paramInt - 1) - getTileColumn(paramInt), getTileRow(paramInt - 1) - getTileRow(paramInt));
  }
  
  public int getFromTileColumn()
  {
    return getTileColumn(0);
  }
  
  public int getFromTileRow()
  {
    return getTileRow(0);
  }
  
  public int getLength()
  {
    return this.mSteps.size();
  }
  
  public Step getStep(int paramInt)
  {
    return (Step)this.mSteps.get(paramInt);
  }
  
  public int getTileColumn(int paramInt)
  {
    return getStep(paramInt).getTileColumn();
  }
  
  public int getTileRow(int paramInt)
  {
    return getStep(paramInt).getTileRow();
  }
  
  public int getToTileColumn()
  {
    return getTileColumn(-1 + this.mSteps.size());
  }
  
  public int getToTileRow()
  {
    return getTileRow(-1 + this.mSteps.size());
  }
  
  public void prepend(int paramInt1, int paramInt2)
  {
    prepend(new Step(paramInt1, paramInt2));
  }
  
  public void prepend(Step paramStep)
  {
    this.mSteps.add(0, paramStep);
  }
  
  public class Step
  {
    private final int mTileColumn;
    private final int mTileRow;
    
    public Step(int paramInt1, int paramInt2)
    {
      this.mTileColumn = paramInt1;
      this.mTileRow = paramInt2;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      Step localStep;
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localStep = (Step)paramObject;
        if (this.mTileColumn != localStep.mTileColumn) {
          return false;
        }
      } while (this.mTileRow == localStep.mTileRow);
      return false;
    }
    
    public int getTileColumn()
    {
      return this.mTileColumn;
    }
    
    public int getTileRow()
    {
      return this.mTileRow;
    }
    
    public int hashCode()
    {
      return this.mTileColumn << 16 + this.mTileRow;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.Path
 * JD-Core Version:    0.7.0.1
 */