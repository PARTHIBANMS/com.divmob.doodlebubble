package org.anddev.andengine.opengl.texture;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.util.Debug;

public class TextureManager
{
  private final ArrayList<ITexture> mTexturesLoaded = new ArrayList();
  private final HashSet<ITexture> mTexturesManaged = new HashSet();
  private final ArrayList<ITexture> mTexturesToBeLoaded = new ArrayList();
  private final ArrayList<ITexture> mTexturesToBeUnloaded = new ArrayList();
  
  protected void clear()
  {
    try
    {
      this.mTexturesToBeLoaded.clear();
      this.mTexturesLoaded.clear();
      this.mTexturesManaged.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public boolean loadTexture(ITexture paramITexture)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	org/anddev/andengine/opengl/texture/TextureManager:mTexturesManaged	Ljava/util/HashSet;
    //   6: aload_1
    //   7: invokevirtual 40	java/util/HashSet:contains	(Ljava/lang/Object;)Z
    //   10: ifeq +20 -> 30
    //   13: aload_0
    //   14: getfield 30	org/anddev/andengine/opengl/texture/TextureManager:mTexturesToBeUnloaded	Ljava/util/ArrayList;
    //   17: aload_1
    //   18: invokevirtual 43	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   21: pop
    //   22: iconst_0
    //   23: istore 5
    //   25: aload_0
    //   26: monitorexit
    //   27: iload 5
    //   29: ireturn
    //   30: aload_0
    //   31: getfield 21	org/anddev/andengine/opengl/texture/TextureManager:mTexturesManaged	Ljava/util/HashSet;
    //   34: aload_1
    //   35: invokevirtual 46	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   38: pop
    //   39: aload_0
    //   40: getfield 28	org/anddev/andengine/opengl/texture/TextureManager:mTexturesToBeLoaded	Ljava/util/ArrayList;
    //   43: aload_1
    //   44: invokevirtual 47	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   47: pop
    //   48: iconst_1
    //   49: istore 5
    //   51: goto -26 -> 25
    //   54: astore_2
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_2
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	TextureManager
    //   0	59	1	paramITexture	ITexture
    //   54	4	2	localObject	Object
    //   23	27	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	22	54	finally
    //   30	48	54	finally
  }
  
  public void loadTextures(ITexture... paramVarArgs)
  {
    for (int i = -1 + paramVarArgs.length;; i--)
    {
      if (i < 0) {
        return;
      }
      loadTexture(paramVarArgs[i]);
    }
  }
  
  /* Error */
  public void reloadTextures()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	org/anddev/andengine/opengl/texture/TextureManager:mTexturesManaged	Ljava/util/HashSet;
    //   6: invokevirtual 56	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   9: astore_2
    //   10: aload_2
    //   11: invokeinterface 62 1 0
    //   16: ifne +44 -> 60
    //   19: aload_0
    //   20: getfield 28	org/anddev/andengine/opengl/texture/TextureManager:mTexturesToBeLoaded	Ljava/util/ArrayList;
    //   23: aload_0
    //   24: getfield 26	org/anddev/andengine/opengl/texture/TextureManager:mTexturesLoaded	Ljava/util/ArrayList;
    //   27: invokevirtual 66	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 26	org/anddev/andengine/opengl/texture/TextureManager:mTexturesLoaded	Ljava/util/ArrayList;
    //   35: invokevirtual 33	java/util/ArrayList:clear	()V
    //   38: aload_0
    //   39: getfield 21	org/anddev/andengine/opengl/texture/TextureManager:mTexturesManaged	Ljava/util/HashSet;
    //   42: aload_0
    //   43: getfield 30	org/anddev/andengine/opengl/texture/TextureManager:mTexturesToBeUnloaded	Ljava/util/ArrayList;
    //   46: invokevirtual 69	java/util/HashSet:removeAll	(Ljava/util/Collection;)Z
    //   49: pop
    //   50: aload_0
    //   51: getfield 30	org/anddev/andengine/opengl/texture/TextureManager:mTexturesToBeUnloaded	Ljava/util/ArrayList;
    //   54: invokevirtual 33	java/util/ArrayList:clear	()V
    //   57: aload_0
    //   58: monitorexit
    //   59: return
    //   60: aload_2
    //   61: invokeinterface 73 1 0
    //   66: checkcast 75	org/anddev/andengine/opengl/texture/ITexture
    //   69: iconst_0
    //   70: invokeinterface 79 2 0
    //   75: goto -65 -> 10
    //   78: astore_1
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	TextureManager
    //   78	4	1	localObject	Object
    //   9	52	2	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	10	78	finally
    //   10	57	78	finally
    //   60	75	78	finally
  }
  
  public boolean unloadTexture(ITexture paramITexture)
  {
    for (;;)
    {
      try
      {
        if (this.mTexturesManaged.contains(paramITexture))
        {
          if (this.mTexturesLoaded.contains(paramITexture))
          {
            this.mTexturesToBeUnloaded.add(paramITexture);
            bool = true;
            return bool;
          }
          if (!this.mTexturesToBeLoaded.remove(paramITexture)) {
            continue;
          }
          this.mTexturesManaged.remove(paramITexture);
          continue;
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  public void unloadTextures(ITexture... paramVarArgs)
  {
    for (int i = -1 + paramVarArgs.length;; i--)
    {
      if (i < 0) {
        return;
      }
      unloadTexture(paramVarArgs[i]);
    }
  }
  
  public void updateTextures(GL10 paramGL10)
  {
    for (;;)
    {
      HashSet localHashSet;
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      ArrayList localArrayList3;
      int i1;
      int j;
      int n;
      label67:
      int k;
      int m;
      try
      {
        localHashSet = this.mTexturesManaged;
        localArrayList1 = this.mTexturesLoaded;
        localArrayList2 = this.mTexturesToBeLoaded;
        localArrayList3 = this.mTexturesToBeUnloaded;
        int i = localArrayList1.size();
        if (i > 0)
        {
          i1 = i - 1;
          break label258;
        }
        j = localArrayList2.size();
        if (j > 0)
        {
          n = j - 1;
          break label266;
        }
        k = localArrayList3.size();
        if (k <= 0) {
          break label279;
        }
        m = k - 1;
      }
      finally {}
      System.gc();
      return;
      label94:
      ITexture localITexture3 = (ITexture)localArrayList1.get(i1);
      boolean bool2 = localITexture3.isUpdateOnHardwareNeeded();
      if (bool2) {}
      try
      {
        localITexture3.reloadToHardware(paramGL10);
        i1--;
      }
      catch (IOException localIOException2)
      {
        Debug.e(localIOException2);
        continue;
      }
      label149:
      ITexture localITexture2 = (ITexture)localArrayList2.remove(n);
      boolean bool1 = localITexture2.isLoadedToHardware();
      if (!bool1) {}
      try
      {
        localITexture2.loadToHardware(paramGL10);
        localArrayList1.add(localITexture2);
        n--;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          Debug.e(localIOException1);
        }
      }
      label258:
      label266:
      do
      {
        ITexture localITexture1 = (ITexture)localArrayList3.remove(m);
        if (localITexture1.isLoadedToHardware()) {
          localITexture1.unloadFromHardware(paramGL10);
        }
        localArrayList1.remove(localITexture1);
        localHashSet.remove(localITexture1);
        m--;
        continue;
        if (i1 >= 0) {
          break label94;
        }
        break;
        if (n >= 0) {
          break label149;
        }
        break label67;
      } while (m >= 0);
      label279:
      if (j <= 0) {
        if (k <= 0) {}
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.TextureManager
 * JD-Core Version:    0.7.0.1
 */