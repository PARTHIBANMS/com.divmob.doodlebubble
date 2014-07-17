package org.anddev.andengine.util.path.astar;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import org.anddev.andengine.util.path.IPathFinder;
import org.anddev.andengine.util.path.ITiledMap;
import org.anddev.andengine.util.path.Path;

public class AStarPathFinder<T>
  implements IPathFinder<T>
{
  private final IAStarHeuristic<T> mAStarHeuristic;
  private final boolean mAllowDiagonalMovement;
  private final int mMaxSearchDepth;
  private final Node[][] mNodes;
  private final ArrayList<Node> mOpenNodes = new ArrayList();
  private final ITiledMap<T> mTiledMap;
  private final ArrayList<Node> mVisitedNodes = new ArrayList();
  
  public AStarPathFinder(ITiledMap<T> paramITiledMap, int paramInt, boolean paramBoolean)
  {
    this(paramITiledMap, paramInt, paramBoolean, new EuclideanHeuristic());
  }
  
  public AStarPathFinder(ITiledMap<T> paramITiledMap, int paramInt, boolean paramBoolean, IAStarHeuristic<T> paramIAStarHeuristic)
  {
    this.mAStarHeuristic = paramIAStarHeuristic;
    this.mTiledMap = paramITiledMap;
    this.mMaxSearchDepth = paramInt;
    this.mAllowDiagonalMovement = paramBoolean;
    this.mNodes = ((Node[][])Array.newInstance(Node.class, new int[] { paramITiledMap.getTileRows(), paramITiledMap.getTileColumns() }));
    Node[][] arrayOfNode = this.mNodes;
    int i = -1 + paramITiledMap.getTileColumns();
    if (i < 0) {
      return;
    }
    for (int j = -1 + paramITiledMap.getTileRows();; j--)
    {
      if (j < 0)
      {
        i--;
        break;
      }
      arrayOfNode[j][i] = new Node(i, j);
    }
  }
  
  public Path findPath(T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ITiledMap localITiledMap = this.mTiledMap;
    if (localITiledMap.isTileBlocked(paramT, paramInt4, paramInt5)) {
      return null;
    }
    ArrayList localArrayList1 = this.mOpenNodes;
    ArrayList localArrayList2 = this.mVisitedNodes;
    Node[][] arrayOfNode = this.mNodes;
    Node localNode1 = arrayOfNode[paramInt3][paramInt2];
    Node localNode2 = arrayOfNode[paramInt5][paramInt4];
    IAStarHeuristic localIAStarHeuristic = this.mAStarHeuristic;
    boolean bool = this.mAllowDiagonalMovement;
    int i = this.mMaxSearchDepth;
    localNode1.mCost = 0.0F;
    localNode1.mDepth = 0;
    localNode2.mParent = null;
    localArrayList2.clear();
    localArrayList1.clear();
    localArrayList1.add(localNode1);
    int j = 0;
    Node localNode4;
    int k;
    int m;
    for (;;)
    {
      if ((j >= i) || (localArrayList1.isEmpty())) {}
      do
      {
        if (localNode2.mParent != null) {
          break;
        }
        return null;
        localNode4 = (Node)localArrayList1.remove(0);
      } while (localNode4 == localNode2);
      localArrayList2.add(localNode4);
      for (k = -1; k <= 1; k++)
      {
        m = -1;
        if (m <= 1) {
          break label192;
        }
      }
    }
    label192:
    int i2;
    if ((k == 0) && (m == 0)) {
      i2 = j;
    }
    for (;;)
    {
      m++;
      j = i2;
      break;
      if ((!bool) && (k != 0) && (m != 0))
      {
        i2 = j;
      }
      else
      {
        int n = k + localNode4.mTileColumn;
        int i1 = m + localNode4.mTileRow;
        if (!isTileBlocked(paramT, paramInt2, paramInt3, n, i1))
        {
          float f = localNode4.mCost + localITiledMap.getStepCost(paramT, localNode4.mTileColumn, localNode4.mTileRow, n, i1);
          Node localNode5 = arrayOfNode[i1][n];
          localITiledMap.onTileVisitedByPathFinder(n, i1);
          if (f < localNode5.mCost)
          {
            if (localArrayList1.contains(localNode5)) {
              localArrayList1.remove(localNode5);
            }
            if (localArrayList2.contains(localNode5)) {
              localArrayList2.remove(localNode5);
            }
          }
          if ((!localArrayList1.contains(localNode5)) && (!localArrayList2.contains(localNode5)))
          {
            localNode5.mCost = f;
            if (localNode5.mCost <= paramInt1)
            {
              localNode5.mExpectedRestCost = localIAStarHeuristic.getExpectedRestCost(localITiledMap, paramT, n, i1, paramInt4, paramInt5);
              i2 = Math.max(j, localNode5.setParent(localNode4));
              localArrayList1.add(localNode5);
              Collections.sort(localArrayList1);
              continue;
              Path localPath = new Path();
              for (Node localNode3 = arrayOfNode[paramInt5][paramInt4];; localNode3 = localNode3.mParent)
              {
                if (localNode3 == localNode1)
                {
                  localPath.prepend(paramInt2, paramInt3);
                  return localPath;
                }
                localPath.prepend(localNode3.mTileColumn, localNode3.mTileRow);
              }
            }
          }
        }
        i2 = j;
      }
    }
  }
  
  protected boolean isTileBlocked(T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt3 < 0) || (paramInt4 < 0) || (paramInt3 >= this.mTiledMap.getTileColumns()) || (paramInt4 >= this.mTiledMap.getTileRows())) {}
    while ((paramInt1 == paramInt3) && (paramInt2 == paramInt4)) {
      return true;
    }
    return this.mTiledMap.isTileBlocked(paramT, paramInt3, paramInt4);
  }
  
  private static class Node
    implements Comparable<Node>
  {
    float mCost;
    int mDepth;
    float mExpectedRestCost;
    Node mParent;
    final int mTileColumn;
    final int mTileRow;
    
    public Node(int paramInt1, int paramInt2)
    {
      this.mTileColumn = paramInt1;
      this.mTileRow = paramInt2;
    }
    
    public int compareTo(Node paramNode)
    {
      float f1 = this.mExpectedRestCost + this.mCost;
      float f2 = paramNode.mExpectedRestCost + paramNode.mCost;
      if (f1 < f2) {
        return -1;
      }
      if (f1 > f2) {
        return 1;
      }
      return 0;
    }
    
    public int setParent(Node paramNode)
    {
      this.mDepth = (1 + paramNode.mDepth);
      this.mParent = paramNode;
      return this.mDepth;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.path.astar.AStarPathFinder
 * JD-Core Version:    0.7.0.1
 */