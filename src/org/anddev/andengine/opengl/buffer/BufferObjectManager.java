package org.anddev.andengine.opengl.buffer;

import java.util.ArrayList;
import java.util.HashSet;

public class BufferObjectManager
{
  private static BufferObjectManager mActiveInstance = null;
  private static final ArrayList<BufferObject> mBufferObjectsLoaded;
  private static final HashSet<BufferObject> mBufferObjectsManaged = new HashSet();
  private static final ArrayList<BufferObject> mBufferObjectsToBeLoaded;
  private static final ArrayList<BufferObject> mBufferObjectsToBeUnloaded;
  
  static
  {
    mBufferObjectsLoaded = new ArrayList();
    mBufferObjectsToBeLoaded = new ArrayList();
    mBufferObjectsToBeUnloaded = new ArrayList();
  }
  
  public static BufferObjectManager getActiveInstance()
  {
    return mActiveInstance;
  }
  
  public static void setActiveInstance(BufferObjectManager paramBufferObjectManager)
  {
    mActiveInstance = paramBufferObjectManager;
  }
  
  public void clear()
  {
    try
    {
      mBufferObjectsToBeLoaded.clear();
      mBufferObjectsLoaded.clear();
      mBufferObjectsManaged.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void loadBufferObject(BufferObject paramBufferObject)
  {
    if (paramBufferObject == null) {}
    for (;;)
    {
      return;
      try
      {
        if (mBufferObjectsManaged.contains(paramBufferObject))
        {
          mBufferObjectsToBeUnloaded.remove(paramBufferObject);
          continue;
        }
      }
      finally {}
      mBufferObjectsManaged.add(paramBufferObject);
      mBufferObjectsToBeLoaded.add(paramBufferObject);
    }
  }
  
  public void loadBufferObjects(BufferObject... paramVarArgs)
  {
    for (int i = -1 + paramVarArgs.length;; i--)
    {
      if (i < 0) {
        return;
      }
      loadBufferObject(paramVarArgs[i]);
    }
  }
  
  /* Error */
  public void reloadBufferObjects()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsLoaded	Ljava/util/ArrayList;
    //   5: astore_2
    //   6: iconst_m1
    //   7: aload_2
    //   8: invokevirtual 65	java/util/ArrayList:size	()I
    //   11: iadd
    //   12: istore_3
    //   13: iload_3
    //   14: ifge +18 -> 32
    //   17: getstatic 30	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsToBeLoaded	Ljava/util/ArrayList;
    //   20: aload_2
    //   21: invokevirtual 69	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   24: pop
    //   25: aload_2
    //   26: invokevirtual 42	java/util/ArrayList:clear	()V
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_2
    //   33: iload_3
    //   34: invokevirtual 73	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   37: checkcast 75	org/anddev/andengine/opengl/buffer/BufferObject
    //   40: iconst_0
    //   41: invokevirtual 79	org/anddev/andengine/opengl/buffer/BufferObject:setLoadedToHardware	(Z)V
    //   44: iinc 3 255
    //   47: goto -34 -> 13
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	BufferObjectManager
    //   50	4	1	localObject	Object
    //   5	28	2	localArrayList	ArrayList
    //   12	33	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	13	50	finally
    //   17	29	50	finally
    //   32	44	50	finally
  }
  
  public void unloadBufferObject(BufferObject paramBufferObject)
  {
    if (paramBufferObject == null) {}
    for (;;)
    {
      return;
      try
      {
        if (!mBufferObjectsManaged.contains(paramBufferObject)) {
          continue;
        }
        if (mBufferObjectsLoaded.contains(paramBufferObject))
        {
          mBufferObjectsToBeUnloaded.add(paramBufferObject);
          continue;
        }
      }
      finally {}
      if (mBufferObjectsToBeLoaded.remove(paramBufferObject)) {
        mBufferObjectsManaged.remove(paramBufferObject);
      }
    }
  }
  
  public void unloadBufferObjects(BufferObject... paramVarArgs)
  {
    for (int i = -1 + paramVarArgs.length;; i--)
    {
      if (i < 0) {
        return;
      }
      unloadBufferObject(paramVarArgs[i]);
    }
  }
  
  /* Error */
  public void updateBufferObjects(javax.microedition.khronos.opengles.GL11 paramGL11)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 23	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsManaged	Ljava/util/HashSet;
    //   5: astore_3
    //   6: getstatic 28	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsLoaded	Ljava/util/ArrayList;
    //   9: astore 4
    //   11: getstatic 30	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsToBeLoaded	Ljava/util/ArrayList;
    //   14: astore 5
    //   16: getstatic 32	org/anddev/andengine/opengl/buffer/BufferObjectManager:mBufferObjectsToBeUnloaded	Ljava/util/ArrayList;
    //   19: astore 6
    //   21: aload 5
    //   23: invokevirtual 65	java/util/ArrayList:size	()I
    //   26: istore 7
    //   28: iload 7
    //   30: ifle +19 -> 49
    //   33: iload 7
    //   35: iconst_1
    //   36: isub
    //   37: istore 13
    //   39: iload 13
    //   41: ifge +34 -> 75
    //   44: aload 5
    //   46: invokevirtual 42	java/util/ArrayList:clear	()V
    //   49: aload 6
    //   51: invokevirtual 65	java/util/ArrayList:size	()I
    //   54: istore 8
    //   56: iload 8
    //   58: ifle +14 -> 72
    //   61: iload 8
    //   63: iconst_1
    //   64: isub
    //   65: istore 9
    //   67: iload 9
    //   69: ifge +51 -> 120
    //   72: aload_0
    //   73: monitorexit
    //   74: return
    //   75: aload 5
    //   77: iload 13
    //   79: invokevirtual 73	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   82: checkcast 75	org/anddev/andengine/opengl/buffer/BufferObject
    //   85: astore 14
    //   87: aload 14
    //   89: invokevirtual 91	org/anddev/andengine/opengl/buffer/BufferObject:isLoadedToHardware	()Z
    //   92: ifne +14 -> 106
    //   95: aload 14
    //   97: aload_1
    //   98: invokevirtual 94	org/anddev/andengine/opengl/buffer/BufferObject:loadToHardware	(Ljavax/microedition/khronos/opengles/GL11;)V
    //   101: aload 14
    //   103: invokevirtual 97	org/anddev/andengine/opengl/buffer/BufferObject:setHardwareBufferNeedsUpdate	()V
    //   106: aload 4
    //   108: aload 14
    //   110: invokevirtual 56	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   113: pop
    //   114: iinc 13 255
    //   117: goto -78 -> 39
    //   120: aload 6
    //   122: iload 9
    //   124: invokevirtual 99	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   127: checkcast 75	org/anddev/andengine/opengl/buffer/BufferObject
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 91	org/anddev/andengine/opengl/buffer/BufferObject:isLoadedToHardware	()Z
    //   137: ifeq +9 -> 146
    //   140: aload 10
    //   142: aload_1
    //   143: invokevirtual 102	org/anddev/andengine/opengl/buffer/BufferObject:unloadFromHardware	(Ljavax/microedition/khronos/opengles/GL11;)V
    //   146: aload 4
    //   148: aload 10
    //   150: invokevirtual 52	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   153: pop
    //   154: aload_3
    //   155: aload 10
    //   157: invokevirtual 82	java/util/HashSet:remove	(Ljava/lang/Object;)Z
    //   160: pop
    //   161: iinc 9 255
    //   164: goto -97 -> 67
    //   167: astore_2
    //   168: aload_0
    //   169: monitorexit
    //   170: aload_2
    //   171: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	BufferObjectManager
    //   0	172	1	paramGL11	javax.microedition.khronos.opengles.GL11
    //   167	4	2	localObject	Object
    //   5	150	3	localHashSet	HashSet
    //   9	138	4	localArrayList1	ArrayList
    //   14	62	5	localArrayList2	ArrayList
    //   19	102	6	localArrayList3	ArrayList
    //   26	11	7	i	int
    //   54	11	8	j	int
    //   65	97	9	k	int
    //   130	26	10	localBufferObject1	BufferObject
    //   37	78	13	m	int
    //   85	24	14	localBufferObject2	BufferObject
    // Exception table:
    //   from	to	target	type
    //   2	28	167	finally
    //   44	49	167	finally
    //   49	56	167	finally
    //   75	106	167	finally
    //   106	114	167	finally
    //   120	146	167	finally
    //   146	161	167	finally
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.buffer.BufferObjectManager
 * JD-Core Version:    0.7.0.1
 */