package org.anddev.andengine.util.path.astar;

import org.anddev.andengine.util.path.ITiledMap;

public class NullHeuristic<T>
  implements IAStarHeuristic<T>
{
  public float getExpectedRestCost(ITiledMap<T> paramITiledMap, T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return 0.0F;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.astar.NullHeuristic
 * JD-Core Version:    0.7.0.1
 */