package org.anddev.andengine.util.cache;

import org.anddev.andengine.opengl.buffer.BufferObjectManager;
import org.anddev.andengine.opengl.vertex.RectangleVertexBuffer;
import org.anddev.andengine.util.MultiKey;
import org.anddev.andengine.util.MultiKeyHashMap;

public class RectangleVertexBufferCache
{
  private final int mDrawType;
  private final MultiKeyHashMap<Integer, RectangleVertexBuffer> mRectangleVertexBufferCache = new MultiKeyHashMap();
  
  public RectangleVertexBufferCache()
  {
    this(35044);
  }
  
  public RectangleVertexBufferCache(int paramInt)
  {
    this.mDrawType = paramInt;
  }
  
  public RectangleVertexBuffer get(int paramInt1, int paramInt2)
  {
    MultiKeyHashMap localMultiKeyHashMap = this.mRectangleVertexBufferCache;
    Integer[] arrayOfInteger = new Integer[2];
    arrayOfInteger[0] = Integer.valueOf(paramInt1);
    arrayOfInteger[1] = Integer.valueOf(paramInt2);
    RectangleVertexBuffer localRectangleVertexBuffer = (RectangleVertexBuffer)localMultiKeyHashMap.get(arrayOfInteger);
    if (localRectangleVertexBuffer != null) {
      return localRectangleVertexBuffer;
    }
    return put(paramInt1, paramInt2, new RectangleVertexBuffer(this.mDrawType, false));
  }
  
  public RectangleVertexBuffer put(int paramInt1, int paramInt2, RectangleVertexBuffer paramRectangleVertexBuffer)
  {
    paramRectangleVertexBuffer.update(paramInt1, paramInt2);
    BufferObjectManager.getActiveInstance().loadBufferObject(paramRectangleVertexBuffer);
    MultiKeyHashMap localMultiKeyHashMap = this.mRectangleVertexBufferCache;
    Integer[] arrayOfInteger = new Integer[2];
    arrayOfInteger[0] = Integer.valueOf(paramInt1);
    arrayOfInteger[1] = Integer.valueOf(paramInt2);
    localMultiKeyHashMap.put(new MultiKey(arrayOfInteger), paramRectangleVertexBuffer);
    return paramRectangleVertexBuffer;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.cache.RectangleVertexBufferCache
 * JD-Core Version:    0.7.0.1
 */