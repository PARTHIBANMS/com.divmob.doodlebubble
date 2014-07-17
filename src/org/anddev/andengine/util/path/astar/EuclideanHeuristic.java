package org.anddev.andengine.util.path.astar;

import android.util.FloatMath;
import org.anddev.andengine.util.path.ITiledMap;

public class EuclideanHeuristic<T>
  implements IAStarHeuristic<T>
{
  public float getExpectedRestCost(ITiledMap<T> paramITiledMap, T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = paramInt3 - paramInt1;
    float f2 = paramInt4 - paramInt2;
    return FloatMath.sqrt(f1 * f1 + f2 * f2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.astar.EuclideanHeuristic
 * JD-Core Version:    0.7.0.1
 */