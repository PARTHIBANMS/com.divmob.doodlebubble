package org.anddev.andengine.util.path;

public abstract interface ITiledMap<T>
{
  public abstract float getStepCost(T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract int getTileColumns();
  
  public abstract int getTileRows();
  
  public abstract boolean isTileBlocked(T paramT, int paramInt1, int paramInt2);
  
  public abstract void onTileVisitedByPathFinder(int paramInt1, int paramInt2);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.ITiledMap
 * JD-Core Version:    0.7.0.1
 */